CREATE TABLE ADDITIONAL_EMPLOYEE
( EID                INT             NOT NULL,
  Fname           VARCHAR(15)    NOT NULL,
  Minit               CHAR                  NOT NULL,
  Lname            VARCHAR(15)    NOT NULL,
  SSN               INT                       NOT NULL,
  PRIMARY KEY (EID),
  FOREIGN KEY(EID) references EMPLOYEE(EID),
  FOREIGN KEY(SSN) references EMPLOYEE(SSN)
);
