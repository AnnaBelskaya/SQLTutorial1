# Найти самый дорогой проект (исходя из ЗП разработчиков)

SELECT projects.project_id, project_name, cost, company_id
FROM projects
GROUP BY cost
ORDER BY cost DESC
LIMIT 1;