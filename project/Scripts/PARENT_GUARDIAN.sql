CREATE TABLE PARENT_GUARDIAN
( ParentID    INT     NOT NULL,
  Fname    VARCHAR(15)  NOT NULL,
  Minit              CHAR,
  Lname           VARCHAR(15) NOT NULL,
  Address_line1   VARCHAR(40)  NOT NULL,
  Address_line2   VARCHAR(40),
  Address_line3   VARCHAR(40),
  PRIMARY KEY (ParentID)
);

