<?php

namespace midrupal\hello\controller;
use Drupal\Core\Controller\ControllerBase;



class TrainingDrupalController extends ControllerBase
{
	public function hello()
	{
		return array(
			'#markup' => '<p>' . $this->t('Hello, training ! This is my
				first module in Drupal 8 ojaula function!') . '</p>',

		);
	}
}
