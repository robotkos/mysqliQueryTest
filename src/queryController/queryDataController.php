<?php
/**
 * Created by PhpStorm.
 * User: serhii
 * Date: 27.03.18
 * Time: 6:56
 */

namespace queryController;

use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

class queryDataController
{
    public function start(){
        $link = mysqli_connect("127.0.0.1:3310", "robot", "w2e3r4", "lba");

        if (!$link) {
            echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
            echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
            echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
            exit;
        }

        echo "Соединение с MySQL установлено!" . PHP_EOL;
        echo "Информация о сервере: " . mysqli_get_host_info($link) . PHP_EOL;

        mysqli_close($link);
    }
}