# Знайти оцінки студентів у окремій групі з певного предмета.
SELECT s.name AS student_name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects su ON g.subject_id = su.id
JOIN groups gr ON s.group_id = gr.id
WHERE su.name = 'Mathematics' AND gr.name = 'Group B';
