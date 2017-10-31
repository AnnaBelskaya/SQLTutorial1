# Добавить разаработчикам поле (salary - зарплата).

ALTER TABLE developers ADD salary INT;

UPDATE developers SET salary = developers.developer_id*100+400;