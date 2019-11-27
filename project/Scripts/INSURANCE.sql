CREATE TABLE INSURANCE 
(MemberID             INT     NOT NULL,
 Insurence_Provide    INT     NOT NULL,
 Vaild_Date           DATE    NOT NULL,
 PID                  INT     NOT NULL,
 PRIMARY KEY(MemberID),
 FOREIGN KEY(PID) REFERENCES PATIENT(PID),
 FOREIGN KEY( Insurence_Provide) REFERENCES PARENT_GUARDIAN(ParentID)
);

