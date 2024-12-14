## Now apply template to container
```sh
bastille create phpmyadmin 14.1-RELEASE YourIP-Bastille

bastille bootstrap https://github.com/bastille-templates/mariadb-phpmyadmin
bastille template phpmyadmin bastille-templates/mariadb-phpmyadmin
```

## Test Run
```sh
root@localhost~# mysql

# show user list
root@localhost [(none)]> select user,host,password from mysql.user; 
+-------------+-----------+----------+
| User        | Host      | Password |
+-------------+-----------+----------+
| mariadb.sys | localhost |          |
| root        | localhost | invalid  |
| mysql       | localhost | invalid  |
| PUBLIC      |           |          |
+-------------+-----------+----------+
4 rows in set (0.001 sec)

# show database list
root@localhost [(none)]> show databases; 
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.000 sec)
```

## License
This project is licensed under the BSD-3-Clause license.