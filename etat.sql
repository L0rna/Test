drop table if exists T_COMMENTAIRE;
drop table if exists T_TICKET;
drop table if exists T_ETAT;

create table T_TICKET (
  TIC_ID integer primary key auto_increment,
  TIC_DATE datetime not null,
  TIC_TITRE varchar(100) not null,
  TIC_CONTENU varchar(400) not null,
  ETAT_ID integer not null,
  constraint fk_com_tic foreign key(ETAT_ID) references T_ETAT(ETAT_ID)
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;

create table T_COMMENTAIRE (
  COM_ID integer primary key auto_increment,
  COM_DATE datetime not null,
  COM_AUTEUR varchar(100) not null,
  COM_CONTENU varchar(200) not null,
  TIC_ID integer not null,
  constraint fk_com_tic foreign key(TIC_ID) references T_TICKET(TIC_ID)
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;

create table T_ETAT ( 
  ETAT_ID integer primary key auto_increment,
  ETAT_LIB varchar(200) not null,
  ETAT_CODE varchar(100) not null
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO T_ETAT (ETAT_ID, ETAT_LIB, ETAT_CODE) values 
('1', 'Ouvert', '0');
INSERT INTO T_ETAT (ETAT_ID, ETAT_LIB, ETAT_CODE) values 
('2', 'En cours', '1');
INSERT INTO T_ETAT (ETAT_ID, ETAT_LIB, ETAT_CODE) values 
('3', 'Fermer', '2');

insert into T_TICKET(TIC_DATE, TIC_TITRE, TIC_CONTENU) values
(NOW(), 'Premier TICKET', 'Bonjour les gens ! Ceci est le premier Ticket sur mon blog.');
insert into T_TICKET(TIC_DATE, TIC_TITRE, TIC_CONTENU) values
(NOW(), 'Mon travail', 'Encore beaucoup de travail.');

insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, TIC_ID) values
(NOW(), 'A. Nonyme', 'Bravo pour ce début', 1);
insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, TIC_ID) values
(NOW(), 'Moi', 'Merci ! ', 1);
