# Найти самый дорогой проект (исходя из ЗП разработчиков)

SELECT dev_projects.project_id, projects.project_name, projects.company_id,
  companies.name, SUM(salary) as total_cost
FROM dev_projects
  JOIN developers
    ON dev_projects.developer_id = developers.developer_id
  JOIN projects
    ON dev_projects.project_id = projects.project_id
  JOIN companies
    ON projects.company_id = companies.company_id
GROUP BY dev_projects.project_id
ORDER BY total_cost DESC
LIMIT 1;