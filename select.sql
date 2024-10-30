-- Active: 1729443357593@@127.0.0.1@5432@test
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    gender CHAR(1),
    grade_level INT,
    admission_date DATE,
    course VARCHAR(100),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(3),
    country VARCHAR(50)
);
INSERT INTO student (student_id, first_name, last_name, age, gender, grade_level, admission_date, course, email, dob, blood_group, country) VALUES
(1, 'John', 'Doe', 16, 'M', 10, '2022-09-01', 'Mathematics', 'john.doe@example.com', '2006-03-12', 'O+', 'USA'),
(2, 'Jane', 'Smith', 17, 'F', 11, '2021-09-01', 'Biology', 'jane.smith@example.com', '2005-07-19', 'A+', 'Canada'),
(3, 'Michael', 'Johnson', 15, 'M', 9, '2023-01-15', 'Physics', 'michael.johnson@example.com', '2007-11-05', 'B+', 'UK'),
(4, 'Emily', 'Davis', 18, 'F', 12, '2020-09-01', 'Chemistry', 'emily.davis@example.com', '2004-05-22', 'AB-', 'Australia'),
(5, 'William', 'Brown', 16, 'M', 10, '2022-02-25', 'History', 'william.brown@example.com', '2006-10-01', 'O-', 'USA'),
(6, 'Sophia', 'Miller', 14, 'F', 9, '2023-09-10', 'Computer Science', 'sophia.miller@example.com', '2008-09-25', 'A-', 'Canada'),
(7, 'James', 'Wilson', 17, 'M', 11, '2021-09-01', 'Mathematics', 'james.wilson@example.com', '2005-04-15', 'B-', 'UK'),
(8, 'Olivia', 'Moore', 18, 'F', 12, '2020-09-01', 'Economics', 'olivia.moore@example.com', '2004-06-30', 'O+', 'Australia'),
(9, 'Liam', 'Taylor', 16, 'M', 10, '2022-09-01', 'Physics', 'liam.taylor@example.com', '2006-12-10', 'B+', 'USA'),
(10, 'Isabella', 'Anderson', 15, 'F', 9, '2023-01-15', 'English', 'isabella.anderson@example.com', '2007-01-20', 'AB+', 'Canada');

-- select every column from student
SELECT * FROM student;

-- ai koyekt field jodi dekte cai 
SELECT age, email,blood_group FROM student;

-- jodi rename korte cai . mane email ase ami take Student Email sihabe dekte cai 
SELECT email as "Student Email",age FROM student;

-- ami chassi first name and last name diye sort kore dekabe 
SELECT * FROM student ORDER BY first_name DESC;

SELECT * FROM student ORDER BY first_name ASC;
SELECT * FROM student ORDER BY age ASC;
SELECT * FROM student ORDER BY age DESC;

SELECT country FROM student ORDER BY country ASC;

-- ami jodi dekte cai UNIQUE country koyta aase
SELECT DISTINCT country FROM student

-- condition ar jonno amra WHERE use kori
SELECT * FROM student 
 WHERE country ='USA'

 --2ta condition ar jonno amra WHERE ,AND  use kori
 SELECT * FROM student 
 WHERE grade_level ='10' AND course='Physics'

  --SELECT student form austlia or from usa
 SELECT * FROM student 
 WHERE country ='USA' OR country ='Australia'


   --SELECT student form austlia or from usa and age is 20
 SELECT * FROM student 
 WHERE (country ='USA' OR country ='Australia') AND age =16

 SELECT * FROM student 
  WHERE email IS NOT NULL

  -- jodi multiple or thake tahole IN keyword use korte pari 

  SELECT * FROM student
  WHERE country IN ('UK','USA','Canada')

    -- jodi ai value('UK','USA','Canada) chara value cai tahole NOT IN keyword use korte pari 
  SELECT * FROM student
  WHERE country NOT IN ('UK','USA','Canada')

  -- ami jodi cai j amk 2004-05-22 ato value theke 2004-06-30 value gula dao tahole between use korbo 
  SELECT * FROM student
  WHERE dob BETWEEN '2004-05-22' and '2004-08-22';
