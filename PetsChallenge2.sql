create table owners(
  
  id serial primary key,
  first_name varchar(20),
  last_name varchar(20),
  city varchar(20),
  state char(2)
  
);

create table pets(

  pet_id serial primary key,
  species varchar(20),
  full_name varchar(20),
  age int not null,
  owner_id int references owners (id)
);

alter table owners
add column email varchar(30) unique;
select * from owners;

alter table owners
alter column last_name type varchar(25);

INSERT INTO owners(first_name, last_name, city, state, email)
values ('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'), 
('Emma', 'Johnson', 'Seattle', 'WA', 'emmajohnson@gmail.com'),
('Olivia', 'Brown', 'San Francisco', 'CA', 'Olibrown@gmail.com'),
('Sample', 'Steve', 'Ranger', 'MP', 'Samplesteve@gmail.com'),
('John', 'Cena', 'Pokemon', 'NZ', 'cenajohn@gmail.com');

INSERT INTO pets(species, full_name, age, owner_id)
VALUES ('Dog', 'Rex', 6, 1),
('Cat', 'sweevi', 8, 3),
('Fish', 'Seu', 2, 4);

select * from pets;

UPDATE pets
SET age = 3
where full_name = 'Rex';

select * from owners;
select * from pets;

-- Delete from owners
-- where first_name = 'Sample';
--select * from owners;