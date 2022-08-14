create table examples(
  
  example_id serial PRIMARY KEY,
  first_name varchar(20),
  last_name varchar(20)
);

alter table examples
add column email varchar(20) unique;


alter table examples
add column nationality varchar(15),
add column age int not null;

ALTER TABLE examples
ALTER COLUMN nationality type varchar(3);

INSERT INTO examples (example_id, first_name, last_name, email, nationality, age)
VALUES (1, 'Jack', 'Bauer', 'Jbauer@gmail.com', 'USA', 56), (2, 'John', 'Cena', 'ycantcme36@gmail.com', 'IND', 40), (3, 'Ford', 'Mustang', 'fordgt@yahoo.com', 'UK', 78);


select * from examples;

UPDATE examples
set email = 'Jack12@gmail.com'
where example_id = 1;

select * from examples;

-- To delete all the rows from the table at once!

delete from examples;
select * from examples;