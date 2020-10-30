CREATE TABLE CUSTOMER(CUSTOMER_ID VARCHAR(5) PRIMARY KEY, FIRST_NAME VARCHAR(10) NOT NULL, MIDDLE_NAME VARCHAR(10), LAST_NAME VARCHAR(10) NOT NULL, COUNTRY VARCHAR(15) NOT NULL, EMAIL_ID VARCHAR(20) NOT NULL);
CREATE TABLE ROOM(ROOM_NO VARCHAR(5) PRIMARY KEY, TYPE VARCHAR(10) NOT NULL, RATE INT NOT NULL);
CREATE TABLE BILL(BILL_NO VARCHAR(10) PRIMARY KEY,CUSTOMER_ID VARCHAR(5), AMOUNT INT NOT NULL);
CREATE TABLE EMPLOYEE(EMPLOYEE_ID VARCHAR(5) PRIMARY KEY, E_NAME VARCHAR(15) NOT NULL, SALARY INT NOT NULL);
CREATE TABLE HOTEL_BRANCH(BRANCH_ID VARCHAR(5) PRIMARY KEY, B_NAME VARCHAR(15) NOT NULL, B_LOCATION VARCHAR(10) NOT NULL);
CREATE TABLE FACILITIES(F_NAME VARCHAR(15), PRICE_PER_HOUR INT NOT NULL, PRIMARY KEY(F_NAME));
CREATE TABLE RESERVATION(PNR VARCHAR(5) PRIMARY KEY, CHECK_IN_DATE DATE NOT NULL, CHECK_OUT_DATE DATE NOT NULL);
CREATE TABLE SERVICES(S_NAME VARCHAR(10),MANAGER_ID VARCHAR(5), PRIMARY KEY(S_NAME,MANAGER_ID));
CREATE TABLE USES_FACILITIES(CUSTOMER_ID VARCHAR(5), FACILITY_NAME VARCHAR(15), NO_OF_HOURS INT, PRIMARY KEY(CUSTOMER_ID,FACILITY_NAME));     
ALTER TABLE USES_FACILITIES ADD FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (CUSTOMER_ID) ON DELETE CASCADE; 
CREATE TABLE PERFORMS(NUMBER_OF_HOURS INT);
ALTER TABLE BILL ADD FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (CUSTOMER_ID) ON DELETE CASCADE;
ALTER TABLE ROOM ADD BRANCH_ID VARCHAR(5);
ALTER TABLE ROOM ADD FOREIGN KEY(BRANCH_ID) REFERENCES HOTEL_BRANCH(BRANCH_ID);
ALTER TABLE RESERVATION ADD CUSTOMER_ID VARCHAR(5);
ALTER TABLE RESERVATION ADD FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON DELETE CASCADE;
ALTER TABLE RESERVATION ADD ROOM_NO VARCHAR(5);
ALTER TABLE RESERVATION ADD FOREIGN KEY(ROOM_NO) REFERENCES ROOM(ROOM_NO);
ALTER TABLE SERVICES ADD FOREIGN KEY(MANAGER_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID) ON DELETE SET NULL;
ALTER TABLE PERFORMS ADD EMPLOYEE_ID VARCHAR(5);
ALTER TABLE PERFORMS ADD SERVICES_NAME VARCHAR(10);
ALTER TABLE PERFORMS ADD FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID) ON DELETE CASCADE;
ALTER TABLE PERFORMS ADD FOREIGN KEY(SERVICES_NAME) REFERENCES SERVICES(S_NAME);
INSERT INTO CUSTOMER VALUES('00001','ATHARV','','TALNIKAR','INDIA','Atharvt@gmail.com');
INSERT INTO CUSTOMER VALUES('00002','HRISHI','','BADVE ','INDIA','hrishib@gmail.com');
INSERT INTO CUSTOMER VALUES('00003','AAYUSH','SATISH','SHAH','INDIA','aayushss@gmail.com');
INSERT INTO CUSTOMER VALUES('00004','KIRAN','','P','INDIA','kiranp@gmail.com');
INSERT INTO CUSTOMER VALUES('00005','KANISHK','','SINGH','INDIA','kanishks@gmail.com');
INSERT INTO EMPLOYEE VALUES('E0001','ROHIT',20000);
INSERT INTO EMPLOYEE VALUES('E0002','SHREYAS',20000);
INSERT INTO EMPLOYEE VALUES('E0003','RISHAB',50000);
INSERT INTO EMPLOYEE VALUES('E0004','SALMAN',60000);
INSERT INTO EMPLOYEE VALUES('E0005','JEEVANA',30000);
INSERT INTO EMPLOYEE VALUES('E0006','MALAVIKKA',50000);
INSERT INTO EMPLOYEE VALUES('E0007','ANISH',70000);
INSERT INTO EMPLOYEE VALUES('E0008','AMAN',70000);
ALTER TABLE EMPLOYEE ADD SUPERVISOR_ID VARCHAR(5);
ALTER TABLE EMPLOYEE ADD FOREIGN KEY(SUPERVISOR_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID);
ALTER TABLE EMPLOYEE ADD BRANCH_ID VARCHAR(5);
ALTER TABLE EMPLOYEE ADD FOREIGN KEY(BRANCH_ID) REFERENCES HOTEL_BRANCH(BRANCH_ID);
UPDATE EMPLOYEE SET SUPERVISOR_ID = 'E0004' WHERE SALARY=20000;
UPDATE EMPLOYEE SET SUPERVISOR_ID = 'E0003' WHERE SALARY=30000;
INSERT INTO HOTEL_BRANCH VALUES('B0001','JW MARRIOT','WHITEFIELD');
INSERT INTO HOTEL_BRANCH VALUES('B0002','JW MARRIOT','SARJAPUR');
UPDATE EMPLOYEE SET BRANCH_ID = 'B0001';
INSERT INTO SERVICES VALUES('ACCOUNTS','E0004');
INSERT INTO SERVICES VALUES('STEWARDS','E0003');
INSERT INTO SERVICES VALUES('KITCHEN','E0003');
INSERT INTO SERVICES VALUES('SECURITY','E0005');
INSERT INTO SERVICES VALUES('HOUSEKPNG','E0004');
UPDATE SERVICES SET MANAGER_ID = 'E0006' WHERE S_NAME='HOUSEKPNG';
UPDATE SERVICES SET MANAGER_ID = 'E0007' WHERE S_NAME='KITCHEN';
UPDATE SERVICES SET MANAGER_ID = 'E0008' WHERE S_NAME='SECURITY';
UPDATE EMPLOYEE SET BRANCH_ID = 'B0001';
INSERT INTO PERFORMS VALUES(8,'E0001','ACCOUNTS');
INSERT INTO PERFORMS VALUES(8,'E0002','ACCOUNTS');
INSERT INTO PERFORMS VALUES(12,'E0003','STEWARDS');
INSERT INTO PERFORMS VALUES(14,'E0005','STEWARDS');
INSERT INTO PERFORMS VALUES(10,'E0004','ACCOUNTS');
INSERT INTO PERFORMS VALUES(13,'E0006','HOUSEKPNG');
INSERT INTO PERFORMS VALUES(8,'E0007','KITCHEN');
INSERT INTO PERFORMS VALUES(15,'E0008','SECURITY');
INSERT INTO ROOM VALUES('R0001','TWIN A/C',2000,'B0001');
INSERT INTO ROOM VALUES('R0002','TWIN A/C',2000,'B0001');
INSERT INTO ROOM VALUES('R0003','TWIN A/C',2000,'B0001');
INSERT INTO ROOM VALUES('R0004','TWIN A/C',2000,'B0001');
INSERT INTO ROOM VALUES('R0005','TWIN A/C',2000,'B0001');
INSERT INTO ROOM VALUES('R0011','TWIN',1500,'B0001');
INSERT INTO ROOM VALUES('R0012','TWIN',1500,'B0001');
INSERT INTO ROOM VALUES('R0013','TWIN',1500,'B0001');
INSERT INTO ROOM VALUES('R0014','TWIN',1500,'B0001');
INSERT INTO ROOM VALUES('R0015','TWIN',1500,'B0001');
INSERT INTO ROOM VALUES('R0021','FAMILY A/C',3500,'B0001');
INSERT INTO ROOM VALUES('R0022','FAMILY A/C',3500,'B0001');
INSERT INTO ROOM VALUES('R0023','FAMILY A/C',3500,'B0001');
INSERT INTO ROOM VALUES('R0031','FAMILY',2700,'B0001');
INSERT INTO ROOM VALUES('R0032','FAMILY',2700,'B0001');
INSERT INTO ROOM VALUES('R0033','FAMILY',2700,'B0001');
INSERT INTO ROOM VALUES('R1001','TWIN A/C',2000,'B0002');
INSERT INTO ROOM VALUES('R1002','TWIN A/C',2000,'B0002');
INSERT INTO ROOM VALUES('R1003','TWIN A/C',2000,'B0002');
INSERT INTO ROOM VALUES('R1004','TWIN A/C',2000,'B0002');
INSERT INTO ROOM VALUES('R1005','TWIN A/C',2000,'B0002');
INSERT INTO ROOM VALUES('R1011','TWIN',1500,'B0002');
INSERT INTO ROOM VALUES('R1012','TWIN',1500,'B0002');
INSERT INTO ROOM VALUES('R1013','TWIN',1500,'B0002');
INSERT INTO ROOM VALUES('R1014','TWIN',1500,'B0002');
INSERT INTO ROOM VALUES('R1015','TWIN',1500,'B0002');
INSERT INTO ROOM VALUES('R1021','FAMILY A/C',3500,'B0002');
INSERT INTO ROOM VALUES('R1022','FAMILY A/C',3500,'B0002');
INSERT INTO ROOM VALUES('R1023','FAMILY A/C',3500,'B0002');
INSERT INTO ROOM VALUES('R1031','FAMILY',2700,'B0002');
INSERT INTO ROOM VALUES('R1032','FAMILY',2700,'B0002');
INSERT INTO ROOM VALUES('R1033','FAMILY',2700,'B0002');
ALTER TABLE ROOM ADD STATUS VARCHAR(10) DEFAULT 'AVAILABLE' CHECK (STATUS IN('OCCUPIED','AVAILABLE','BOOKED'));	
UPDATE ROOM SET STATUS='AVAILABLE';
UPDATE ROOM SET STATUS='BOOKED' WHERE ROOM_NO LIKE '____1';
UPDATE ROOM SET STATUS='OCCUPIED' WHERE ROOM_NO LIKE '____3';
INSERT INTO RESERVATION VALUES('PNR01','2020-01-01','2020-01-05','00001','R0015');
INSERT INTO FACILITIES VALUES('BANQUET HALL',2000);
INSERT INTO FACILITIES VALUES('INDOOR SPORTS',250);
INSERT INTO FACILITIES VALUES('SWIMMING POOL',300);
INSERT INTO FACILITIES VALUES('PARTY ROOM',1500);
INSERT INTO FACILITIES VALUES('TENNIS',500);
INSERT INTO FACILITIES VALUES('SQUASH',300);
INSERT INTO FACILITIES VALUES('BBQ',750);
INSERT INTO USES_FACILITIES VALUES('00002','SWIMMING POOL',1);
INSERT INTO USES_FACILITIES VALUES('00002','BANQUET HALL',6);
INSERT INTO USES_FACILITIES VALUES('00002','BBQ',2);
INSERT INTO USES_FACILITIES VALUES('00001','INDOOR SPORTS',2);
INSERT INTO USES_FACILITIES VALUES('00003','INDOOR SPORTS',3);   