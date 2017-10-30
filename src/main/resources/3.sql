# Вычислить общую ЗП всех Java разработчиков.

SELECT SUM(salary)
FROM developers
WHERE developer_id in(
  SELECT developer_id
  FROM dev_skills
  WHERE skill_id = (
    SELECT skill_id
    FROM skills
    WHERE skill_name LIKE 'java')
);