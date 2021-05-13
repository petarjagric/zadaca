drop database if exists zupanija;
create database if exists zupanija;
use zupanija;

create table zupan(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50)
);

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan int not null
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