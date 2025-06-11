--
--Basic Retrieval Queries--
--
--List all students
select * from students; 

--List all courses offered
select course_id, course_name, department from courses;

--Get details of a student by ID
select * from students where student_id= 3;


--
--JOIN Queries--
--
--List students enrolled in each course
select s.first_name, s.last_name, c.course_name
from students s
join enrollments e 
on s.student_id = e.student_id
join courses c 
on e.course_id = c.course_id;  

--Courses with their assigned teachers
select c.course_name, t.full_name 
from courses c 
join teachers t 
on c.teacher_id= t.teacher_id;

--Students, their courses, and corresponding grades
select s.first_name, s.last_name, c.course_name, e.grade 
from students s 
join enrollments e 
on s.student_id= e.student_id 
join courses c 
on c.course_id = e.course_id; 


--
--Aggregate Queries--
--
--Total number of students in each course
select count(s.first_name) as "Student Count", c.course_name 
from students s 
join enrollments e 
on s.student_id= e.student_id 
join courses c 
on c.course_id = e.course_id 
group by course_name;

--Average grade per course
select c.course_name, round(avg(case
    when e.grade = 'A+' then 10
    when e.grade = 'A' then 9
    when e.grade = 'A-' then 8
    when e.grade = 'B+' then 7
    when e.grade = 'B' then 6
    when e.grade = 'C' then 5
    else 4 end),2) as average_num_grade
from courses c 
join enrollments e 
on c.course_id = e.course_id 
group by course_name;

--Total courses offered by each department
select department, count(course_name) from courses group by department;


--
--Date-Based Queries--
--
--Students enrolled after a specific date
select s.first_name, s.last_name, e.enrollment_date 
from students s 
join enrollments e 
on s.student_id = e.student_id 
where enrollment_date > '15-01-24';

--Upcoming student birthdays (this month)
select first_name, last_name, dob
from students
where extract(month from dob) = extract(month from sysdate);


--
--Subqueries--
--
--Find students who are not enrolled in any course
select * from students
where student_id not in (
    select student_id from enrollments
);

--Find courses with highest number of enrollments
SELECT course_id, course_name
FROM courses
WHERE course_id = (
    SELECT course_id FROM (
        SELECT course_id
        FROM enrollments
        GROUP BY course_id
        ORDER BY COUNT(*) DESC
    ) WHERE ROWNUM = 1
);


--
--Analytical/Window Functions (Optional Advanced)--
--
--Rank students by GPA or grades in a course

--
--Admin/Reporting Queries--
--
--Generate a transcript/report card for a student
--Find teachers who teach more than one course
--List students grouped by department (based on course enrolled)
