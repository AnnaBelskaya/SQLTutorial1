# Найти самый дорогой проект (исходя из ЗП разработчиков).

SELECT MAX(counted) FROM (
  SELECT SUM(salary) AS counted
  FROM developers, dev_projects
  WHERE developers.developer_id = dev_projects.developer_id
  GROUP BY project_id
) AS counted2;