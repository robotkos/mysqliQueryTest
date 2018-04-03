<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 03.04.18
 * Time: 16:03
 */

namespace Model;


class mysqlQuery
{

    public function mysqlOunConnect (){
        $link = mysqli_connect("127.0.0.1:3307", "robot", "serhii", "lba");

        if (!$link) {
            echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
            echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
            echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
            exit;
        }

        echo "Соединение с MySQL установлено!" . PHP_EOL;
        echo "Информация о сервере: " . mysqli_get_host_info($link) . PHP_EOL;

        return $link;
    }
}