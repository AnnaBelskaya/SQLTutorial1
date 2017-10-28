SELECT SUM(salary) 
FROM developers
WHERE developer_id IN (
  SELECT developer_id
  FROM dev_skills
  WHERE skill_id = 1
);