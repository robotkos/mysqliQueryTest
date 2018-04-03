# mysqliQueryTest
Getting some data from Mysqli Database.
#####Instruction:

```
1) git clone https://github.com/robotkos/mysqliQueryTest.git

2) cd mysqliQueryTest

3) composer install

4) docker build -t mysqlimage .

5) docker run -d -p 3307:3306 --name mysql-server mysqlimage

6) php testMysqlAsync.php
```
#####Used:
Docker version 18.03.0-ce

Composer version 1.5.2