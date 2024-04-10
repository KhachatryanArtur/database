SQL SERVER MANAGEMENT STUUDIO

https://meet.google.com/hbg-ctqd-dju

--ab loomine
CREATE DATABASE KhachatryanLOGITpv22;
USE KhachatryanLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - ? primaarne võti mis annab unikaalsus
--identity(1,1) -? määrab igaühele oma numbri

--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES
('Ivan', 'Edu', '6784', 'Tallinn', '2023-08-16'),
('Edu', 'Sulle', '234', 'Tartu', '2023-08-16');
SELECT * FROM opilane;
--tabeli ryhmloomine 
CREATE TABLE ryhm(
ryhmId int Primary Key identity(1,1),
ryhmNimetus varchar(20) UNIQUE,
peakond char (3));
SELECT * FROM ryhm
INSERT INTO ryhm(ryhmNimetus, peakond)
VALUES ('LOGITpv22', 'IT');

SELECT * FROM ryhm
SELECT * FROM opilane
--FOREIGN KEY ---> PK tpilaneeises tabelis
ALTER TABLE opilane ADD ryhmId int
--tabeli opilane uuendamine
update opilane SET ryhmId=1;
--FK lisamine opilane tabelisse
ALTER TABLE opilane
ADD FOREIGN KEY (id) REFERENCES ryhm(ryhmId) 

INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp, ryhmId)
VALUES 
('Test', 'Test', '67842312', 'Tallinn', '2023-08-16', 12);
SELECT * FROM opilane;
ALTER TABLE opilane DROP column ruhmid

Create table juhataja(
juhataja int Primary Key Identity(1,1),
eesnimi char(10) unique,
perenimi char(10) unique,
telefon varchar(15));
INSERT INTO juhataja(eesnimi, perenimi, telefon)
VALUES ('Mikhail', 'Agapov', '+37256817858')
SELECT * FROM juhataja
ALTER TABLE opilane ADD ryhmId int
--tabeli opilane uuendamine
update ryhm SET juhataja=1;
--FK lisamine juhataja tabelisse
ALTER TABLE ryhm
ADD FOREIGN KEY (juhataja) REFERENCES juhataja(juhataja) 
INSERT INTO ryhm(ryhmNimetus, peakond, juhataja)
VALUES ('LOGITpv23', 'IT', 1);
SELECT * FROM opilane
SELECT * FROM ryhm
SELECT * FROM juhataja

Create table hinnang(
hinnangId int Primary Key Identity(1,1),
kuupaev date,
opilaneId int,
juhatajaId int,
hinnang text
);
INSERT INTO hinnang(hinnang, kuupaev)
VALUES ('tubli', '2023-08-16')
SELECT * FROM hinnang
ALTER TABLE opilane ADD ryhmId int
--tabeli opilane uuendamine
update hinnang SET juhatajaId=1;
--FK lisamine juhataja tabelisse
ALTER TABLE hinnang
ADD FOREIGN KEY (juhatajaId) REFERENCES juhataja(juhataja)
SELECT * FROM juhataja
SELECT * FROM hinnang
SELECT * FROM opilane
SELECT * FROM ryhm
ALTER TABLE hinnang
ADD FOREIGN KEY (opilaneId) REFERENCES opilane(id)
ALTER TABLE ryhm ADD hinnangId int
--VIIMANE TAABEL EI TÖÖTA