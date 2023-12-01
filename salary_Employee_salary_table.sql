create database smdb


clear screen;

DROP TABLE SALARY CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE_SALARY CASCADE CONSTRAINTS;

CREATE TABLE SALARY(
	sid int, 
	basic int, 
	allowance int,
	PRIMARY KEY(sid));

CREATE TABLE EMPLOYEE_SALARY(
	eid int, 
	sid int,
	FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid),
	FOREIGN KEY(sid) REFERENCES SALARY(sid));

insert into salary values(1, 18000,5000); 
insert into salary values(2, 20000,5000); 
insert into salary values(3, 22000,6000); 

insert into employee_salary values(1,1); 
insert into employee_salary values(2, 3); 
insert into employee_salary values(3,5); 
insert into employee_salary values(4,2);
insert into employee_salary values(5,1); 

commit;





	