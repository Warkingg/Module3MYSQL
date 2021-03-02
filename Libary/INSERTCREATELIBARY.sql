create table Book(
Id int primary key,
book_name varchar(100) not null
);
create table Category(
Id int primary key,
category_name varchar(100) not null,
foreign key (id) references book(id)
);
create table Student(
Id int primary key,
student_number varchar(15) not null,
student_name varchar(50) not null,
address varchar (500) not null,
email varchar (50) not null
);
create table BorrowOrder(
Id int primary key,
student_name varchar(100),
category_name varchar(100),
book_name varchar(100),
foreign key (id) references book(id),
foreign key (id) references student(id)
);
