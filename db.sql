DROP TABLE IF EXISTS job, placePhotoComment, placeToVisit, subject, university, client, city;



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

CREATE TABLE placeToVisit(
	idPlace int,
	title varchar(70),
	city varchar(20),
	description text,
	CONSTRAINT PK_placeToVisit PRIMARY KEY (idPlace),
	CONSTRAINT FK_city FOREIGN KEY (city) REFERENCES city(idcity)
);

CREATE TABLE placePhotoComment(
	idPhoto text,
	idPlace int,
	email text,
	comment text,
	rating decimal,
	CONSTRAINT PK_placePhotoComment PRIMARY KEY(idPhoto),
	CONSTRAINT FK_placeToVisit FOREIGN KEY(idPlace) REFERENCES placeToVisit(idPlace),
	CONSTRAINT FK_client FOREIGN KEY(email) REFERENCES client(email)
);

CREATE TABLE job(
	idjob int,
	title text,
	email text,
	company varchar(50),
	city text,
	salary int CHECK (salary>0),
	description text,
	CONSTRAINT PK_jo PRIMARY KEY (idjob),
	CONSTRAINT FK_client FOREIGN KEY (email) REFERENCES client(email),
	CONSTRAINT FK_city FOREIGN KEY (city) REFERENCES city(idcity)
);

insert into city
	values ('Vilnius','Lithuania', 'lorem ipsum de la mort qui tue');

/*insert into city
	values ('Vilnius', 'Italy', 'Florence is the capital city of the Italian region of Tuscany', 4);*/

insert into city
	values ('Lille', 'France', 'Lille is a city of the north of France');

insert into client
	values ('Devassine', 'Alexandre','Lille', 'devassia@univ-lille1.fr', '1234' );
insert into client
	values ('toto', 'titi', 'Vilnius', 'toto@g.g', '123456789');

/*insert into client
	values ('Gerard', 'Cyril', 'Lille', 'gerardcyril@univ-lille1.fr', '123');

insert into client
	values ('Gerard', 'Cyril', 'Lille', 'gerardcyriluniv-lille1.fr', '123456');*/

insert into university
	values (01,'VGTU', 'Vilnius', 'Saulėtekio al. 11, Vilnius 10221');

/*insert into university
	values (02, 'IUT A', 'Florence', 'Avenue Paul Langevin, 59653 Villeneuve-d''Ascq, France');*/

/*insert into subject
	values (101, 'erasmus website', 'gerardcyril@univ-lille1.fr', 30, 1, '2017-03-03','We make a site for students erasmus');*/

insert into subject
	values (101, 'erasmus website', 'devassia@univ-lille1.fr', 30, 1, '2017-03-03','We make a site for students erasmus');

/*insert into placeToVisit
	values (1001, 'Cathedral Basilica of St Stanislaus and St Vladislav', 'Florence', 'It is situated in Vilnius Old Town, just off of Cathedral Square.');*/

insert into placeToVisit
	values (1001, 'Cathedral Basilica of St Stanislaus and St Vladislav', 'Vilnius', 'It is situated in Vilnius Old Town, just off of Cathedral Square.');

insert into placeToVisit
	values (1002, 'Eiffel tower', 'Lille', 'big tower');

/*insert into placePhotoComment
	values ('http://www.lithuania.travel/en-gb/attractions/vilnius-cathedral/17149', 1002, 'devassia@univ-lille1.fr', 'beautiful!!');

insert into placePhotoComment
	values ('http://www.lithuania.travel/en-gb/attractions/vilnius-cathedral/17149', 1001, 'gerardcyril@univ-lille1.fr', 'beautiful!!');*/

insert into placePhotoComment
	values ('mypic.png', 1001, 'devassia@univ-lille1.fr', 'beautiful!!', 4.5);

insert into placePhotoComment
	values ('urpic.png', 1001, 'devassia@univ-lille1.fr' , ' this monument is magic', 3.4);

insert into placePhotoComment
	values ('picpic.png', 1001, 'devassia@univ-lille1.fr', 'whooah', 4.8);

insert into placePhotoComment
	values ('picpoc.png', 1002, 'devassia@univ-lille1.fr', 'whooah', 1);

/*insert into job
	values(1501, 'Trainee', 'gerardcyril@univ-lille1.fr', 'Microsoft', 'Vilnius', 5, 'We need someone to make coffee');

insert into job
	values(1501, 'Trainee', 'devassia@univ-lille1.fr', 'Microsoft', 'Florence', 5, 'We need someone to make coffee');

insert into job
	values(1501, 'Trainee', 'devassia@univ-lille1.fr', 'Microsoft', 'Vilnius', 0, 'We need someone to make coffee');*/

insert into job
	values(1501, 'Trainee', 'devassia@univ-lille1.fr', 'Microsoft', 'Vilnius', 5, 'We need someone to make coffee');


-- Average by place
select idPlace,avg(rating) from placePhotoComment group by  idPlace;

select rating from placePhotoComment;

-- Average by city grrrrrrrrrrrrr plzzzzzzz
select distinct city, avg(placePhotoComment.rating) from placePhotoComment, placeToVisit group by placephotocomment.idPlace, city;

