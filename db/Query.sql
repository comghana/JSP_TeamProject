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



create table FlightScheduleList(
	id int NOT NULL AUTO_INCREMENT,
    airline varchar(20) not null, 
    airport varchar(30) not null, /*기준*/
    city varchar(30) not null,
	iotype char(3) not null,
    flight_num varchar(15) not null,
    stdate varchar(30) not null,
    eddate varchar(30) not null,
    time int not null,
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
    d_sttime int not null,
    d_edtime int not null,
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

select * from airport_info;
select * from flightschedulelist;
select * from domesticFlight;


rename table FlightScheduleList to internationalFlight;