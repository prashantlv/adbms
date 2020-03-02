1. select * from EMPLOYEE;
2. select * from DEPARTMENT;
3. select * from JOB;
4. select * from LOCATION;
5. select FIRST_NAME, LAST_NAME, SALARY, COMM from EMPLOYEE;
6. 
7. select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEE;
8. select * from EMPLOYEE where FIRST_NAME = 'PRASHANT';
9. select FIRST_NAME, LAST_NAME from EMPLOYEE where DEPARTMENT_ID = 20;
10.select FIRST_NAME, LAST_NAME from EMPLOYEE where SALARY between 3000 and 4500;
11.select FIRST_NAME, LAST_NAME from EMPLOYEE where DEPARTMENT_ID = 10 or DEPARTMENT_ID = 20;
12.select FIRST_NAME, LAST_NAME from EMPLOYEE where not DEPARTMENT_ID = 10 and not DEPARTMENT_ID = 30;
13.select FIRST_NAME, LAST_NAME from EMPLOYEE where name like 'P%';
14.select FIRST_NAME, LAST_NAME from EMPLOYEE where name like 'P%T';
15.select FIRST_NAME from EMPLOYEE where length(FIRST_NAME) = 4 and FIRST_NAME like 'A%';
16.select FIRST_NAME from EMPLOYEE where DEPARTMENT_ID = 30 and SALARY > '2500';
17.select FIRST_NAME from EMPLOYEE where COMM is NULL;
18.SELECT LAST_NAME, EMPLOYEE_ID from EMPLOYEE order by EMPLOYEE_ID;
19.select EMPLOYEE_ID, FIRST_NAME from EMPLOYEE order by SALARY desc;
20.SELECT * from EMPLOYEE ORDER BY LAST_NAME asc,SALARY desc ;
21.SELECT * from EMPLOYEE ORDER BY LAST_NAME asc,DEPT_ID desc ;

#Group BY and Having Clause
22.SELECT count(*) as 'No. of Employees',DEPARTMENT_ID from employee group by department_id ;
23.SELECT department_id ,MAX(SALARY), MIN(SALARY), AVG(SALARY) from EMPLOYEE group by DEPARTMENT_ID ;
24.SELECT job_id ,MAX(SALARY), MIN(SALARY), AVG(SALARY) from EMPLOYEE group by job_ID ;
25.SELECT count(date_format(hiredate,"%m-%y")) as 'No of employee' , date_format(hiredate,"%m-%y") as 'Month-Year' from employee group by date_format(hiredate,"%m-%y") ORDER BY count(date_format(hiredate,"%m-%y")) ;
26.SELECT count(date_format(hiredate,"%m-%y")) as 'No of employee' , date_format(hiredate,"%m-%y") as 'Month-Year' from employee group by date_format(hiredate,"%m-%y") ORDER BY hiredate ;
27.SELECT DEPARTMENT_ID,count(*) as 'Total' from employee group by DEPARTMENT_ID Having count(*) >= 4 ;
28.SELECT count(*) as 'Total' from employee WHERE date_format(hiredate,"%m") = 1 ;
29.SELECT count(*) as 'Total' from employee WHERE date_format(hiredate,"%m") In(1,7);
30.SELECT count(*) as 'Total' from employee WHERE date_format(hiredate,"%y") = 85 ;
31.SELECT date_format(hiredate,"%m"),count(*) as 'Total' from employee where date_format(hiredate,"%y") = 85 group by date_format(hiredate,"%y");
32.SELECT date_format(hiredate,"%m") as 'Month',count(*) as 'Total' from employee where date_format(hiredate,"%y") = 85 group by date_format(hiredate,"%m");
33.SELECT count(*) as 'Total' from EMPLOYEE where date_format(hiredate,"%m") = 3 AND date_format(hiredate,"%y") = 85 ;
34.SELECT DEPARTMENT_ID from EMPLOYEE where (date_format(hiredate,"%m") = 4 AND date_format(hiredate,"%y") = 85) group by DEPARTMENT_ID Having count(*) >= 3 ;

#Sub queries
35.SELECT LAST_NAME FROM EMPLOYEE where SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE) ;
36.SELECT * from EMPLOYEE where DEPARTMENTT_ID = (SELECT DEPT_ID FROM DEPARTMENT where name = 'SALES') ;
37.SELECT * from EMPLOYEE where job_ID = (SELECT job_ID FROM job where func = 'CLERK') ;
38.SELECT * from EMPLOYEE where DEPTARTMENT_ID = (SELECT DEPTARTMENT_ID FROM DEPARTMENT where LOCATION_id = (SELECT LOCATION_id FROM LOCATION where reg_group='NEW YORK')) ;
39.SELECT count(*) as 'Total' from EMPLOYEE where deptartment_id = (SELECT DEPT_ID from department where name = 'SALES') ;

UPDATE EMPLOYEE
40.SET SALARY = SALARY + SALARY * 0.1
WHERE job_id = (SELECT job_id FROM job where func = 'CLERK') ;

41.DELETE FROM EMPLOYEE
where DEPTARTMENT_ID = (SELECT DEPT_ID from DEPARTMENT where name = 'ACCOUNTING') ;

42.SELECT * FROM employee WHERE salary = (SELECT salary FROM employee order by salary desc limit 1,1) ;
43.SELECT * FROM employee WHERE salary = (SELECT salary FROM employee order by salary desc limit 3,1) ;
