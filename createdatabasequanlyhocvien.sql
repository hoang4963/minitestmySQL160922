create database quanlyhocvien;
use quanlyhocvien;
create table address(
id int primary key auto_increment,
address varchar(50)
);
create table classes(
id int primary key auto_increment,
name varchar(50),
language varchar(50),
description varchar(50)
);
create table student(
id int primary key auto_increment,
fullname varchar(50),
address_id int,
age int,
phone varchar(10) unique,
classes_id int,
foreign key (address_id) references address(id),
foreign key (classes_id) references classes(id)
);
create table course(
id int primary key auto_increment,
name varchar(50),
description varchar(50)
);
create table points(
id int primary key auto_increment,
course_id int,
student_id int,
thepoint int
);
alter table points
add foreign key (student_id) references student(id);
alter table points 
add foreign key (course_id) references course(id);
insert into address(address)
values ('Ha Noi'),
		('Ha Nam'),
        ('Quang Ninh'),
        ('Hai Phong'),
        ('Thai Binh');
insert into classes(name,language,description)
values  ('C0622I1','Java',null),
		('C0722I1','JavaScript',null),
        ('C0622H1','Python',null),
        ('C0722K1','C++',null),
        ('C0822I1','Pascal',null);
insert into student(fullname,address_id,age,phone,classes_id)
values  ('Truong Huy Hoang',2,23,'0965934963',1),
		('Nguyen Huy Trung',3,29,'0123456789',1),
        ('Pham Hong Quan',4,29,'0987654321',1),
        ('Duong Van Hieu',1,24,'0869650812',1),
        ('Luong Thi Thanh Chuc',5,21,'0977137641',1),
        ('Nguyen Thi Kieu Anh',2,29,'0987136547',2),
        ('Truong Cao Cao',2,15,'0123789654',3),
        ('Truong Ca Tre Lai',2,15,'0456789123',4),
        ('Shanks Toc Do',1,40,'0285741369',5),
        ('Draucula Mihawk',4,40,'0963852147',5);
insert into course(name, description)
values  ('Part time', null),
		('Full time',null);
insert into points(course_id,student_id,thepoint)
values  (2,1,95),
		(2,2,90),
        (2,3,89),
        (2,4,91),
        (2,5,99),
        (1,6,99),
        (1,7,100),
        (1,8,100),
        (1,9,50),
        (1,10,45),
        (2,null,11),
        (1,null,23),
        (2,null,35),
        (1,null,8),
        (2,null,67);
		






