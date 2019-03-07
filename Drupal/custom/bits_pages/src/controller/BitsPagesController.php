<?php

/**
 *@file
 *Contains \Drupal\bits_pages\controller\BitsPagesController
 */

namespace Drupal\bits_pages\controller;

use Drupal\Core\Controller\ControllerBase;
use Drupal\Core\Datetime\DateFormatter;
use Drupal\Core\Link;
use Drupal\Core\Session\AccountProxy;
use Drupal\Core\Url;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Controlador para devolver el contenido de las páginas definidas
 */

class BitsPagesController extends ControllerBase
{
    private $currenUser;
    private $dateFormatter;

    public function __construct(AccountProxy $currentUser, DateFormatter $dateFormatter)
    {
        $this->currenUser = $currentUser;
        $this->dateFormatter = $dateFormatter;
    }

    public static function create(ContainerInterface $container)
    {
        return new static(
            $container->get('current_user'),
            $container->get('date.formatter'),
        );
    }

    public function hola()
    {
        return array(
            '#markup' => '<p>' . $this->t(
                'Hola que tal esta es una page con msm simple !' . $this->currenUser->id()
            ) . '</p> ',
        );
    }

    public function calculator($num1, $num2)
    {
        $valor = [];

        if (is_numeric($num1) && is_numeric($num2)) {
            #suma
            $valor = array(
                $this->t(
                    "@num1  +  @num2  =  @resultado",
                    array(
                        '@num1 ' => $num1,
                        '@num2 ' => $num2,
                        '@resultado' => $num1 + $num2,
                    )
                ),
            );

            #resta

            $valor[] = $this->t(
                "@num1 - @num2 = @resultado",
                array(
                    '@num1 ' => $num1,
                    '@num2 ' => $num2,
                    '@resultado' => $num1 - $num2,
                )
            );

            #multiplicacion
            $valor[] = $this->t(
                "@num1 * @num2 = @resultado",
                array(
                    '@num1 ' => $num1,
                    '@num2 ' => $num2,
                    '@resultado' => $num1 * $num2,
                )
            );

            if ($num2 == 0) {
                #division
                $valor[] = $this->t("@num1 / @num2 = @resultado", array(
                    '@num1 ' => $num1,
                    '@num2 ' => $num2,
                    '@resultado' => "error division por cero",
                ));
            } else {
                #division
                $valor[] = $this->t("@num1 / @num2 = @resultado", array(
                    '@num1 ' => $num1,
                    '@num2 ' => $num2,
                    '@resultado' => $num1 / $num2,
                ));
            }
        }
        $msm = ($this->currenUser->hasPermission("administer nodes")) ? "este es
         un msm especifico para las personas que contienen un rol con permiso administer
 node" : "este es un mensaje general osea para personas que no tienen el permiso de administer node";

        $a[] = array(
            '#theme' => 'item_list',
            '#items' => $valor,
            '#title' => $this->t($msm),
        );
        return $a;
    }

    public function links()
    {
        $rutas = array(
            array("ruta" => "block.admin_display", "msm" => 'vamos a administrar los bloques'),
            array('ruta' => 'entity.node_type.collection', "msm" => 'vamos a administrar el content'),
            array('ruta' => 'entity.user.collection', "msm" => 'vamos a administrar los usuarios'),
            ["ruta" => '<front>', 'msm' => 'vamos a nuestro  home page'],
            ["ruta" => 'entity.node.canonical', 'node' => ['node' => 1], 'msm' => 'vamos pal nodo de id 1'],
            ["ruta" => "entity.node.edit_form", "node" => ["node" => 1], "msm" => "vamos a editar el enlace un0"],
            ["link" => "https://www.google.com", "msm" => "vamonos pa otra ventana con google"],

        );
        foreach ($rutas as $key) {
            if (isset($key["link"])) {
                $url1 = Url::fromUri($key["link"]);
                $url1->setOptions(array(
                    'attributes' =>
                    [
                        "class" => ["external-link", "list"],
                        "target" => "_blank",
                    ],
                ));
            }
            if (isset($key["node"])) {
                $url1 = Url::fromRoute($key["ruta"], $key["node"]);
            } elseif (isset($key["ruta"])) {
                $url1 = Url::fromRoute($key["ruta"]);
            }

            $link1 = Link::fromTextAndUrl($this->t($key["msm"]), $url1);
            $list[] = $link1;
        }

        $arr[] = array(
            '#theme' => 'item_list',
            '#title' =>
            $this->t(
                "fecha actual del sistema   <strong>" .
                $this->dateFormatter->format(
                    time(),
                    $type = 'ni_format',
                    $timezone = null,
                    $langcode = null
                ),
            ),
            '#items' => $list,
        );
        return $arr;
    }
}
