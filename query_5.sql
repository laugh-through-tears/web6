# Знайти які курси читає певний викладач.
SELECT DISTINCT s.name AS subject_name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
WHERE t.name = 'Yuliia Fedoryshyn';
