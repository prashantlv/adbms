alter table LOCATION add primary key (Location_ID);
alter table DEPARTMENT add primary key (Department_ID);
alter table JOB add primary key (Job_ID);
alter table EMPLOYEE add primary key (Employee_ID);

alter table DEPARTMENT add FOREIGN KEY (Location_ID) REFERENCES LOCATION(Location_ID);
alter table EMPLOYEE add FOREIGN KEY (JOB_ID) REFRENCES JOB(Job_ID);
alter table EMPLOYEE add FOREIGN KEY (DEPARTMENT_ID) REFRENCES DEPARTMENT(Department_ID);
