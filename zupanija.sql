drop database if exists zupanija;
create database zupanija;
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

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan (ime,prezime) values
('Ivan','Anu�i?'),
('Bo�o','Gali?'),
('Danijel','Maru�i?');

insert into zupanija(naziv,zupan) values
('Osije?ko-Baranjska',1),
('Vukovarsko-Srijemska',2),
('Brodsko-Posavska',3);