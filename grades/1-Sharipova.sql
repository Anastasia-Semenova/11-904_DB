-- #1 ID, StudentName, GroupName
SELECT student.id, student.name, `group`.name FROM student
JOIN `group` ON `group`.id = student.group_id;

-- #2 Список студентов одной группы.
SELECT * FROM student WHERE group_id = 3;

-- #3 Получить список оценок: ID, Оценка, Дата, ИмяСтудента, НазваниеПредмета 
SELECT students_grade.id, grade, grade_date, student.name, `subject`.name FROM students_grade
JOIN student ON student.id = student_id
JOIN `subject` ON `subject`.id = subject_id;

-- #4 Получить список оценок по  Информатике, студента с id = 26
SELECT sb.name, st.id, grade FROM students_grade 
JOIN student AS st ON st.id = students_grade.student_id
JOIN `subject` AS sb ON sb.id = subject_id 
	WHERE st.id = 26 AND sb.name = ' Информатика';

-- #5 Получить список оценок группы id=4
SELECT grade FROM students_grade
JOIN student ON student.id = student_id
	WHERE student.group_id = 4;