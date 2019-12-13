insert into PATIENT
values (001,'wang','k', 'xi',null,null,null,'xxxx','1001-01-01', 19);

insert into PATIENT
values (002,'wan','k', 'xian',null,null,null,'xxx','1001-02-02', 10);

insert into PATIENT
values (003,'wa','k', 'xiang',null,null,null,'xxxx','1001-02-02', 100);

insert into INSURED
values (001,'wang','k', 'xi','XXXXX',null,null,'xxxx','1001-01-01', 19, 10.1);
insert into INSURED
values (002,'wan','k', 'xian','XXXXXX',null,null,'xxx','1001-02-02', 10, 12.2);
insert into INSURANCE
values (001, 12, '2009-12-12', 001);
insert into INSURANCE
values (002, 13, '2009-12-12', 002);


SELECT *
from INSURANCE;
SELECT *
from INSURED;
