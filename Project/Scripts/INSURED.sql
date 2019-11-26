CREATE TABLE INSURED
( PID        INT      NOT NULL,
  Fname   VARCHAR(15)    NOT NULL,
  Minit       CHAR,
  Lname    VARCHAR(15)   NOT NULL,
  Address_line1    VARCHAR(30)     NOT NULL,
  Address_line2    VARCHAR(30),
  Address_line3    VARCHAR(30),
  Emergency_Info  VARCHAR(20)  NOT NULL,
  Dob	    DATE         NOT NULL,
  Age        INT            NOT NULL,
  Copay    FLOAT      NOt NULL,
  PRIMARY KEY (PID),
  FOREIGN KEY (PID) REFERENCES PATIENT(PID)
);
