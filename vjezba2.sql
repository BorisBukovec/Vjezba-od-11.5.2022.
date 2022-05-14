# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\botao\DZ\vjezba2.sql
drop database if exists zupanije;
create database zupanije default charset utf8mb4;
use zupanije;
create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    zupan int not null
);
create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);
create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50) 
);
create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50)
);
alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan (ime,prezime)
values ('Marko','Milić');
insert into zupan (ime,prezime)
values ('Nikola','Petrić');
insert into zupan (ime,prezime)
values ('Ivan','Jurić');

insert into zupanija (naziv,zupan)
values ('Osječko-baranjska',1);
insert into zupanija (naziv,zupan)
values ('Vukovarsko-srijemska',2);
insert into zupanija (naziv,zupan)
values ('Brodsko-posavska',3);

insert into opcina (naziv,zupanija)
values ('Darda',1);
insert into opcina (naziv,zupanija)
values ('Našice',1);
insert into opcina (naziv,zupanija)
values ('Vukovar',2);
insert into opcina (naziv,zupanija)
values ('Vinkovci',2);
insert into opcina (naziv,zupanija)
values ('Slavonski_Brod',3);
insert into opcina (naziv,zupanija)
values ('Garčin',3);

insert into mjesto (naziv,opcina)
values ('Mece',1);
insert into mjesto (naziv,opcina)
values ('Uglješ',1);
insert into mjesto (naziv,opcina)
values ('Markovac',2);
insert into mjesto(naziv,opcina)
values ('Nard',2);
insert into mjesto (naziv,opcina)
values ('Sotin',3);
insert into mjesto (naziv,opcina)
values ('Grabovo',3);
insert into mjesto (naziv,opcina)
values ('Mirkovci',4);
insert into mjesto (naziv,opcina)
values ('Jelas',5);
insert into mjesto (naziv,opcina)
values ('Podvinje',5);
insert into mjesto (naziv,opcina)
values ('Šestinac',5);
insert into mjesto (naziv,opcina)
values ('Sapci',6);

