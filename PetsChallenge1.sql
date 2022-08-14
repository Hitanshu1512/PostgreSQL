create table owners(
  
  id serial primary key,
  first_name varchar(20),
  last_name varchar(20),
  city varchar(20),
  state char(2)
  
);

select * from owners;

create table pets(

  pet_id serial primary key,
  species varchar(20),
  full_name varchar(20),
  age int not null,
  owner_id int references owners (id)
);

select * from pets;

alter table owners
add column email varchar(30) unique;
select * from owners;

alter table owners
alter column last_name type varchar(25);
select * from owners;
