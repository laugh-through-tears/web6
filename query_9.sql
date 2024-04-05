# Знайти список курсів, які відвідує студент.
SELECT DISTINCT s.name AS subject_name
FROM subjects s
JOIN grades g ON s.id = g.subject_id
JOIN students stu ON g.student_id = stu.id
WHERE stu.name = 'Natalia Moore';
