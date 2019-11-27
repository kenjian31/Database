CREATE TABLE INITIAL_ASSESSMENT
(AssessmentID        VARCHAR(15)             NOT NULL,
 VID                 INT                     NOT NULL,
 NurseID             INT                     NOT NULL,
 PRIMARY KEY(AssessmentID),
 FOREIGN KEY(VID) REFERENCES VISIT(VID),
 FOREIGN KEY(NurseID) REFERENCES ASSESSMENT_NURSE(EID)
);

