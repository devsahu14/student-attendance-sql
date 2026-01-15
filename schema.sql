-- Create Database
CREATE DATABASE student_attendance_db;
USE student_attendance_db;

-- Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    branch VARCHAR(50)
);

-- Courses Table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

-- Attendance Table
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
