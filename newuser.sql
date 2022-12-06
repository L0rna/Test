CREATE USER 'admin_ticketing'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'admin_ticketing'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;


DROP USER 'admin_ticketing'@'localhost';
