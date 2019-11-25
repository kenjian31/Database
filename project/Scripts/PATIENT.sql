CREATE TABLE PATIENT
( PID                    	INT  NOT NULL,
  Fname		VARCHAR(15) NOT NULL,
  Minit			CHAR,
  Lname                       VARCHAR(20)   NOT NULL,
  Address_line1           VARCHAR(30),
  Address_line2           VARCHAR(30),
  Address_line3	 VARCHAR(30),
  Emergency_info        VARCHAR(20)    NOT NULL,
  Dob                            DATE                 NOT NULL,
  Age                            INT                     NOT NULL,
PRIMARY KEY(PID));
