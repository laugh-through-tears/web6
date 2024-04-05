# Знайти студента із найвищим середнім балом з певного предмета.
SELECT s.id, s.name, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.subject_id = (SELECT id FROM subjects WHERE name = 'Mathematics')
GROUP BY s.id, s.name
ORDER BY average_grade DESC
LIMIT 1;
