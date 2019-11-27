CREATE TABLE VISIT
( VID     INT     NOT NULL,
  Bill    FLOAT    NOT NULL,                  
  Date    DATE        NOT NULL,
  Intake_clerk_id    INT    NOT NULL,       
  PID     INT,            
  Assessment_Nurse_id  INT    NOT NULL,                 
  Cost       FLOAT,
  Insurence_info       varchar(20),
  Online_Form       varchar(20),
  PRIMARY KEY(VID),
  foreign key (Intake_clerk_id) REFERENCES INTAKE_DEPARTMENT(DID),
  foreign key (PID) REFERENCES PATIENT (PID),
  foreign key (Assessment_Nurse_id) REFERENCES ASSESSMENT_NURSE(EID)
);

