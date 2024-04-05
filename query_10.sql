# Список курсів, які певному студенту читає певний викладач.

SELECT s.name AS subject_name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
JOIN grades g ON s.id = g.subject_id
JOIN students stu ON g.student_id = stu.id
WHERE stu.name = 'Natalia Moore' AND t.name = 'Yuliia Fedoryshyn';
