create database library;
use library;

create table students(
id int primary key auto_increment,
name varchar(50),
birthday varchar(50),
class_name varchar(50)
);
create table author(
id int primary key auto_increment,
name varchar(50)
);
create table category(
id int primary key auto_increment,
name varchar(50)
);
create table books(
id int primary key auto_increment,
title varchar(50),
page_size int,
id_author int,
id_category int,
foreign key (id_author) references author(id),
foreign key (id_category) references category(id)
);
create table borrows(
id int auto_increment primary key,
id_student int,
id_books int,
borrows_date date,
return_date date,
foreign key (id_student) references students(id),
foreign key (id_books) references books(id)
);

