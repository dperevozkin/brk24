create database овощи;
go
use овощи;
go

create table овощи
	(
	id int primary key identity,
	name varchar(50),
	srok tinyint,
	temp smallint
	);

insert into овощи(srok, temp, name) values(7, 5, 'помидоры');
insert into овощи(srok, temp, name) values(14, 15, 'огурцы');
insert into овощи(srok, temp, name) values(30, 20, 'картошка');
insert into овощи(srok, temp, name) values(20, 5, 'баклажаны');
insert into овощи(srok, temp, name) values(30, 10, 'капуста');
insert into овощи(srok, temp, name) values(30, 15, 'лук');
insert into овощи(srok, temp, name) values(10, 12, 'перчики');
insert into овощи(srok, temp, name) values(40, 20, 'чеснок');


create table поставщики
	(
	id int primary key identity,
	name varchar(50),
	telefon varchar(16),
	kidala bit
	);

insert into поставщики (name, telefon, kidala) values ('Жанна', '0123456789', 0);
insert into поставщики (name, telefon, kidala) values ('Жаныбек', '1234567890', 0);
insert into поставщики (name, telefon, kidala) values ('Мухаммадали', '5123456789', 1);
insert into поставщики (name, telefon, kidala) values ('Жуманазар', '46723282211', 1);
insert into поставщики (name, telefon, kidala) values ('Асема', '7327278287', 0);
insert into поставщики (name, telefon, kidala) values ('Айбикке','544564356', 0);


create table поставки
	(
	id int primary key identity, 
	id_ovosh int foreign key references овощи (id) not null,
	id_post int foreign key references поставщики (id) not null,
    massa float,
    date_postavka date,
    price money,
	);

