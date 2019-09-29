create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL ,
	last_name VARCHAR(50) NOT NULL ,
	email VARCHAR(100) NOT NULL ,
	gender VARCHAR(7) NOT NULL ,
	date_of_birth DATE NOT NULL ,
	country_of_birth VARCHAR(50),
	car_id BIGINT REFERENCES car (id),
	UNIQUE(car_id)
);
insert into car (id, make, model, price) values (1, 'Toyota', 'RAV4', '18067.02');
insert into car (id, make, model, price) values (2, 'Cadillac', 'Escalade ESV', '99002.22');
insert into car (id, make, model, price) values (3, 'Nissan', 'Versa', '69120.35');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Alf', 'Christofol', 'achristofol0@macromedia.com', 'Male', '2018/07/10', 'Estonia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Ced', 'McGebenay', 'cmcgebenay7@geocities.jp', 'Male', '2018/04/14', 'Ukraine');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Claudio', 'Delea', 'cdelea8@blogs.com', 'Male', '2018/12/26', 'Costa Rica');