CREATE TABLE hr_emp_stage (
  person_number   VARCHAR2(30)  NOT NULL,
  display_name    VARCHAR2(240),
  department_name VARCHAR2(240),
  loaded_on       DATE DEFAULT SYSDATE
);
