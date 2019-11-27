The order of insertting SQL is:
CREATE TABLE DEPARTMENT
( DID       INT      NOT NULL,
  Dname     VARCHAR(15)     NOT NULL,
  PRIMARY KEY (DID),
  UNIQUE  (Dname)
);

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
CREATE TABLE INSURANCE
(MemberID       INT     NOT NULL,
 Insurence_Provide    INT   NOT NULL,
 Vaild_Date        DATE       NOT NULL,
 PID               INT            NOT NULL,
PRIMARY KEY(MemberID) ,
FOREIGN KEY(PID) REFERENCES PATIENT(PID)
);

CREATE TABLE INTAKE_DEPARTMENT
( DID             INT          NOT NULL,
  Name          VARCHAR(15)    NOT NULL,
  PRIMARY KEY (DID),
   FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);
CREATE TABLE IT_DEPARTMENT
( DID       INT               NOT NULL,
  Name    VARCHAR(15)   NOT NULL,
  PRIMARY KEY(DID),
  FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
); 

CREATE TABLE MINOR
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
 PRIMARY KEY(PID),
 FOREIGN KEY (PID) REFERENCES PATIENT(PID)
);

 
CREATE TABLE IT_DEPARTMENT
( DID       INT               NOT NULL,
  Name    VARCHAR(15)   NOT NULL,
  PRIMARY KEY(DID),
  FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);



CREATE TABLE PARENT_GUARDIAN
( ParentID	INT 	NOT NULL,
  Fname	VARCHAR(15)  NOT NULL,
  Minit              CHAR,
  Lname           VARCHAR(15) NOT NULL,
  Address_line1   VARCHAR(40)  NOT NULL,
  Address_line2   VARCHAR(40),
  Address_line3   VARCHAR(40),
 PRIMARY KEY (ParentID));


CREATE TABLE PATIENT_CARE_DEPARTMENT
(DID             INT          NOT NULL,
  Name          VARCHAR(15)    NOT NULL,
  PRIMARY KEY (DID),
   FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);

CREATE TABLE PATIENT_PHONE
(Phone_Number  char     NOT NULL,
PID         int,
PRIMARY KEY(Phone_Number, PID),
FOREIGN KEY(PID)  references PATIENT(PID)
);

CREATE TABLE PAYROLL_DEPARTMENT
( DID              INT             NOT NULL,
  Name           VARCHAR(15) NOT NULL,
  PRIMARY KEY(DID),
  FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);

CREATE TABLE RELATE
( R_parentID  INT NOT NULL,
  R_PID INT NOT NULL,
  PRIMARY KEY (R_parentID, R_PID),
  FOREIGN KEY (R_parentID) REFERENCES PARENT_GUARDIAN(ParentID),
  FOREIGN KEY (R_PID) REFERENCES PATIENT(PID)
);

CREATE TABLE EMPLOYEE
(EID    INT  NOT NULL,
 FNAME  VARCHAR(15) NOT NULL,
 MINT   CHAR,
 LNAME  VARCHAR(15) NOT NULL,
 SSN    INT  NOT NULL,
 DEP_ID INT,
 PRIMARY KEY (EID),
 UNIQUE (SSN),
 FOREIGN KEY(DEP_ID) REFERENCES INTAKE_DEPARTMENT(DID)
);

 
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
 
  
CREATE TABLE TREATMENT
(ICD_10_PCS  VARCHAR(15)   NOT NULL,
 Name 		VARCHAR(15)   NOT NULL,
 COST		FLOAT		    NOT NULL,
Approval_From_Parent      VARCHAR(20)    NOT NULL,
SP_ID             INT		   NOT NULL,
Approved        INT                      NOT NULL,
PRIMARY KEY (ICD_10_PCS),
FOREIGN KEY (Approved) REFERENCES SERVICE_PROVIDER(SSN)
);

CREATE TABLE TREATMENT_NURSE
( EID            	INT         	NOT NULL,
  Fname       	VARCHAR(15)	NOT NULL,
  Minit           	CHAR              	NOT NULL,
  Lname        	VARCHAR(15)	NOT NULL,
  SSN           	INT                   	NOT NULL,
  PRIMARY KEY (EID),
  FOREIGN KEY(EID) REFERENCES EMPLOYEE(EID)
);

CREATE TABLE UNINSURED
(PID                  INT         NOT NULL,
 Fname             VARCHAR(15)    NOT NULL,
 Minit                 CHAR,
 Lname             VARCHAR(15)     NOT NULL,
 Address_line1  VARCHAR(30)    NOT NULL,
 Address_line2  VARCHAR(30),
 Address_line3  VARCHAR(30),
 Emergency_info  VARCHAR(20)  NOT NULL,
 Dob           DATE                            NOT NULL,
 Age           INT                                NOT NULL,
 Pay           INT                               NOT NULL,
 PRIMARY KEY (PID),
 FOREIGN KEY (PID) REFERENCES PATIENT (PID)
);

 
CREATE TABLE ASSESSMENT_NURSE
(EID                INT             NOT NULL,
  Fname           VARCHAR(15)    NOT NULL,
  Minit               CHAR                  NOT NULL,
  Lname            VARCHAR(15)    NOT NULL,
  SSN               INT                       NOT NULL,
  PRIMARY KEY (EID),
  FOREIGN KEY(EID) REFERENCES EMPLOYEE(EID)
);

 
CREATE TABLE VISIT
( VID     INT     NOT NULL,
  Bill    FLOAT    NOT NULL,
  Date    DATE 	   NOT NULL,
  Intake_clerk_id    INT    NOT NULL,
  PID     INT,
  Assessment_Nurse_id  INT    NOT NULL,
  Cost 	  FLOAT,
  Insurence_info	   varchar(20),
  Online_Form       varchar(20),
  PRIMARY KEY(VID),
  foreign key (Intake_clerk_id) REFERENCES INTAKE_DEPARTMENT(DID),
  foreign key (PID) REFERENCES PATIENT (PID),
  foreign key (Assessment_Nurse_id) REFERENCES ASSESSMENT_NURSE(EID)
);

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

 
CREATE TABLE ADULT
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
 PRIMARY KEY(PID),
 FOREIGN KEY (PID) REFERENCES PATIENT(PID)
);

CREATE TABLE ASSESSMENT_DEPARTMENT
(
 DID              INT             NOT NULL,
  Name           VARCHAR(15) NOT NULL,
  PRIMARY KEY(DID),
  FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);
 
CREATE TABLE BILLING_DEPARTMENT
( DID              INT             NOT NULL,
  Name           VARCHAR(15) NOT NULL,
  PRIMARY KEY(DID),
  FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);

CREATE TABLE DIAGNOSIS
(ICD_10_CM       VARCHAR(15)    NOT NULL,
 NAME               VARCHAR(15)    NOT NULL,
Time_In 	  DATE		      NOT NULL,
Time_Out          DATE                  NOT NULL,
 SP_ID               INT                   NOT NULL,
 PRIMARY KEY(ICD_10_CM),
 FOREIGN KEY (SP_ID) references SERVICE_PROVIDER (SSN)
);

CREATE TABLE INITIAL_ASSESSMENT
(AssessmentID  VARCHAR(15)   NOT NULL,
 VID                    INT                     NOT NULL,
 NurseID             INT                     NOT NULL,
 PRIMARY KEY(AssessmentID),
 FOREIGN KEY(VID) REFERENCES VISIT(VID),
 FOREIGN KEY(NurseID) REFERENCES ASSESSMENT_NURSE(EID)
);

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

CREATE TABLE NURSE
(EID                INT             NOT NULL,
 Fname           VARCHAR(15)    NOT NULL,
 Minit               CHAR                  NOT NULL,
 Lname            VARCHAR(15)    NOT NULL,
 SSN               INT                       NOT NULL,
 PRIMARY KEY (EID),
 FOREIGN KEY(EID) REFERENCES EMPLOYEE(EID)
);