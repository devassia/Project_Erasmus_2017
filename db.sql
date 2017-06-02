<<<<<<< HEAD
﻿DROP TABLE IF EXISTS job;
DROP TABLE IF EXISTS commentplace;
=======
﻿DROP TABLE IF EXISTS job CASCADE;
DROP TABLE IF EXISTS placephotocomment;
DROP TABLE IF EXISTS placetovisit;
>>>>>>> 535e014cdc2727ba9b51d498d2c4ad3c79cf8118
DROP TABLE IF EXISTS subject;
DROP TABLE IF EXISTS university CASCADE;
DROP TABLE IF EXISTS client CASCADE;
DROP TABLE IF EXISTS city CASCADE;

CREATE TABLE city(
	idcity text NOT NULL PRIMARY KEY,
	country text,
	description text
);

CREATE TABLE client(
	lastName varchar(20),
	firstName varchar(20),
	city varchar(20),
	email text CHECK (email LIKE '%@%.%') PRIMARY KEY,
	passwd varchar(30) CHECK (passwd LIKE '%____%'),
	img text
);

CREATE TABLE university(
	iduniv int NOT NULL PRIMARY KEY,
	name varchar(50),
	city varchar(20),
	address text,
	CONSTRAINT FK_City FOREIGN KEY (city) REFERENCES city(idcity)
);

CREATE TABLE subject(
	idSub int NOT NULL PRIMARY KEY,
	title varchar(50),
	email text,
	ects int,
	semesters int,
	dateofSub date,
	description text,
	CONSTRAINT FK_client FOREIGN KEY (email) REFERENCES client(email)
);


CREATE TABLE commentplace(
	email text,
	img text,
	comment text,	
	rating decimal,
	city text,
	CONSTRAINT PK_commentplace PRIMARY KEY(city),
	CONSTRAINT FK_client FOREIGN KEY(email) REFERENCES client(email)
);

CREATE TABLE job(
	title text,
	email text,
	company varchar(50),
	city text,
	salary int CHECK (salary>0),
	description text,
<<<<<<< HEAD
	img text,
	CONSTRAINT PK_job PRIMARY KEY (title),
	CONSTRAINT FK_client FOREIGN KEY (email) REFERENCES client(email)
=======
	CONSTRAINT PK_job PRIMARY KEY (idjob),
	CONSTRAINT FK_client FOREIGN KEY (email) REFERENCES client(email),
	CONSTRAINT FK_city FOREIGN KEY (city) REFERENCES city(idcity)
>>>>>>> 535e014cdc2727ba9b51d498d2c4ad3c79cf8118
);
