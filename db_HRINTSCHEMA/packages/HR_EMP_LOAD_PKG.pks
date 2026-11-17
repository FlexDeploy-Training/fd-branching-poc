CREATE OR REPLACE PACKAGE hr_emp_load_pkg AS
  PROCEDURE load_batch(p_batch_id IN NUMBER);
END hr_emp_load_pkg;
/
