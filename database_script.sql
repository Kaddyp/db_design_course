-- Connect to MySQL and create database
CREATE DATABASE IF NOT EXISTS edu_course_db;
USE edu_course_db;


-- Category table
CREATE TABLE IF NOT EXISTS Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Course table
CREATE TABLE IF NOT EXISTS Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    instructor VARCHAR(255)
);


-- Junction table for the many-to-many relationship
CREATE TABLE IF NOT EXISTS CourseCategory (
    course_id INT,
    category_id INT,
    PRIMARY KEY (course_id, category_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);