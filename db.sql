DROP TABLE if exist Client, University, Accomodation, Job, City, Own, Teach, Offer;
DROP TYPE if exist role;
CREATE TYPE role as ENUM ('admin', 'student', 'teacher', 'Advertiser');

CREATE TABLE Client(
ID.cli int NOT NULL PRIMARY KEY,
LastName text,
FirstName text,
City text FOREIGN KEY REFERENCES City(ID.city),
Email text,
Role role,
passwd varchar(15),
);


CREATE TABLE University(
ID.univ int NOT NULL PRIMARY KEY,
Name text,
City text FOREIGN KEY REFERENCES City(ID.city),
Address text,
);

CREATE TABLE Accomodation(
ID.acc int NOT NULL PRIMARY KEY,
City text,
Address text,
City text FOREIGN KEY REFERENCES City(ID.city),
Price int,
Type text,
NbRoom int,
Picture ???,
Availability date,
);

CREATE TABLE Job(
ID.job int NOT NULL PRIMARY KEY,
Company text,
City text FOREIGN KEY REFERENCES City(ID.city),
Description text
);

CREATE TABLE City(
ID.city text,
Country text,
);

CREATE TABLE Own(
ID.cli FOREIGN KEY REFERENCES Client(ID.cli),
ID.acc FOREIGN KEY REFERENCES Accomodation(ID.acc),
);

CREATE TABLE Teach(
ID.cli FOREIGN KEY REFERENCES Client(ID.cli),
ID.univ FOREIGN KEY REFERENCES University(ID.univ),
);

CREATE TABLE Offer(
ID.cli FOREIGN KEY REFERENCES Client(ID.cli),
ID.job FOREIGN KEY REFERENCES Job(ID.job),
);