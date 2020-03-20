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

create table credit (
	id				int				primary key auto_increment,
    actorID			int				not null,
    movieID			int				not null,
    role			varchar(25)		not null,
    FOREIGN KEY (actorID) REFERENCES actor(id),
	FOREIGN KEY (movieID) REFERENCES movie(id),
    CONSTRAINT std_actor unique (actorID, movieID)
    );
    
insert into movie (id, title, year, rating, director) 
	values (1, 'Indiana Jones and the Last Crusade', 1989, 8.2, 'Steven Spielberg');
insert into movie (id, title, year, rating, director)
	values (2, 'The Pianist', 2002, 8.5, 'Roman Polanski');
    
insert into actor (id, firstName, lastName, gender, birthDate)
	values (1, 'Harrison', 'Ford', 'Male', '1942-07-13');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (2, 'Adrian', 'Brody', 'Male', '1973-04-14');
    
insert into credit (id, actorID, movieID, role)
	values (1, 1, 1, 'Indiana Jones');
insert into credit (id, actorID, movieID, role)
	values (2, 2, 2, 'Wladyslaw Szpilman');

