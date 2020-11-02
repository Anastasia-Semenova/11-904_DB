SELECT student.id as ID, student.name StudentName, group.name as GroupName from `student` LEFT JOIN `group` on student.group_id = group.id;

SELECT student.id as ID, group.name as Name from `student`  LEFT JOIN `group` on student.group_id = group.id where group.name = "11701";

SELECT student.id as ID, students_grade.grade as Grade, students_grade.grade_date as Date, student.name as Name, 
subject.name as SubjectName 
from student LEFT JOIN students_grade on student.id = students_grade.student_id
LEFT JOIN subject on students_grade.subject_id = subject.id;

SELECT subject.name as SubjectName, students_grade.grade as Grade 
from student LEFT JOIN students_grade on student.id = students_grade.student_id 
LEFT JOIN subject on students_grade.subject_id = subject.id
where student.id="26" and subject.name = " Информатика";

SELECT student.id as ID, group.name as GroupName, students_grade.grade as Grade from `student`  JOIN `group` on student.group_id = group.id 
LEFT JOIN students_grade on student.id = students_grade.student_id
where group.name = "11704";

