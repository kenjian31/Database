
INSERT INTO INITIAL_ASSESSMENT values ('a001', 1, 1);
INSERT INTO INITIAL_ASSESSMENT values ('b002', 2, 2);


SELECT A.*
FROM ASSESSMENT_NURSE AS A
where A.EID in
(select B.NurseID FROM INITIAL_ASSESSMENT AS B );