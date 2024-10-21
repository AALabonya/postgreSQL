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
