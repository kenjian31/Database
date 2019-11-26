CREATE TABLE SERVICE_PROVIDER
( EID             	INT                   	NOT NULL,
  Fname        	VARCHAR(15)	NOT NULL,
  MINIT          	CHAR              	NOT NULL,
  Lname        	VARCHAR(15)	NOT NULL,
  SSN            	INT                  	NOT NULL,
  PRIMARY KEY (EID),
  UNIQUE(SSN),
  FOREIGN KEY(EID) references EMPLOYEE(EID)
 );
