-- 00_setup/create_tables.sql
-- Creates the tables used in Individual Assignment III

-- Remove old tables if they exist.
-- The first time you run this, you may see errors here. That is OK.
DROP TABLE employees PURGE;
DROP TABLE departments PURGE;

CREATE TABLE departments (
    dept_id   NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    emp_id     NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name  VARCHAR2(50),
    salary     NUMBER(10,2),   -- monthly salary
    hire_date  DATE,
    dept_id    NUMBER
);
INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO departments VALUES (30, 'HR');

INSERT INTO employees VALUES (101, 'Alice',  'Uwase',     1500, DATE '2020-03-15', 10);
INSERT INTO employees VALUES (102, 'Bob',    'Habimana',  4000, DATE '2018-07-01', 20);
INSERT INTO employees VALUES (103, 'Claire', 'Mukamana',  8500, DATE '2015-01-10', 30);
INSERT INTO employees VALUES (104, 'David',  'Niyonzima', 0,    DATE '2022-05-20', 20);  -- bad salary (used in C1)
INSERT INTO employees VALUES (105, 'Eva',    'Ingabire',  3000, DATE '2030-01-01', 99);  -- future date and unknown dept (used in C1)

COMMIT;

SELECT * FROM employees;

SELECT * FROM departments;