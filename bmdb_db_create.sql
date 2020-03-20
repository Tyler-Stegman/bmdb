drop database if exists bmdb;
create database bmdb;
use bmdb;

create table movie (
	id				int				primary key auto_increment,
    title			varchar(100)	not null,
    year			int				not null,
    rating			varchar(5)		not null,
    director		varchar(50)		not null
    );
    
create table actor (
	id				int				primary key auto_increment,
    firstName		varchar(25)		not null,
    lastName		varchar(25)		not null,
    gender			varchar(6)		not null,
    birthDate		date			not null
    );

-- example for above: CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate) --  if you don't want an actor to repeat multiple times.

create table credit (
	id				int				primary key auto_increment,
    actorID			int				not null,
    movieID			int				not null,
    role			varchar(25)		not null,
    FOREIGN KEY (actorID) REFERENCES actor(id),
	FOREIGN KEY (movieID) REFERENCES movie(id),
    CONSTRAINT act_mov unique (actorID, movieID)
    );
    
insert into movie (id, title, year, rating, director) 
	values (1, 'Indiana Jones and the Last Crusade', 1989, 'PG-13', 'Steven Spielberg');
insert into movie (id, title, year, rating, director)
	values (2, 'The Pianist', 2002, 'R', 'Roman Polanski');
    
insert into actor (id, firstName, lastName, gender, birthDate)
	values (1, 'Harrison', 'Ford', 'Male', '1942-07-13');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (2, 'Adrian', 'Brody', 'Male', '1973-04-14');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (3, 'John', 'Rhys-Davies', 'Male', '1944-05-05');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (4, 'Thomas', 'Kretschmann', 'Male', '1962-08-08');
    
insert into credit (actorID, movieID, role)
	values (1, 1, 'Indiana Jones');
insert into credit (actorID, movieID, role)
	values (2, 2, 'Wladyslaw Szpilman');
insert into credit (actorID, movieID, role)
	values (3, 1, 'Sallah');
insert into credit (actorID, movieID, role)
	values (4, 2, 'Captain Wilm Hosenfeld');

