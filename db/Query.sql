CREATE DATABASE `AIRFLYING` DEFAULT CHARACTER SET utf8 ;
USE AIRFLYING;


CREATE TABLE ADMIN(
	ID VARCHAR(30) PRIMARY KEY,
    PASSWD VARCHAR(30) NOT NULL,
    NAME VARCHAR(15) NOT NULL
);

CREATE TABLE MEMBER(
	ID VARCHAR(30) PRIMARY KEY,
    PASSWD VARCHAR(30) NOT NULL,
    NAME VARCHAR(15) NOT NULL,
    GENDER CHAR(4) NOT NULL,
    PHONE CHAR(13) NOT NULL,
    BIRTH DATE,
    DATE TIMESTAMP DEFAULT NOW()
);

insert into member values ('ji970', '1234', 'jieun', 'F', '010-8462-5892', '1997-03-22', now());
insert into member values ('ji971', '1234', 'apple', 'M', '010-8496-5692', '1997-05-12', now());

CREATE TABLE AIRPORT_INFO (
	PORT_CODE VARCHAR(3) not null,
    ENAME VARCHAR(30) not null,
    KNAME VARCHAR(30) not null
);



create table internationalFlight(
	id int NOT NULL AUTO_INCREMENT,
    airline varchar(20) not null, 
    airport varchar(30) not null, /*기준*/
    city varchar(30) not null,
	iotype char(3) not null,
    flight_num varchar(15) not null,
    stdate varchar(30) not null,
    eddate varchar(30) not null,
	time char(4) not null,
    edtime char(4) not null default '0000',
    mon char(1) not null,
    tue char(1) not null,
    wed char(1) not null,
    thu char(1) not null,
    fri char(1) not null,
    sat char(1) not null,
    sun char(1) not null,
    primary key(id)
);


create table domesticFlight (
	d_id int NOT NULL AUTO_INCREMENT,
    d_airline varchar(20) not null,
    start_city varchar(30) not null,
    end_city varchar(30) not null,
    iotype char(3) not null default 'out',
    d_sttime char(4),
    d_edtime char(4),
    d_stdate varchar(30) not null,
    d_eddate varchar(30) not null,
    d_flightnum varchar(15) not null,
    d_mon char(1) not null,
    d_tue char(1) not null,
    d_wed char(1) not null,
    d_thu char(1) not null,
    d_fri char(1) not null,
    d_sat char(1) not null,
    d_sun char(1) not null,
    primary key(d_id)
);

select * from domesticflight;
alter table domesticflight modify column d_flightnum varchar(15) not null  after iotype;
alter table domesticflight modify column d_sttime char(4) not null after d_eddate;
alter table domesticflight modify column d_edtime char(4) not null after d_sttime;
alter table domesticflight modify column d_id int not null;
alter table domesticflight drop column d_id;
alter table domesticflight add column I_D char(1) not null default 'D';

select * from internationalflight;
alter table internationalflight modify column id int not null;
alter table internationalflight drop column id;
alter table internationalflight add column I_D char(1) not null default 'I';



select * from admin;
select * from airport_info;
select * from internationalFlight;
select count(*) from internationalflight;
select * from domesticFlight;
select count(*) from domesticflight;

ALTER TABLE AIRPORT_INFO ADD PRIMARY KEY(PORT_CODE);
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'NKM';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'NMG';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'JFK';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'DFW';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'DWF';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'DIA';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'DTW';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ZGC';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'FCO';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ROM';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'OEY';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'XXN';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'RIO';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'MBC';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'TOJ';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'DDJ';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'MMA';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'MEB';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'MRY';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'SDA';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'BAK';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'VBS';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'VBS';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'DWN';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'MHR';
UPDATE AIRPORT_INFO SET KNAME='삿보로-오카다마' WHERE PORT_CODE = 'OKD'; 
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'SUW';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'KSW';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'SIA';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'BFR';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'CHI';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'LUK';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'AZI';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ACY';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'PDK';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ADJ';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ESB';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ODM';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'ILN';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'IKN';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'RJO';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'JKT';
UPDATE AIRPORT_INFO SET KNAME='치앙라이' WHERE PORT_CODE = 'CEI'; 
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'SHP';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'CKT';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'UMW';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'CLD';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'IAI';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'PKO';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'YTO';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'PAR';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'PNE';
DELETE FROM AIRPORT_INFO WHERE PORT_CODE = 'VIT';

ALTER TABLE AIRPORT_INFO DROP PRIMARY KEY;
ALTER TABLE AIRPORT_INFO ADD PRIMARY KEY(KNAME);

ALTER TABLE internationalflight ADD constraint FK
FOREIGN KEY(AIRPORT) 
references AIRPORT_INFO(KNAME);

ALTER TABLE internationalflight ADD constraint FK2
FOREIGN KEY(CITY) 
references AIRPORT_INFO(KNAME);

ALTER TABLE domesticFlight ADD constraint FK
FOREIGN KEY(START_CITY) 
references AIRPORT_INFO(KNAME);

ALTER TABLE domesticFlight ADD constraint FK4
FOREIGN KEY(end_CITY) 
references AIRPORT_INFO(KNAME);

/* 운행 테이블 합치기*/
select * from internationalflight union select * from domesticflight;
INSERT ignore into internationalflight select * from domesticflight;
select * from internationalflight where I_D = 'D';
select count(*) from internationalflight;
drop table domesticflight;
rename table internationalflight to flight;
select * from flight;
select count(*) from flight;




desc flight;
alter table flight add column id int primary key AUTO_INCREMENT first;
ALTER TABLE flight ADD constraint FK
FOREIGN KEY(airport) 
references AIRPORT_INFO(KNAME);

ALTER TABLE flight ADD constraint FK2
FOREIGN KEY(city) 
references AIRPORT_INFO(KNAME);

create table wish_list (
	mem_id varchar(30) not null,
    flight_id int not null,
    add_date TIMESTAMP DEFAULT NOW()
);
desc wish_list;

ALTER TABLE wish_list ADD constraint FK3
FOREIGN KEY(mem_id) 
references member(id);

ALTER TABLE wish_list ADD constraint FK4
FOREIGN KEY(flight_id) 
references flight(id);

alter table wish_list add primary key(mem_id, flight_id);
insert into wish_list(mem_id, flight_id) values('ji970', 1);
select * from wish_list;


create table city(
	city_name varchar(20) primary key,
    city_file varchar(20),
    city_IO char(3) default 'out'
);

insert into city values('KotaKinabalu', 'kota.jpg', 'in');
insert into city values('New York', 'newyork.jpg', 'in');
insert into city values('Da Nang', 'danang.jpg', 'in');
insert into city(city_name, city_file) values
	('Bei Jing', 'bookkeong.jpg'), ('Los Angeles', 'la.jpg'), 
    ('Shang Hai', 'sanghae.jpg'), ('Chicago', 'sikago.jpg'), 
    ('Vaticanae', 'vatikan.jpg'), ('Venice', 'venis.jpg');
    

select * from city;
select * from flight;


select left(stdate, 10) from flight;
SET SQL_SAFE_UPDATES = 0;

update flight set stdate = left(stdate, 10);
update flight set eddate = left(eddate, 10);
alter table flight modify column stdate date not null;
alter table flight modify column eddate date not null;

alter table flight modify column time time not null;

