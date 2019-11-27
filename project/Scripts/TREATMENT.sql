CREATE TABLE TREATMENT
(ICD_10_PCS              VARCHAR(15)   NOT NULL,
 Name                    VARCHAR(15)   NOT NULL,
 COST                    FLOAT         NOT NULL,
 Approval_From_Parent    VARCHAR(20)   NOT NULL,
 SP_ID                   INT           NOT NULL,
 Approved                INT           NOT NULL,
 PRIMARY KEY (ICD_10_PCS),
 FOREIGN KEY (Approved) REFERENCES SERVICE_PROVIDER(SSN)
);

