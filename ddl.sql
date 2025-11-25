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

--- Add data to tables

USE university;

INSERT INTO students (id_student, first_name, last_Name, phone_number, email, student_from_date, address, degree) VALUES
(1, 'John', 'Smith', '555-0101', 'john.smith@uni.edu', '2022-09-01', '123 Maple St', 'Computer Science'),
(2, 'Jane', 'Doe', '555-0102', 'jane.doe@uni.edu', '2022-09-01', '456 Oak Ave', 'Medicine'),
(3, 'Michael', 'Johnson', '555-0103', 'mike.johnson@uni.edu', '2023-01-15', '789 Pine Rd', 'Law'),
(4, 'Emily', 'Davis', '555-0104', 'emily.davis@uni.edu', '2021-09-01', '101 Cedar Ln', 'Architecture'),
(5, 'David', 'Wilson', '555-0105', 'david.wilson@uni.edu', '2022-09-01', '202 Birch Blvd', 'Psychology'),
(6, 'Sarah', 'Brown', '555-0106', 'sarah.brown@uni.edu', '2023-01-15', '303 Elm St', 'Business'),
(7, 'James', 'Miller', '555-0107', 'james.miller@uni.edu', '2021-09-01', '404 Spruce Way', 'Civil Engineering'),
(8, 'Jessica', 'Taylor', '555-0108', 'jess.taylor@uni.edu', '2022-09-01', '505 Willow Dr', 'Biology'),
(9, 'Robert', 'Anderson', '555-0109', 'rob.anderson@uni.edu', '2023-01-15', '606 Aspen Ct', 'Physics'),
(10, 'Linda', 'Thomas', '555-0110', 'linda.thomas@uni.edu', '2021-09-01', '707 Magnolia Pl', 'Chemistry');

INSERT INTO subjects (id_subject, subject_name) VALUES
(1, 'Mathematics'),
(2, 'General Physics'),
(3, 'Organic Chemistry'),
(4, 'World History'),
(5, 'Intro to Programming'),
(6, 'Data Structures'),
(7, 'Database Systems'),
(8, 'Microeconomics'),
(9, 'English Literature'),
(10, 'Art History');

INSERT INTO professors (id_professor, first_name, last_name, phone_number, email, professor_from_date, address) VALUES
(1, 'Alice', 'White', '555-9001', 'alice.white@uni.edu', '2010-08-15', '1 Faculty Lane'),
(2, 'Bob', 'Green', '555-9002', 'bob.green@uni.edu', '2012-05-20', '2 University Dr'),
(3, 'Charlie', 'Black', '555-9003', 'charlie.black@uni.edu', '2015-01-10', '3 Academic Ave'),
(4, 'Diana', 'King', '555-9004', 'diana.king@uni.edu', '2018-09-01', '4 Scholar St'),
(5, 'Edward', 'Scott', '555-9005', 'edward.scott@uni.edu', '2016-03-12', '5 Research Rd'),
(6, 'Fiona', 'Hall', '555-9006', 'fiona.hall@uni.edu', '2019-11-05', '6 Lecture Blvd'),
(7, 'George', 'Adams', '555-9007', 'george.adams@uni.edu', '2011-07-22', '7 Campus Way'),
(8, 'Hannah', 'Baker', '555-9008', 'hannah.baker@uni.edu', '2014-02-14', '8 Mentor Pl'),
(9, 'Ian', 'Clark', '555-9009', 'ian.clark@uni.edu', '2020-08-30', '9 Professor Ct'),
(10, 'Julia', 'Lewis', '555-9010', 'julia.lewis@uni.edu', '2013-10-01', '10 Dean Drive');

INSERT INTO course (id_course, id_subject, id_professor) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 5), 
(7, 7, 1),
(8, 8, 6),
(9, 9, 7),
(10, 10, 8);

INSERT INTO enrollments (id_enrrollment, enrollment_date, semester, id_course, id_student) VALUES
(1, '2023-08-20', 1, 1, 1),
(2, '2023-08-20', 1, 2, 2),
(3, '2023-08-21', 1, 3, 3),
(4, '2023-08-21', 1, 4, 4),
(5, '2023-08-22', 2, 5, 5),
(6, '2023-08-22', 2, 6, 1),
(7, '2023-08-23', 1, 7, 6),
(8, '2023-08-23', 1, 8, 7),
(9, '2023-08-24', 3, 9, 8),
(10, '2023-08-24', 3, 10, 9);


--- Show queries

select * from enrollments

Output:
1	2023-08-20	1	1	1
2	2023-08-20	1	2	2
3	2023-08-21	1	3	3
4	2023-08-21	1	4	4
5	2023-08-22	2	5	5
6	2023-08-22	2	6	1
7	2023-08-23	1	7	6
8	2023-08-23	1	8	7
9	2023-08-24	3	9	8
10	2023-08-24	3	10	9
				


