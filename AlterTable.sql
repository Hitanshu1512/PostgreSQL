create table examples(
  
  example_id serial PRIMARY KEY,
  first_name varchar(20),
  last_name varchar(20)
);

select * from examples;

alter table examples
add column email varchar(20) unique;

select * from examples;


alter table examples
add column nationality varchar(15),
add column age int not null;

select * from examples;

ALTER TABLE examples
ALTER COLUMN nationality type varchar(3);


select * from examples;