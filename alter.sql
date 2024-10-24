-- Active: 1729443357593@@127.0.0.1@5432@test

-- CREATE TABLE person(
--     id serial PRIMARY KEY,
--     user_name VARCHAR(25) NOT NULL,
--     age INTEGER CHECK (age>=18)
-- )
-- FOR INSERT 
-- INSERT INTO person (id, user_name,age) VALUES (7,'LABONYA', 26)
SELECT * FROM person

-- add table 
ALTER TABLE person
 ADD COLUMN email VARCHAR(25) DEFAULT 'default@mail.com' NOT NULL;
-- delete table 
ALTER TABLE person
DROP COLUMN email;


-- insert column 
 INSERT INTO person values(9, 'CHECK', 55, 'test@mail.com')

--  kivabe column ar name rename kora jay 
ALTER Table person 
 RENAME COLUMN age to user_age;

-- varchar(25) jodi aro barate cai 
 ALTER Table person 
 ALTER COLUMN user_name TYPE VARCHAR(50);

 -- KIVABE COLUMN A CONSTRAINTS ADD KORA JAY 
ALTER TABLE person 
ALTER COLUMN user_age SET NOT NULL;

 -- KIVABE COLUMN A CONSTRAINTS remove KORA JAY 
ALTER TABLE person 
ALTER COLUMN user_age drop NOT NULL;

 -- UNIQUE key jodi create korte cai
ALTER TABLE person 
ADD constraint unique_person_user_age UNIQUE(user_age);

-- jokhn ami drop korbo tokhn full table ta remove hoye jabe
DROP TABLE person;
-- jokhn ami caibo stucture thakbe sudu row or value gula thakbe na tokhn ami TRUNCATE use korbo
TRUNCATE TABLE person3;

-- select muloto use hoi data read korar jonno . kono table ar kono data dekbo or sob data dekbo .
-- Select use hoi data query korar jonno.select a clause use kore condition korte pari, sorting korte pari, 
-- aro onk gula kaj korte pari
