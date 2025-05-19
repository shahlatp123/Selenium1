
create database entri;
use entri;

create table students ( Rollno int , Name varchar(5), class varchar(5),
DOB date, Gender varchar(3), city varchar(10), Mark int);


drop table students;
drop database entri;











create database Entri1;
use Entri;



create table students1(Rollno int,Name varchar(20),Dob date,Gender varchar(20),city varchar(10),mark int);

drop database Entri1;




















insert into students (Rollno,Name,Dob,Gender) values 
(1,'Arya','2020-12-06','f');

select* from students;

insert into students (Rollno,Name,Dob,Gender) values 
(1,'Arya','2020-12-06','f'),(2,'niyas','2020-12-05','M'),(3,'MIRZAN','2020-05-12','M');

select Rollno from students;
select Name,Dob from students;

select name, dob from students where gender='m';
select name, Rollno from students where gender='f';
select Rollno, dob from students where name='niyas';

select *from students where gender='f';
select *from students where Name='niyas';



create table Office(Rollno int,Name varchar(20),Dob date,Gender varchar(20),salary int,city Varchar(20));

insert into office (Rollno,Name,Dob,Gender,salary,city) values 
(1,'Arya','2020-12-06','f',12000,'kochi'),(2,'niyas','2020-12-05','M',10000,'kochi'),(3,'MIRZAN','2020-05-12','M',12000,'calicut');


insert into office (Rollno,Name,Dob,Gender,salary,city) values 
(4,'Anu','2020-12-10','f',5000,'kannur'),(5,'maya','2020-12-10','f',10000,'calicut'),(6,'riya','2020-05-12','f',3000,'kannur');

select*from office;

select Name, Dob from office where salary=12000 and city='kochi';
select Name, Dob from office where Gender='f' and city='kannur';
select*from office  where Gender='f' and city='kannur';


select Name, Dob from office where salary=12000  or city='kochi';
select Name, Dob from office where Gender='f' or city='kannur';
select*from office  where Gender='f' or city='kannur';


select * from office where not (salary=12000  or city='kochi');
select Name, Dob from office where not (Gender='f' or city='kannur');

select Name, Dob from office where not (salary=12000 and city='kochi');
select Name, Dob from office where not (Gender='f' and city='kannur');
select*from office  where  not (Gender='f' or city='kannur');
select*from office  where not (Gender='f' and city='kannur');


select Name from office where not salary=10000;
select*from office where  not salary>10000;


select*from office;


select *from office order by salary;
select *from office order by salary asc;

select *from office order by salary desc;
select *from office order by Name ;



select Name,dob from office order by salary asc;
select Name,dob from office order by Name asc;

select Name from office order by salary desc; 

select*from students;
select*from office;

update office set Name='Niyas' , salary=5000 where Rollno=2;
update office set salary=5000 where Name='maya';
update office set city='kochi' where Rollno=3;

update office set salary=8000, city='malappuram' where  Rollno=5;
update office set Name='Maya'  where  city='malappuram';



select*from office;


delete from students where Rollno=1;

select*from office;

select*from office where city='kochi' limit 2 ;
select*from office where salary=5000 limit 2;



select*from office limit 3 offset 1;
select*from office limit 4 offset 2;

select*from office limit 2 offset 3;
select*from office limit 2 offset 4;

truncate table students;


select*from office;

select min(salary) from office ;
select max(salary) from office ;
select avg(salary) from office ;
select sum(salary) from office ;
select count(city) from office ;

select*from office where Name like 'm%';
select*from office where Name like '%n';
select*from office where Name like '%i%';
select*from office where Name like '_y%';
select*from office where Name like 'a_%';
select*from office where Name like 'a__%';
select*from office where Name like 'n%s';

select*from office where city like 'm%';
select*from office where city like '%m';




-- not null constarints

CREATE TABLE employees
(id INT AUTO_INCREMENT ,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL);


INSERT INTO employees (first_name, last_name, email)
VALUES 
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Emily', 'Johnson', 'emily.johnson@example.com'),
    ('Michael', 'Brown', 'michael.brown@example.com');

-- -email' doesn't have a default value.
INSERT INTO employees (first_name, last_name)
VALUES ('Alice', 'Green'); 

INSERT INTO employees (first_name,last_name,email) values  (NULL,NULL,NULL); 

select*from employees;
truncate table employees;


CREATE TABLE employees1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);


INSERT INTO employees1 (id,first_name, last_name, email)
VALUES 
    (1,'Jane', 'Smith', 'jane.smith@example.com'),
    (2,'Emily', 'Johnson', 'emily.johnson@example.com');

INSERT INTO employees1 (id,first_name, last_name, email)
VALUES
(3,'Michael', 'Brown', 'michael.brown@example.com'),
(2,'Alice', 'Green', 'alice.green@example.com');

select*from employees1;
truncate table employees1;

unique

CREATE TABLE employees2
(id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE)


select*from employees2;

INSERT INTO employees2 (first_name, last_name, email)
VALUES ('John', 'Doe', 'john.doe@example.com');

INSERT INTO employees2 (first_name, last_name, email)
VALUES 
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Emily', 'Johnson', 'emily.johnson@example.com');

INSERT INTO employees2 (first_name, last_name, email)
VALUES ('John jose', 'Doe', 'john.doe@example.com');

select*from employees2;
truncate table employees2;


default

CREATE TABLE employees3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    status VARCHAR(20) DEFAULT 'Active');


INSERT INTO employees3 (first_name, last_name, email)
VALUES ('Alice', 'Brown', 'alice.brown@example.com');


INSERT INTO employees3 (first_name, last_name, email, status)
VALUES ('Bob', 'Green', 'bob.green@example.com', 'Inactive');

select*from employees3;
truncate table employees3;


check

CREATE TABLE employees4 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18 AND age <= 65));


select*from employees4;

INSERT INTO employees4 (first_name, last_name, email, age)
VALUES ('John', 'Doe', 'john.doe@example.com', 30);

INSERT INTO employees4 (first_name, last_name, email, age)
VALUES ('Jane', 'Smith', 'jane.smith@example.com', 70);

INSERT INTO employees4 (first_name, last_name, email, age)
VALUES ('Jane', 'Smith', 'jane.smith@example.com', 15);


select*from employees4;
truncate table employees4;



foreign key

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);


CREATE TABLE employees5 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);



INSERT INTO departments (department_name)
VALUES 
    ('Human Resources'),
    ('Finance'),
    ('Engineering');
    
    select*from departments;

INSERT INTO employees5 (first_name, last_name, email, department_id)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', 1), -- Valid: department_id = 1 exists
    ('Jane', 'Smith', 'jane.smith@example.com', 3); -- Valid: department_id = 3 exists
    
    
INSERT INTO employees5 (first_name, last_name, email, department_id)
VALUES ('Emily', 'Brown', 'emily.brown@example.com', 5); -- Invalid: department_id = 5 doesn't exist


select*from employees5;
select*from departments;

truncate table employees5;
truncate table departments;


JOINS


-- Create departments table
CREATE TABLE TABLE1 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert data into departments table
INSERT INTO TABLE1 (department_id, department_name) VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Sales');

INSERT INTO TABLE1 (department_id, department_name) VALUES
(104, 'Admin'),
(105, 'Marketing'),
(106, 'Sales');

-- Create employees table
CREATE TABLE TABLE2 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES TABLE1(department_id)
);

-- Insert data into employees table
INSERT INTO TABLE2 (employee_id, name, department_id) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 101),
(4, 'David', 103);

select*from TABLE1;
select* from TABLE2;


select*from TABLE1 INNER JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;

select TABLE1.department_name,TABLE2.name from TABLE1 INNER JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;


select*from TABLE1 left JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;

select*from TABLE2 left JOIN TABLE1 ON TABLE2.department_id= TABLE1.department_id;

select TABLE1.department_name,TABLE2.name from TABLE1 left JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;


select*from TABLE1 right JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;

select*from TABLE2 right JOIN TABLE1 ON TABLE2.department_id= TABLE1.department_id;

select TABLE1.department_name,TABLE2.name from TABLE1 left JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;


select*from TABLE1 full join TABLE2 ;
select*from TABLE1 cross join TABLE2 ;


select*from TABLE1 left JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id
union
select*from TABLE1 right JOIN TABLE2 ON TABLE1.department_id= TABLE2.department_id;

select*from TABLE2 left JOIN TABLE1 ON TABLE2.department_id= TABLE1.department_id
union
select*from TABLE2 right JOIN TABLE1 ON TABLE2.department_id= TABLE1.department_id;
