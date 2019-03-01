<?php

/**
 * @file
 * Contains \Drupal\training_drupal_8\controller\TrainingDrupal8Controller
 */

namespace Drupal\training_drupal_8\Controller;

use Drupal\Core\Controller\ControllerBase;

/**
 * Controlador para devolver el contenido de las páginas definidas
 */

class TrainingDrupal8Controller extends ControllerBase
{
    public function hello()
    {
        return array(
            '#markup' => '<p>' . $this->t(
                'Hola que tal por fin funciona esta cosa jee !'
            ) . '</p>',
        );
    }
}
