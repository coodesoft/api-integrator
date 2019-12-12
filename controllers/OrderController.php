<?php

namespace app\controllers;

use Yii;
use yii\rest\ActiveController;

class OrderController extends ActiveController {
   
    public $modelClass = 'app\models\Order';
    
}