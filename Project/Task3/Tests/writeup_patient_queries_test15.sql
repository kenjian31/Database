INSERT INTO DEPARTMENT
VALUES (1, 'INTAKE_DEPARTMENT');

INSERT INTO INTAKE_DEPARTMENT
VALUES(1, 'INTAKE_DEPARTMENT');

INSERT INTO EMPLOYEE
VALUES (1, 'Mary', 'A', 'Green', 123, 1);

INSERT INTO NURSE
VALUES (1, 'Mary', 'A', 'Green', 123);

INSERT INTO ASSESSMENT_NURSE
VALUES (1, 'Mary', 'A', 'Green', 123);

INSERT INTO PATIENT
VALUES (1, 'Stanley', 'B', 'Shepherd', '123', NULL, NULL, '456', '1996-06-11', 23);

INSERT INTO VISIT
VALUES (1, 100, '2019-12-12', 1, 1, 1, 200, '123', '456');

INSERT INTO PATIENT_PHONE
VALUES ('5', 1);

SELECT *
FROM PATIENT natural JOIN PATIENT_PHONE
WHERE PID = (SELECT PID
		FROM VISIT
		WHERE VID = 1)
