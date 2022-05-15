# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\botao\OneDrive\Dokumenti\GitHub\EdunovaPP25\SQL\DZ\frizerskisalon2.sql
drop database if exists frizerskisalon2;
create database frizerskisalon2 default charset utf8mb4;
use frizerskisalon2;

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    kontakt int not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    spol int not null,
    kontakt int not null,
    djelatnik int not null
 );

create table usluga(
    sifra int not null primary key auto_increment,
    vrstausluge int not null,
    cijena decimal(18,2),
    vrijeme time,
    datum datetime,
    korisnik int not null
);

alter table korisnik add foreign key (djelatnik) references djelatnik(sifra);
alter table usluga add foreign key (korisnik) references korisnik(sifra);

insert into djelatnik (ime,prezime,kontakt)
values ('Hrvoje','Horvat',0915123456);

insert into usluga (korisnik,vrstausluge,cijena,vrijeme,datum)
values ('1','sisanje','29.99','13.00','2022-05-21'); # ???





