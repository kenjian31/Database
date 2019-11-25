CREATE TABLE DIAGNOSIS
(ICD_10_CM       VARCHAR(15)    NOT NULL,
 NAME               VARCHAR(15)    NOT NULL,
Time_In 	  DATE		      NOT NULL,
Time_Out          DATE                  NOT NULL,
 SP_ID               INT                   NOT NULL,
 PRIMARY KEY(ICD_10_CM),
 FOREIGN KEY (SP_ID) references SERVICE_PROVIDER (SSN)
);
