DROP TABLE IF EXISTS Client, University, Accomodation, Job, City, Own, Teach, Offer;
DROP TYPE IF EXISTS role;

CREATE TYPE role as ENUM ('admin', 'student', 'teacher', 'Advertiser');

CREATE TABLE city(
IDcity text NOT NULL PRIMARY KEY,
Country text
);

CREATE TABLE client(
lastName text,
firstName text,
country text,
email text,
passwd text,
CONSTRAINT PK_client PRIMARY KEY (email),
CONSTRAINT FK_city FOREIGN KEY (City) REFERENCES City(IDcity)
);


CREATE TABLE University(
IDuniv int NOT NULL PRIMARY KEY,
Name text,
City text,
Address text,
CONSTRAINT FK_City FOREIGN KEY (City) REFERENCES City(IDcity)
);

CREATE TABLE accomodation(
IDacc int NOT NULL PRIMARY KEY,
City text,
Address text,
Price int,
Type text,
NbRoom int,
Pictures text,
Availability date,
CONSTRAINT FK_City FOREIGN KEY (City) REFERENCES City(IDcity)
);

CREATE TABLE Job(
IDjob int NOT NULL PRIMARY KEY,
Company text,
City text,
Description text,
CONSTRAINT FK_City FOREIGN KEY (City) REFERENCES City(IDcity)
);

CREATE TABLE Own(
IDcli int,
IDacc int,
CONSTRAINT FK_Client FOREIGN KEY (IDcli) REFERENCES Client(IDcli),
CONSTRAINT FK_Accomodation FOREIGN KEY (IDacc) REFERENCES Accomodation(IDacc)
);

CREATE TABLE Teach(
IDcli int,
IDuniv int,
CONSTRAINT FK_Client FOREIGN KEY (IDcli) REFERENCES Client(IDcli),
CONSTRAINT FK_Uniersity FOREIGN KEY (IDuniv) REFERENCES University(IDuniv)
);

CREATE TABLE Offer(
IDcli int,
IDjob int,
CONSTRAINT FK_Client FOREIGN KEY (IDcli) REFERENCES Client(IDcli),
CONSTRAINT FK_Job FOREIGN KEY (IDjob) REFERENCES Job(IDjob)
);
