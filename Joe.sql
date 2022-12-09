/*show databases;*/
/*create database employee;*/
/*use employee;
show tables;*/ 
/*select * from Employee;*/

/*
Drop Table Employee;
CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Name_Id VARCHAR(255) NOT NULL,
    Salary numeric,
    ManagerId INT
);*/

/*
INSERT INTO Employee (Id, Name_Id, Salary, ManagerId)
VALUES (1, 'Joe', 70000,3),
	   (2, 'Henry', 80000,4),
       (3, 'Sam', 60000, NULL),
       (4,'Max',90000, NULL);  
*/



with e_temp1 as (select * from Employee),
     e_temp2 as (select * from Employee where ManagerId != '')



select e_temp2.Name_Id as Employee
from e_temp2
left join e_temp1
on e_temp2.ManagerId = e_temp1.Id
where e_temp2.Salary > e_temp1.Salary
;


