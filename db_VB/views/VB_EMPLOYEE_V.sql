CREATE OR REPLACE VIEW vb_employee_v AS
SELECT person_number, display_name, department_name
FROM   hr_emp_stage;
