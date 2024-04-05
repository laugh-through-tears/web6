# Знайти середній бал у групах з певного предмета.
SELECT gr.name AS group_name, AVG(g.grade) AS average_grade
FROM grades g
JOIN students s ON g.student_id = s.id
JOIN groups gr ON s.group_id = gr.id
WHERE g.subject_id = (SELECT id FROM subjects WHERE name = 'Physics')
GROUP BY gr.name;
