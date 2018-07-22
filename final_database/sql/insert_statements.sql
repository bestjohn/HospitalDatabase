INSERT INTO PATIENT (PA_ID,PA_LNAME,PA_FNAME,PA_BLOODTYPE,PA_DOB,AD_ID,INS_ID,SCRIPT_ID)
VALUES (100001,'Smith','James','+O','1989-03-06',100001,730,240015),
		(100002,'Hart','Ramona','-AB','1999-05-02',100002,522,NULL),
		(100013,'Bayers','Phillip','+A','1950-02-14',100033,610,240250),
		(100047,'Jones','Liam','+B','1973-11-02',100250,225,NULL),
		(101000,'Hart','Romona','+AB','1999-05-02',100015,NULL,NULL);

INSERT INTO MEDICATION (MED_ID, MED_GENERIC, MED_BRAND, MED_SHAPE, MED_COLOR, MED_IMPRINT)
VALUES (239706, 'Fluoxetine', 'Prozac', 'Round','Green/White','E91'),
		(251325, 'Bupropion', 'Wellbutrin', 'Round','White','A102'),
		(290328, 'Citalopram', 'Celexa', 'Round','Pink','IG207'),
		(201234, 'Clonazepam', 'Klonopin', 'Round','White','274'),
		(277801, 'Sertraline', 'Zoloft', 'Round','Pink','IG212');

INSERT INTO PRESCRIPTION (SCRIPT_ID, MED_ID, PA_ID, SCRIPT_DOSE, SCRIPT_DATE, SCRIPT_REFILL, SCRIPT_REASON, EMP_ID)
VALUES (240015,239706,100001,'20mg daily','2017-12-17',2,'Anxiety',234961),
		(240005,251325,100001,'150mg daily','2017-12-17',2,'Depression',234961),
		(240250,277801,100013,'20mg daily','2017-12-17',1,'Depression',229000),
		(237375,239706,100047,'60mg daily','2017-12-17',3,'Anxiety',229000),
		(215092,200006,101001,'20mg daily','2017-12-17',2,'Anxiety',234961);

INSERT INTO EMPLOYEE (EMP_ID,EMP_LNAME,EMP_FNAME,EMP_JOBTYPE,EMP_HIREDATE,EMP_DOB,AD_ID)
VALUES	(134961,'Hodstedtler','Jeremy','DOC','1990-11-21','1965-01-05',100007),
		(122789,'Gaines','Charles','DOC','1999-01-11','1965-01-05',100034),
		(234961,'Silver','Luke','NUR','2011-05-17','1989-03-01',100089),
		(119077,'Simmons','Cherelle','DOC','2015-08-10','1992-10-03',100020),
		(229000,'Clarkson','Stephanie','NUR','1985-06-03','1965-11-05',100150),
		(101011,'Simmons','Al','DOC','2013-10-02','1990-05-13',100020),
		(100910,'Simmons','Cherelle','DOC','2015-08-10','1992-10-03',100020),
		(276191,'Kelman','Lisa','NUR','2013-12-31','1992-09-13',109820),
		(243092,'Way','Kyle','NUR','2015-01-10','1992-05-23',105510),
		(213212,'Farseid','Ali','NUR','2014-02-10','1992-08-04',107300);

INSERT INTO DOCTOR (EMP_ID,DOC_DEPT,DOC_SALARY,DOC_OFFICE_NUM,AD_ID)
VALUES	(134961,'Heart',127000,'A105',057750),
		(122789,'ENT',100000,'A211',057750),
		(119077,'Pathology',115000,'C100',107280),
		(101011,'OPD',110000,'320',099891),
		(100910,'Paediatric Outpatient',120000,'010',NULL);

INSERT INTO NURSE (EMP_ID,UNIT_ID,NURSE_SHIFT,NURSE_HOURLY,NURSE_HRS)
VALUES	(234961,320,'Night',40,36.7),
		(229000,230,'Day',40,24),
		(276191,250,'Day',40,36.7),
		(243092,470,'Night',40,30),
		(213212,490,'Day',40,36);

INSERT INTO INSURANCE (INS_ID,INS_COMPANY,INS_PLAN,INS_COPAY,INS_DEDUCTIBLE)
VALUES	(730,'Anthem Blue Cross Blue Shield','HMO',20,0),
		(522,'Aetna','PPO',20,2000),
		(610,'Cigna','HMO',20,0),
		(225,'Humana','POS',20,800),
		(101,'Kaiser','EPO',20,2000);

INSERT INTO LAB_WORK (LAB_ID,GLUCOSE,MONO,PAP,STOOL,URINALYSIS)
VALUES	(107,'Yes','No','No','Yes','Yes'),
		(125,'Yes','No','No','No','No'),
		(149,'No','Yes','Yes','No','Yes'),
		(199,'No','No','No','Yes','Yes'),
		(210,'Yes','No','No','Yes','Yes');

INSERT INTO UNIT (UNIT_ID,UNIT_TYPE,UNIT_FLOOR)
VALUES	(470,'CCU','4'),
		(490,'Colorectal & Stoma Care','4'),
		(320,'ICU','3'),
		(250,'SCBU','2'),
		(230,'Day Surgery','2');

INSERT INTO VISIT (VISIT_ID,LAB_ID,EMP_ID,PA_ID,UNIT_ID,VISIT_DATE,VISIT_REASON,VISIT_DIAG)
VALUES	(780000,007,229000,100001,490,'2017-10-22','Ache in stomach','Ulcer'),
		(705321,025,119077,100002,470,'2017-01-02','Chest pain','Clogged artery'),
		(601254,NULL,100910,100013,320,'2016-12-10','Car wreck','Brain trauma'),
		(223450,099,243092,100047,490,'2015-09-12','Blood in stool','GI bleed'),
		(123670,NULL,122789,101000,230,'2017-03-31','Altercation with neighbor','Skull fracture, internal bleeding');

INSERT INTO PHARMA_ORDER (ORDER_ID, MED_ID, ORDER_DATE, ORDER_RECEIVED, ORDER_SUPPLYBY,EMP_ID)
VALUES	(145761,239706,'2017-12-10',NULL,'Lilly Research Labs',101011),
		(130970,251325,'2017-11-11','2017-12-01','Capital Wholesale Drug Co.',101011),
		(111777,290328,'2017-09-23','2017-10-01','Covance Labs',134961),
		(120991,277801,'2017-11-15','2017-12-01','Lilly Research Labs',101011),
		(120991,239706,'2017-11-15','2017-12-01','Lilly Research Labs',101011);

INSERT INTO ADDRESS (AD_ID,AD_STREET,AD_CITY,AD_STATE,AD_ZIP)
VALUES	(100001,'4160 MacIntosh Ln','Indianapolis','IN','46202'),
		(100002,'773 Cherub St','Indianapolis','IN','46207'),
		(100250,'293 Phillis Ave','Indianapolis','IN','46226'),
		(100033,'4160 Keystone Rd','Indianapolis','IN','46240'),
		(100015,'3620 Fall Creek Pkwy','Indianapolis','IN','46204'),
		(157750,'45 Sultur Dr','Indianapolis','IN','46204'),
		(100089,'890 River Rd','Indianapolis','IN','46204'),
		(100150,'130 Crescent Ln','Indianapolis','IN','46204'),
		(199891,'720 Willowbrook Pkwy','Indianapolis','IN','46242');

