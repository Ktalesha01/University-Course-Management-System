# 🎓 University Course Management System (SQL Portfolio Project)

This project simulates a university course management system using SQL. It demonstrates database design and advanced querying techniques including joins, aggregations, subqueries, window functions, and reporting.

---

## 📚 Project Overview

This project showcases practical SQL queries to manage and analyze student enrollments, courses, grades, and teacher assignments in a university system. Built for educational or interview demonstration purposes, it includes a normalized schema and real-world query use cases.

---

## 🗃️ Database Schema

### 1. `students`
| Column Name   | Data Type | Description            |
|---------------|-----------|------------------------|
| student_id    | INT (PK)  | Unique ID for student  |
| first_name    | VARCHAR   | First name of student  |
| last_name     | VARCHAR   | Last name of student   |
| dob           | DATE      | Date of birth          |

### 2. `teachers`
| Column Name   | Data Type | Description           |
|---------------|-----------|-----------------------|
| teacher_id    | INT (PK)  | Unique ID for teacher |
| full_name     | VARCHAR   | Full name of teacher  |

### 3. `courses`
| Column Name   | Data Type | Description                   |
|---------------|-----------|-------------------------------|
| course_id     | INT (PK)  | Unique ID for course          |
| course_name   | VARCHAR   | Name of the course            |
| department    | VARCHAR   | Department offering the course|
| teacher_id    | INT (FK)  | Teacher assigned to the course|

### 4. `enrollments`
| Column Name     | Data Type | Description                          |
|------------------|-----------|--------------------------------------|
| enrollment_id    | INT (PK)  | Unique enrollment ID                |
| student_id       | INT (FK)  | Student who enrolled                 |
| course_id        | INT (FK)  | Enrolled course                      |
| grade            | VARCHAR   | Grade obtained                       |
| enrollment_date  | DATE      | Date of enrollment                   |

---

## 🔍 Key SQL Features

### ✅ Basic Retrieval
- List all students, courses, and student details by ID.

### ✅ JOIN Queries
- Show student-course enrollments, course-teacher mapping, and student grades.

### ✅ Aggregate Functions
- Total students per course
- Average GPA per course (custom grade-to-point scale)
- Course count by department

### ✅ Date-based Queries
- Students with upcoming birthdays
- Enrollments after a specific date

### ✅ Subqueries
- Students not enrolled in any course
- Course with highest enrollment

### ✅ Analytical (Window) Functions
- Ranking students within each course by grade using `RANK()`

### ✅ Admin Reporting
- Report card for a student
- Teachers managing multiple courses
- Student distribution by department

---

## 📦 Sample Use Cases

- Identify top-performing students per course
- Calculate average course GPA
- Generate department-wise enrollment stats
- Display a complete transcript for a student

---

## 🛠️ Tools Used

- Oracle SQL Developer 
- SQL 

---

## 🚀 How to Use

1. Clone this repo or copy SQL queries to your local IDE.
2. Create tables and populate them using your sample data.
3. Run individual query blocks to explore functionality.
4. Customize queries based on use case or schema.

---

## 📈 Potential Extensions

- Track semester-wise performance
- Build a frontend using PHP, or JavaScript
- Export reports in PDF/Excel formats

---

## 📄 License

This project is licensed for educational and demonstrational use. You may customize or enhance it for your portfolio.

---

