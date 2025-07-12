---- School Managment System ----
-- Tarun Thakur -- 
-- 00134808 --

 -- Creation Of Tables --

CREATE TABLE Admin (
  AdminID INT PRIMARY KEY,
  Name VARCHAR(50)
);

CREATE TABLE Teacher (
  TeacherID INT PRIMARY KEY,
  Name VARCHAR(50),
  Subject VARCHAR(50)
);

CREATE TABLE Course (
  CourseID INT PRIMARY KEY,
  Title VARCHAR(100),
  Credits INT
);

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(50),
  Grade VARCHAR(10)
);

CREATE TABLE Classroom (
  RoomNumber VARCHAR(10) PRIMARY KEY,
  Capacity INT
);

CREATE TABLE Exams (
  ExamID INT PRIMARY KEY,
  Subject VARCHAR(50),
  RoomNumber VARCHAR(10),
  Date DATE,
  MidTerm BOOLEAN,
  EndTerm BOOLEAN,
  FOREIGN KEY (RoomNumber) REFERENCES Classroom(RoomNumber)
);


-- Entering the values inside the table -- 

INSERT INTO Admin VALUES (1, 'Rahul Sharma');
INSERT INTO Admin VALUES (2, 'Priya Verma');
INSERT INTO Admin VALUES (3, 'Amit Joshi');
INSERT INTO Admin VALUES (4, 'Neha Jain');
INSERT INTO Admin VALUES (5, 'Karan Mehta');
select * from Admin;


INSERT INTO Teacher VALUES (101, 'Mr. Singh', 'Math');
INSERT INTO Teacher VALUES (102, 'Ms. Das', 'Science');
INSERT INTO Teacher VALUES (103, 'Mr. Khan', 'English');
INSERT INTO Teacher VALUES (104, 'Mrs. Roy', 'History');
INSERT INTO Teacher VALUES (105, 'Mr. Patel', 'Computer');
select * from Teacher;


INSERT INTO Course VALUES (201, 'Algebra I', 4);
INSERT INTO Course VALUES (202, 'Physics', 3);
INSERT INTO Course VALUES (203, 'Literature', 3);
INSERT INTO Course VALUES (204, 'World History', 2);
INSERT INTO Course VALUES (205, 'Web Development', 5);
select * from Course;


INSERT INTO Student VALUES (301, 'Ankit Sharma', '10th');
INSERT INTO Student VALUES (302, 'Sneha Kapoor', '9th');
INSERT INTO Student VALUES (303, 'Rohan Das', '10th');
INSERT INTO Student VALUES (304, 'Isha Mehra', '11th');
INSERT INTO Student VALUES (305, 'Aditya Rao', '12th');
select * from Student;


INSERT INTO Classroom VALUES ('A101', 40);
INSERT INTO Classroom VALUES ('B202', 35);
INSERT INTO Classroom VALUES ('C303', 30);
INSERT INTO Classroom VALUES ('D404', 25);
INSERT INTO Classroom VALUES ('E505', 20);
select * from Classroom;


INSERT INTO Exams VALUES (1, 'Math', 'A101', '2025-03-10', TRUE, FALSE);
INSERT INTO Exams VALUES (2, 'Science', 'B202', '2025-03-12', TRUE, FALSE);
INSERT INTO Exams VALUES (3, 'English', 'C303', '2025-03-15', TRUE, FALSE);
INSERT INTO Exams VALUES (4, 'History', 'D404', '2025-06-20', FALSE, TRUE);
INSERT INTO Exams VALUES (5, 'Computer', 'E505', '2025-06-25', FALSE, TRUE);
select * from Exams;

-- Performing Data Manipulation Language (DML) Operations

-- Inserting Values --  
INSERT INTO Student (StudentID, Name, Grade)
VALUES (306, 'Aarav Gupta', '11th Grade');

INSERT INTO Course (CourseID, Title, Credits)
VALUES (206, 'Data Structures', 4);

-- Updating Values -- 
UPDATE Student
SET Grade = '12th Grade'
WHERE StudentID = 306;


UPDATE Course
SET Credits = 5
WHERE CourseID = 206;

-- Deleting Values -- 
DELETE FROM Student
WHERE StudentID = 306;


DELETE FROM Course
WHERE CourseID = 206;

-- Retriving Names --
SELECT Name FROM Student;

-- Using Where Clause -- 
SELECT * FROM Teacher
WHERE Subject = 'Math';

-- Showing the Data Tables after performing DML Operations -- 
Select * from Admin;
Select * from Teacher;
Select * from Course;
Select * from student;
Select * from Classroom;
