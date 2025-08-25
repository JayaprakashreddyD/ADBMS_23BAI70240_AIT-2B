create table employee_TABLE(
emp_id int primary key,
emp_name varchar(max),
emp_dept varchar(max),
manager_id int,
foreign key (manager_id) references employee_TABLE(emp_id)

);

insert into employee_TABLE VALUES
(1,'JayaPrakash','HR',2),

(2,'Name1','FINANCE',1),
(3,'Name2','IT',1),
(4,'Name3','FINANCE',1),
(5,'Name4','IT',1),
(6,'Name5','FINANCE',1);

select A.emp_name, A.emp_dept, E.emp_name as ManagerName, E.emp_dept as ManagerDept
		from employee_TABLE as A 
  JOIN 
  employee_TABLE as E 
  on
  E.emp_id = A.manager_id;
  