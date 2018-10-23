<?php
include $_SERVER['DOCUMENT_ROOT'] . "/../config/main.php";
include ROOT_DIR . "/services/Autoloader.php";

$Circle = new app\models\Circle(rand());
$Pyramid = new app\models\Pyramid(rand(), rand());
$Rectangle = new app\models\Rectangle(rand(), rand());