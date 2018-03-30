<?php
/**
 * Created by PhpStorm.
 * User: serhii
 * Date: 27.03.18
 * Time: 6:47
 */


ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

require __DIR__.'/vendor/autoload.php';

$parser = new \queryController\queryDataController();
$parser->start();
