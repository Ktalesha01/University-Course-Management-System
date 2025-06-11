-- STUDENTS Table
CREATE TABLE students (
    student_id   NUMBER PRIMARY KEY,
    first_name   VARCHAR2(50) NOT NULL,
    last_name    VARCHAR2(50),
    dob          DATE,
    gender       VARCHAR2(10),
    email        VARCHAR2(100),
    phone        NUMBER(10, 0)
);

-- TEACHERS Table
CREATE TABLE teachers (
    teacher_id   NUMBER PRIMARY KEY,
    full_name    VARCHAR2(100) NOT NULL,
    department   VARCHAR2(50),
    email        VARCHAR2(100)
);

-- COURSES Table
CREATE TABLE courses (
    course_id     NUMBER PRIMARY KEY,
    course_name   VARCHAR2(100) NOT NULL,
    department    VARCHAR2(50),
    teacher_id    NUMBER NOT NULL,
    CONSTRAINT fk_courses_teacher
        FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- ENROLLMENTS Table
CREATE TABLE enrollments (
    enrollment_id     NUMBER PRIMARY KEY,
    student_id        NUMBER,
    course_id         NUMBER,
    enrollment_date   DATE,
    grade             VARCHAR2(2),
    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
