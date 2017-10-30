#Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль.

SELECT dev_projects.project_id, projects.project_name, AVG(developers.salary)
FROM dev_projects
JOIN developers
ON developers.developer_id = dev_projects.developer_id
JOIN projects
ON projects.project_id = dev_projects.project_id
WHERE dev_projects.project_id  = (
  SELECT projects.project_id
  FROM projects
  GROUP BY cost
  ORDER BY cost ASC
  LIMIT 1
);
