create table directors(
  director_id serial PRIMARY KEY,
  first_name varchar(20),
  last_name varchar(20) not null,
  DOB date,
  nationality varchar(15)
  );

select * from directors;

create table actors(
  actor_id serial primary key,
  first_name varchar(20),
  last_name varchar(20) not null,
  gender char(1),
  date_of_birth date  
  );
  
select * from actors;

create table movies(
  movie_id serial primary key,
  movie_name varchar(30) not null,
  movie_lang varchar(15),
  age_certificate varchar(5),
  movie_length int,
  release_date date,
  actor_id int references actors (actor_id)
  );
  
select * from movies;

create table movie_revenues(

  movie_revenue_id serial primary key,
  movie_id int references movies (movie_id)
  
  );

select * from movie_revenues;

DROP TABLE movie_revenues;

select * from movie_revenues; --This deletes the complete table 
