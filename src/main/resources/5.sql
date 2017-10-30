#Найти клиента (customer), # который приносит меньше всего прибыли компании (company) для каждой из компаний.

SELECT table1.company_id, companies.name,
  SUBSTRING_INDEX(GROUP_CONCAT(table1.customer_id ORDER BY profit ASC), ',', 1) as customer_id,
  SUBSTRING_INDEX(GROUP_CONCAT(customer_last_name ORDER BY profit ASC), ',', 1) as customer_name,
  MIN(profit)
FROM (SELECT p.company_id, p.customer_id, SUM(p.cost) AS profit
      FROM projects p
      GROUP BY p.company_id, p.customer_id
     ) table1
  JOIN customers
    ON table1.customer_id = customers.customer_id
  JOIN companies
    ON table1.company_id = companies.company_id
GROUP BY table1.company_id;