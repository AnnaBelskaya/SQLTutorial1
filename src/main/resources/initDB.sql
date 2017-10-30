CREATE TABLE companies(
  company_id  INT           PRIMARY KEY   AUTO_INCREMENT,
  name        VARCHAR(100)  NOT NULL ,
  country     VARCHAR(50)   NOT NULL ,
  emloyees    INT           NOT NULL
);

CREATE TABLE customers(
  customer_id           INT           PRIMARY KEY    AUTO_INCREMENT,
  customer_first_name   VARCHAR(50)   NOT NULL ,
  customer_last_name    VARCHAR(100)  NOT NULL
);

CREATE TABLE skills(
  skill_id    INT           PRIMARY KEY   AUTO_INCREMENT,
  skill_name  VARCHAR(50)   NOT NULL
);

CREATE TABLE developers(
  developer_id  INT           PRIMARY KEY   AUTO_INCREMENT,
  first_name    VARCHAR(50)   NOT NULL ,
  last_name     VARCHAR(100)  NOT NULL,
  experience    TINYINT       NOT NULL,
  company_id    INT           NOT NULL,

  FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE projects(
  project_id    INT   PRIMARY KEY     AUTO_INCREMENT,
  project_name  VARCHAR(50) NOT NULL,
  customer_id   INT   NOT NULL,
  company_id    INT   NOT NULL,

  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE dev_skills(
  developer_id    INT   NOT NULL,
  skill_id        INT   NOT NULL,

  FOREIGN KEY (developer_id) REFERENCES developers(developer_id),
  FOREIGN KEY (skill_id) REFERENCES skills(skill_id),

  UNIQUE (developer_id, skill_id)
);

CREATE TABLE dev_projects(
  project_id  INT  NOT NULL,
  developer_id INT  NOT NULL,

  FOREIGN KEY (project_id) REFERENCES projects(project_id),
  FOREIGN KEY (developer_id) REFERENCES developers(developer_id)
);