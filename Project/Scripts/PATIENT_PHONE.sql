CREATE TABLE PATIENT_PHONE
(Phone_Number  char     NOT NULL,
PID         int,
PRIMARY KEY(Phone_Number, PID),
FOREIGN KEY(PID)  references PATIENT(PID)
);
