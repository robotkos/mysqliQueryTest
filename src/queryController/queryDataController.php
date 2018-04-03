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
use Model\mysqlQuery;

class queryDataController
{
    public function start()
    {
        $mysql = new mysqlQuery();
        $connection = $mysql->mysqlOunConnect();

        $sql = <<<SQL
    SELECT *
    FROM `user_details`
    WHERE `first_name` = 'morgan' 
SQL;

        if (!$result = $connection->query($sql)) {
            die('There was an error running the query [' . $connection->error . ']');
        }
        $i = 0;
        while ($row = $result->fetch_assoc()) {
            $i++;
            echo $row['username'] . PHP_EOL;
        }
        echo 'Request count: ' . $connection->affected_rows . PHP_EOL. PHP_EOL;
        echo "Total mysql DB rows == 1 mln" . PHP_EOL;

        mysqli_close($connection);
    }

}