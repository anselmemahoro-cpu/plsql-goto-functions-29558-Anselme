-- B5: Using the functions inside a SELECT statement
SELECT emp_id,
       first_name || ' ' || last_name AS full_name,
       fn_dept_name(dept_id)          AS department,
       salary                         AS monthly_salary,
       fn_annual_salary(emp_id)       AS annual_salary,
       fn_years_of_service(emp_id)    AS years_of_service,
       fn_calculate_tax(salary)       AS tax
FROM   employees
ORDER  BY emp_id;