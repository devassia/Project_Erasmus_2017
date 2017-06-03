DROP TABLE IF EXISTS job CASCADE;
﻿DROP TABLE IF EXISTS commentplace CASCADE;
DROP TABLE IF EXISTS client CASCADE;
﻿DROP TABLE IF EXISTS subject CASCADE;
DROP TABLE IF EXISTS university CASCADE;
DROP TABLE IF EXISTS city CASCADE;

CREATE TABLE city(
	idcity text NOT NULL PRIMARY KEY,
	country text,
	description text,
	img text
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
	name varchar(50) NOT NULL PRIMARY KEY,
	city varchar(20),
	address text,
	img text,
	CONSTRAINT FK_university FOREIGN KEY(city) REFERENCES city(idcity)
);

CREATE TABLE subject(
	title varchar(50),
	email text,
	university text,
	years int,
	description text,
CONSTRAINT PK_subject PRIMARY KEY(title,years),
CONSTRAINT FK_subject FOREIGN KEY(email) REFERENCES client(email),
CONSTRAINT FK_subject2 FOREIGN KEY(university) REFERENCES university(name)
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
	img text,
	CONSTRAINT PK_job PRIMARY KEY (title),
	CONSTRAINT FK_client FOREIGN KEY (email) REFERENCES client(email)

);
