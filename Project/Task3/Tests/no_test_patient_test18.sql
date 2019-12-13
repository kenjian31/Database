insert into PATIENT
values (001,'wang','k', 'xi',null,null,null,'xxxx','1001-01-01', 19);

insert into PATIENT
values (002,'wan','k', 'xian',null,null,null,'xxx','1001-02-02', 10);

insert into PATIENT
values (003,'wa','k', 'xiang',null,null,null,'xxxx','1001-02-02', 100);

insert into DEPARTMENT
values (1, 'First department');

insert into INTAKE_DEPARTMENT
values (1, 'Intake department1');

insert into EMPLOYEE
values (1, 'Ken', 'A','Jian',123456789, 1);

insert into EMPLOYEE
values (2, 'Wang', 'A','Jian',123456781, 1);

insert into NURSE
values (1, 'Ken', 'A','Jian',123456789);

insert into ASSESSMENT_NURSE
values (1, 'Ken', 'A','Jian',123456789);

insert into VISIT
values (1, 123.2, "1010-03-04", 1, 1, 1, 12, "xxxx", "yyyy");


select *
from TREATMENT;
