/*
 Creates database school if it doesn't exist
*/
CREATE schema IF NOT exists School;
USE School;

/*
 Creates doctor Table if it doesn't exist
*/
CREATE TABLE IF NOT EXISTS Student(
 student_id INT NOT NULL UNIQUE,
 student_name	 VARCHAR(225) NOT NULL,
 dept_name VARCHAR(225) NOT NULL,
 PRIMARY KEY (student_id)
);

/*
 Creates Student_Courses Table if it doesn't exist
*/
CREATE TABLE  IF NOT EXISTS Student_Courses (
  student_id INT NOT NULL,
  course_id Char(10) NOT NULL,
  section   INT NOT NULL,
  year      INT NOT NULL,
  grade     char(1),
  Foreign Key(student_id)
  References Student(student_id)
);


/*
Insert data to the student table
*/
INSERT INTO Student(student_id, student_name, dept_name)
	VALUES(0000,	'AAAAA', 'Computer Science'),
		  (1111,	'BBBBB', 'Computer Science'),
		  (2222,	'CCCCC', 'Business Administration'),
		  (3333,	'DDDDD', 'Education'),
		  (4444,	'EEEEE',	'Physics'),
		  (5555,	'FFFFF',	'History');
		  
/*
 Insert data into student_courses
*/
INSERT INTO Student_courses(student_id, course_id, section, year, grade)
	VALUES(0000,	'CS2203',	2,	2020, 'A'),
	(0000,	'CS1101',	1,	2019,	'A'),
	(1111,	'CS1101',	5,	2019,	'B'),
	(1111,	'CS1102',	1,	2019,	'B'),
	(1111,	'CS2204',	1,	2020,	'A'),
	(1111,	'CS2401',	1,	2020,	'A'),
	(2222,	'BUS1101',	3,	2019,	'C'),
	(2222,	'BUS2201',	1,	2020,	'B'),
	(2222,	'BUS3302',	1,	2020,	'B'),
	(3333,	'EDUC5010',	1,	 2019,	'A'),
	(3333,	'EDUC5210',	1,	 2020,	'B'),
	(4444,	'PHY1101',	4,	 2019,	'A'),
	(4444,	'PHY2202',	1,	 2020,	'C'),
	(4444,	'PHY3304',	1,	 2020,	'A');
