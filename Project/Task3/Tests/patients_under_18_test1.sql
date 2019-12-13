insert into PARENT_GUARDIAN
values (1, 'Ken', 'K', 'JIAN', 'Minnesota', null,null);
insert into PATIENT
values (001,'wang','k', 'xi',null,null,null,'xxxx','1001-01-01', 19);
insert into PATIENT
values (002,'wan','k', 'xian',null,null,null,'xxx','1001-02-02', 10);
insert into PATIENT
values (003,'wa','k', 'xiang',null,null,null,'xxxx','1001-02-02', 100);
insert into RELATE
values (1,2);
insert into MINOR
values (002,'wan','k', 'xian',null,null,null,'xxx','1001-02-02', 10);
insert into MINOR
values (003,'wa','k', 'xiang',null,null,null,'xxxx','1001-02-02', 100);


SELECT *
FROM MINOR
WHERE PID = 2;
