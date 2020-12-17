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

/*
The UNION operator is used to combine the result-set of two or more SELECT statements. 
When used, duplicates are removed from both select queries.

When to Use the SQL UNION:
Given that union returns data with no duplicates, I will think it should be used when we want to know the exact 
amount of a certain items.
For instance, If we want to know the exact number of students taking courses,
we can do a union between the student's table and student_courses table to get student numbers with no duplicates.
*/
SELECT student_id FROM Student UNION SELECT student_id FROM Student_courses;

/*
An inner join is used to return results by combining rows from two or more tables.
This works when the two tables have matching values.

When to Use INNER JOIN
Given that we want to get studies courses and student information,
 we will use inner join as both tables share matching values(student_ids)
*/
SELECT student_name, dept_name, year, grade FROM Student_courses 
INNER JOIN Student 
ON  Student_courses.student_id = Student.student_id;

/*
The LEFT OUTER JOIN operator:
Also known as the left join, The LEFT JOIN returns all records from the left table (student),
and the matched records from the right table (student_courses). 
If there is no match on the right side, the result is null.

When to Use the SQL LEFT OUTER JOIN:
Given our student and student_courses tables, let's say we want to get the students and the courses they have tabken.
It differs from the INNER JOIN that it will return all rows from the left table,
 even if there are no matches in the right table.
*/
SELECT  student_name, dept_name, year, grade FROM Student
LEFT JOIN Student_courses ON Student.student_id = Student_courses.student_id;

/*
The RIGHT OUTER JOIN operator:
Also known as the right join, The RIGHT JOIN returns all rows from the right table (student_courses),
and the matched records from the left table (student). 
If there is no matching row on the left side, the result is null.
When to Use the SQL RIGHT OUTER JOIN:
Given our student and student_courses tables,
 let's say we want to get the students courses and the students who took the courses.
*/
SELECT Student.student_name, Student.dept_name, Student_courses.year, Student_courses.grade FROM Student_courses
RIGHT JOIN Student ON Student_courses.student_id = Student.student_id;

/*
The FULL OUTER JOIN operator:
Also known as the full join, The FULL JOIN returns all records from the left table (student) 
and right table(student_courses).  It's a combination of both left join and right join.
 If there are no matches on either side, it fills in nulls.
When to Use the SQL RIGHT OUTER JOIN:
Given our student and student_courses tables, let's say we want to get rows
 from both student and student_courses tables as a single table.
 
 Given that we don't have FULL join in MySQL, I will just go ahead an emulate it with UNION
*/
SELECT  student_name, dept_name, year, grade FROM Student
LEFT JOIN Student_courses ON Student.student_id = Student_courses.student_id 
UNION
SELECT student_name, dept_name, year, grade FROM Student_courses
RIGHT JOIN Student ON Student_courses.student_id = Student.student_id;
