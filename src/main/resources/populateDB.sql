INSERT INTO companies (name,country,emloyees) VALUES
  ('pineApple', 'USA', 23425),
  ('Microsoft Doors', 'USA', 18234),
  ('Orc Corporation', 'Mordor', 723),
  ('HPotter', 'UK', 345),
  ('Forever Alone', 'Mars', 1);

INSERT INTO customers (customer_first_name, customer_last_name)
VALUES
  ('Veniamin', 'Bublikov'),
  ('Anatoly', 'Novoseltsev'),
  ('Lavrentiy', 'Pyatochkin'),
  ('Foma', 'Shyshkin'),
  ('Arsenij', 'Slivkin'),
  ('Anton', 'Kartoshkin'),
  ('Pierre', 'Bezukhov'),
  ('Rodion', 'Raskolnikov'),
  ('Nikolay', 'Kapustin'),
  ('Timur', 'Kolobkov'),
  ('Lukyan', 'Bobrikov'),
  ('Gavrila', 'Smetanin');

INSERT INTO skills (skill_name) VALUES
  ('Java'),
  ('SQL'),
  ('C++'),
  ('HTML/CSS'),
  ('UI/UX'),
  ('JavaScript'),
  ('C#'),
  ('JDBC'),
  ('Angular'),
  ('Assembler'),
  ('PHP'),
  ('Python');

INSERT INTO developers (first_name, last_name, experience, company_id)
VALUES
  ('Jack', 'Pepper', 10, 1),
  ('Harry', 'Campbell', 2,1),
  ('Charlie', 'Gray', 2,1),
  ('Benjamin', 'Wood', 4,1),
  ('Andy','Weir',7,5),
  ('Nathaniel','Bean',14,4),
  ('Christopher','Wells',34,4),
  ('Louis','Hawkins', 20, 4),
  ('Aiden','Mills', 2, 4),
  ('Kevin','Nash',3,2),
  ('Andres','Bowen',23,2),
  ('Kevin','Weaver',1,2),
  ('Anthony','John',10,3),
  ('Brandon','Williamson',3,3),
  ('Paul','Murphy',1,1);

INSERT INTO projects (project_name, customer_id, company_id)
VALUES
  ('ZeroOne', 1,4),
  ('Mars Online', 4,2),
  ('NASA Mission',  2,5),
  ('BigBug', 1,2),
  ('GreenMars', 4,5),
  ('Instakilogram', 7,2),
  ('JavaGeeks', 6,3),
  ('Socks Store', 8,1),
  ('JavaGuru', 10,3),
  ('Lambda', 10,3),
  ('PythonDevs', 9,4),
  ('WeLoveSQL', 7,3),
  ('Devs Diary',7,1),
  ('Happy Coder', 2,3),
  ('AntiBug', 12,3);

INSERT INTO dev_skills VALUES
  (1, 1),
  (1, 5),
  (1, 2),
  (2, 1),
  (2, 8),
  (3,  4),
  (4, 2),
  (4, 8),
  (4, 9),
  (5, 10),
  (5, 1),
  (6,  4),
  (6,  5),
  (6,  6),
  (7, 12),
  (7, 1),
  (7, 2),
  (8, 11),
  (8, 3),
  (9, 7),
  (9, 9),
  (10, 10),
  (10, 3),
  (10, 12),
  (12, 2),
  (13, 3),
  (14, 1),
  (15, 7),
  (15, 10),
  (15, 11);

INSERT INTO dev_projects VALUES
  (1, 6),
  (1, 7),
  (1, 8),
  (2, 11),
  (2, 12),
  (3,  5),
  (4, 10),
  (4, 12),
  (5, 5),
  (6, 10),
  (6, 11),
  (7, 14),
  (8, 3),
  (8, 4),
  (9, 13),
  (9, 14),
  (10, 14),
  (11, 6),
  (11, 7),
  (12, 14),
  (13, 15),
  (13, 1),
  (14, 13),
  (14, 14),
  (15,14);