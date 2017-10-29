# Добавить поле (cost - стоимость) в таблицу Projects

ALTER TABLE projects ADD cost INT;

UPDATE projects
SET cost = (
  SELECT SUM(salary)
  FROM developers
  WHERE developer_id IN (
    SELECT developer_id
    FROM dev_projects
    WHERE dev_projects.project_id = projects.project_id)
);