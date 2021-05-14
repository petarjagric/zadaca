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

#1-3
insert into zupan (ime,prezime) values
('Ivan','Anušić'),('Božo','Galić'),('Danijel','Marušić');
select * from zupan;

insert into zupanija(naziv,zupan) values
('Osiječko-Baranjska',1),('Vukovarsko-Srijemska',2),('Brodsko-Posavska',3);
select * from zupanija;

insert into opcina (zupanija,naziv) values
(1,'Opićna Antunovac'),(1,'Općina Bizovac'),(2,'Općina Cerna'),(2,'Općina Borovo'),(3,'Općina Bebrina'),(3,'Općina Bukovlje');
select * from opcina;

insert into mjesto (opcina,naziv) values
(1,'Antunovac'),(1,'Bizovac'),(1,'Bilje'),(1,'Darda'),(2,'Cerna'),(2,'Borovo'),(2,'Ivankovo'),(2,'Jarmina'),(3,'Bebrina'),(3,'Bukovlje'),(3,'Nova Gradiška'),(3,'Cernik');
select * from mjesto;

update mjesto
set naziv = 'Čepin'
where sifra=1;
update mjesto
set naziv = 'Petlovac'
where sifra=2;
update mjesto
set naziv = 'Podgoroač'
where sifra=3;
update mjesto
set naziv = 'Andrijaševci'
where sifra=5;
update mjesto
set naziv = 'Rokovci'
where sifra=6;

