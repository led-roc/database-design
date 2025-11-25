CREATE DATABASE IF NOT EXISTS university;

USE university;

CREATE TABLE IF NOT EXISTS students(
    id_student INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_Name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    student_from_date DATE NOT NULL,
    address VARCHAR(50) NOT NULL,
    degree VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS subjects(
    id_subject INT PRIMARY KEY,
    subject_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS professors(
	id_professor INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    professor_from_date DATE NOT NULL,
    address VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS course(
    id_course int PRIMARY KEY,
    id_subject INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_subject) REFERENCES subjects(id_subject),
	FOREIGN KEY (id_professor) REFERENCES professors(id_professor)
);

CREATE TABLE IF NOT EXISTS enrollments(
    id_enrrollment INT PRIMARY KEY,
    enrollment_date DATE NOT NULL,
    semester INT NOT NULL,
    id_course INT NOT NULL,
    id_student INT NOT NULL,
    FOREIGN KEY (id_student) REFERENCES students(id_student),
    FOREIGN KEY (id_course) REFERENCES course(id_course)
); 
