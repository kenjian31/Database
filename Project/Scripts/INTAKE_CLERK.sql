CREATE TABLE INTAKE_CLERK
( EID           	INT         	NOT NULL,
  Fname     	VARCHAR(15)	NOT NULL,
  MINIT       	CHAR              	NOT NULL,
  Lname      	VARCHAR(15) 	NOT NULL,
  SSN          	INT        	NOT NULL,
  HOURLY_Wage   INT 	NOT NULL,
  PRIMARY KEY(EID),
  FOREIGN KEY(EID) REFERENCES EMPLOYEE(EID),
  FOREIGN KEY(SSN) REFERENCES EMPLOYEE(SSN)
);
