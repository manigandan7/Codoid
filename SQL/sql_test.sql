-- creating database --
create database test ;
use test;

-- First i am creating student table -- 
CREATE TABLE student (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  email VARCHAR(100),
  city VARCHAR(200)
);  

-- inserting values in to table--
INSERT INTO student (name, age, gender, email, city)
VALUES ('Vijay', 21, 'Male', 'vijay@gmail.com', 'Chennai'),
       ('Suresh', 19, 'Male', 'suresh@gmail.com', 'Chennai'),
       ('Priya', 21, 'Female', 'priya@gmail.com', 'Banglore'),
       ('Preethi', 24, 'Female', 'preethi@gmail.com', 'Madurai'),
       ('Sethu', 25, 'Male', 'sethu@gmail.com', 'Chennai'),
       ('Malathi', 18, 'Female', 'malathi@gmail.com', 'Madurai'),
       ('Vishnu', 22, 'Male', 'vishnu@gmail.com', 'Banglore'),
       ('Varma', 26, 'Male', 'varma@gmail.com', 'Madurai');
       
  
-- Q3 Write a SQL query to Rename the column name.--
-- i am going to rename email column to email_id -- 

ALTER TABLE student RENAME COLUMN email TO email_id;  

-- Q5 How do we use the DISTINCT statement? What are its use?-- 
/*
In below query i am fetching from what are the cities students are comming.	
*/ 

SELECT DISTINCT city FROM student;

/*
What are its use:
The main use of the DISTINCT statement is to remove duplicate rows from the result set of a query

*/

-- Q9 What is Query to display first 5 Records from Employee table? -- 
-- I am using my student table here fetching the first 5 records--

SELECT *
FROM student
LIMIT 5;

-- Q10 What is Query to display last 5 Records from Employee table? --
SELECT *
FROM student
ORDER BY id DESC
LIMIT 5;
 
  



