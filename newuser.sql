CREATE USER 'admin_ticketing'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'admin_ticketing'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;


DROP USER 'admin_ticketing'@'localhost';

INSERT INTO T_TICKET (TIC_ID, TIC_DAT, TIC_TITRE, TIC_CONTENU, ETAT_ID) values 
('');
