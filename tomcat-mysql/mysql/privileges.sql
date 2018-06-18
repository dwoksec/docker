use mysql;
update user set authentication_string=password('123456') where user='root' and host='localhost';
flush privileges;