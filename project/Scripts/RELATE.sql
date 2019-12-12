CREATE TABLE RELATE
( R_parentID  INT NOT NULL,
  R_PID INT   NOT NULL,
  PRIMARY KEY (R_parentID, R_PID),
  FOREIGN KEY (R_parentID) REFERENCES PARENT_GUARDIAN(ParentID),
  FOREIGN KEY (R_PID) REFERENCES PATIENT(PID)
);
