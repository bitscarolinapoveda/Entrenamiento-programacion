<?php
namespace Drupal\bits_forms\Form;

use Drupal\Core\Database\Connection;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Session\AccountProxy;
use Egulias\EmailValidator\EmailValidator;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Implements the Simple form controller.
 *
 * @see \Drupal\Core\Form\FormBase
 */

class Simple extends FormBase
{
    private $database;
    private $currentUser;
    private $emailValidator;
    private $r;

    public function __construct(Connection $c, AccountProxy $p, EmailValidator $email_validator)
    {
        $this->database = $c;
        $this->currentUser = $p;
        $this->emailValidator = $email_validator;
    }

    public static function create(ContainerInterface $container)
    {
        return new static(
            $container->get('database'),
            $container->get("current_user"),
            $container->get("email.validator"),
        );
    }

    public function buildForm(array $form, FormStateInterface $form_state)
    {

        $form['title'] = [
            '#type' => 'textfield',
            '#title' => $this->t('titulo'),
            '#placeholder' => $this->t('introduzca lo q qiera'),
            '#description' => $this->t('este es un campo input de tipo texto escrib lo q se le de la gana'),
            '#required' => true,
        ];

        $form['username'] = [
            '#type' => 'textfield',
            '#title' => 'nombre',
            '#description' => 'digite su nombre',
            '#default_value' => $this->currentUser->getUsername(),
            '#required' => true,
        ];
        $form['email'] = [
            '#type' => 'email',
            '#title' => 'correo',
            '#description' => 'digite su correo',
            '#required' => true,
            '#default_value' => $this->currentUser->getEmail(),
        ];

        $form['actions'] = [
            '#type' => 'actions',
        ];
        $form['actions']['submit'] = [
            '#type' => 'submit',
            '#value' => $this->t('Submit'),
        ];

        return $form;
    }

    public function getFormId()
    {
        return "bits_form_simple";
    }

    public function validateForm(array &$form, FormStateInterface $form_state)
    {
        if ($this->currentUser->getUsername() != '') {
            $result = $this->database->query('SELECT uid FROM
{bits_forms_simple} w WHERE w.uid = :uid', [':uid' => $this->currentUser->id()]);
            $result = $result->fetchObject();
            $this->r = $result;
            if ($result != '') {
                $form_state->setErrorByName('username', 'error tu ya estas
                 registrado en el sistem no podras realizar la accion has otra cosa');
            }
        }

        $title = $form_state->getValue('title');

        if (!(strlen($title) > 5 && strlen($title) < 30 && preg_match("/^[A-Z]/", $title))) {
            $form_state->setErrorByName('title', $this->t('oeeee revice esa joda q
            tiene menos de 5 o mas de 30 letras y no empieza con mayus'));
        }

        $email = $form_state->getValue('email');
        if (!$this->emailValidator->isValid($email)) {
            $form_state->setErrorByName('email', $this->t('%email is
not a valid email address.', ['%email' => $email]));
        }
    }

    public function submitForm(array &$form, FormStateInterface $form_state)
    {

        $this->database->insert("bits_forms_simple")->fields([
            'title' => $form_state->getValue('title'),
            'uid' => ($uid = $this->currentUser->id() ? $this->currentUser->id() : 0),
            'username' => $form_state->getValue('username'),
            'email' => $form_state->getValue('email'),
            'ip' => \Drupal::request()->getClientIp(),
            'timestamp' => time(),
        ])->execute();

        Drupal_set_message('se ha registrado el exitosamente el nombre de ' . $form_state->getValue('username'));
        \Drupal::logger('bits_forms_simple')->notice(
            'es de es el msm de log %username y %title y %uid',
            [
                '%username' => $form_state->getValue('username'),
                '%title' => $form_state->getValue('title'),
                '%uid' => $this->currentUser->id(),
            ]
        );

        $form_state->setRedirect('training_drupal.hello');

    }
}
