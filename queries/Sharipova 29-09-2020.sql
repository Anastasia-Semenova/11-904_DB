-- 1. Выбор всех значений из students
SELECT * FROM `students`;

-- 2. Выбор столбца с id студентов, у которых есть учителя
SELECT `user_id` FROM `teachers`;

-- 3. Выбор двух столбцов из таблицы students
SELECT id, groups_id FROM students;

-- 4. Выбор 4-х записей из столбцов id и name таблицы groups начиная со второй
SELECT id, `name` FROM `groups` LIMIT 2, 4;

-- 5. Выбор названия групп, у которых teachers_id максимальный
SELECT `name` FROM `groups` ORDER BY teacher_id DESC LIMIT 1;

-- 6. Выбор id учителей, у которых id учеников находится между 3 и 7
SELECT id FROM teachers WHERE (user_id >= 3 AND user_id <= 7);

-- 7. Показ таблицы groups в прямом порядке по значениям столбца teachers_id
SELECT * FROM `groups` ORDER BY teacher_id ASC;

-- 8. Выбор столбцов id, user_id, groups_id из таблицы students отсортированных по сумме user_id и groups_id
SELECT id, user_id, groups_id, user_id + groups_id AS new_column FROM students ORDER BY new_column;

-- 9. Выбрать названия групп из таблицы groups, у которых teacher_id равен 5
SELECT `name` FROM `groups` WHERE teacher_id = 5;

-- 10. Показать таблицу students отсортированную по двум параметрам: user_id и groups_id, где user_id идет в прямом порядке, а groups_id - в обратном
SELECT * FROM students ORDER BY user_id, groups_id DESC;