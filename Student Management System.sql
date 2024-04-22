--Mini project questions:
https://docs.google.com/document/d/e/2PACX-1vRkPwhJL1-K-tmP8mE51XmRrtty9I2fPCVx6HFfTgsbEcp9oxat5K-GVXgpiNAqH0xEhHTxwGEGnroW/pub

Create Table students
(
Student_id Int Identity (1,1),
Student_name Varchar(100),
Date_of_Birth date,
Email Varchar(100),
Major Varchar(100)
);

Create table courses
(
course_id Int Identity (1,1),
Course_name Varchar(50),
Credit_hours int,
Instructor Varchar(50)
)

select * from students;
select * from Courses;

--to describe the table
sp_columns courses;

Select * from students where Major='CSE';

Insert into students
values
('prathu','1996-04-04','prathu@gmail.com','CSE'),
('ECE',7,'Gopi'),
('BT',9,'Rashmi'),
('ME',5,'Halesh');

Update students
set Email='tom@yahoo.com'
where student_id=1

select * from students
where
date_of_birth<'2001'

select * from courses where instructor='Shantala'

select major, count(*) as count from students
Group by Major

select * from courses where credit_hours=(select max(credit_hours) from courses);
select max(credit_hours) from courses;

--youngest
select student_name from students where date_of_birth=(
select max(date_of_birth) from students);

--oldest
select student_name from students where date_of_birth=(
select Min(date_of_birth) from students);

select * from courses;
select * from students where Major IN (select course_name from courses where course_name='CSE');

Update courses
set course_name='CSE'
where course_id=1

Select course_name from courses where course_id in
(select course_id from courses group by course_id having count(*)>2)

