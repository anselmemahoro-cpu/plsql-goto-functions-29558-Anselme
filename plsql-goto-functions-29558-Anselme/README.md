\# PL/SQL GOTO Statements and Functions



\*\*Course:\*\* Database Development with PL/SQL (INSY 8311)

\*\*Instructor:\*\* Eric Maniraguha

\*\*Student:\*\* Anselme | \*\*ID:\*\* 29558

\*\*Assignment:\*\* Individual Assignment III



\## About this project

This project practices:

\- PL/SQL GOTO statements

\- Stored functions

\- Exception handling

\- Using functions inside SQL queries



\## Project structure

| Folder | Content |

|---|---|

| `00\_setup/` | `create\_tables.sql` creates the `departments` and `employees` tables with sample data |

| `01\_goto/` | A1 Number Classifier, A2 Salary Review, A3 Illegal GOTO and Fix, A4 Rewrite Without GOTO |

| `02\_functions/` | B1 Annual Salary, B2 Years of Service, B3 Tax Calculator, B4 Department Name, C1 Payroll Validator |

| `03\_tests/` | B5 functions in SELECT, `test\_functions.sql`, `test\_validate\_payroll.sql` |

| `screenshots/` | Output screenshots for A1, A2, A3, A4, B5 and C1 |

| `docs/` | `REFLECTION.md` |



\## How to run

1\. Run `00\_setup/create\_tables.sql`.

2\. Run the functions in `02\_functions/` (B1, B2, B3, B4, then C1).

3\. Run the programs in `01\_goto/`.

4\. Run the test files in `03\_tests/`.

5\. Verify your results with the screenshots in `screenshots/`.



Tool used: Oracle XE with SQL Developer. Press F5 (Run Script) to run each file.



\## Summary of tasks

\*\*Part A - GOTO\*\*

\- A1: classifies a number as positive, negative or zero using GOTO.

\- A2: reads a salary from the table and labels it LOW, MEDIUM or HIGH using GOTO.

\- A3: shows an illegal GOTO (jumping into an IF block, error PLS-00375) and the fix.

\- A4: rewrites A1 without GOTO using IF / ELSIF / ELSE.



\*\*Part B - Functions\*\*

\- B1 `fn\_annual\_salary`: monthly salary x 12.

\- B2 `fn\_years\_of\_service`: full years since the hire date.

\- B3 `fn\_calculate\_tax`: 0% up to 2000, 10% up to 5000, 20% above 5000.

\- B4 `fn\_dept\_name`: returns the department name, or `Unknown`.

\- B5: all functions used inside a SELECT statement.



\*\*Part C - Combined task\*\*

\- C1 `fn\_validate\_payroll`: checks salary, hire date and department. Returns `VALID` or `INVALID: reason`. It uses GOTO and calls `fn\_dept\_name`.

\- C2: reflection in `docs/REFLECTION.md`.



\## Notes

\- AI use: I used an AI assistant (Claude) to explain GOTO and functions step by step and to help me with the code and the Git steps. I ran and tested all the code myself in Oracle XE, and I can explain it.

\- The tax rates are simple rates chosen for this exercise.

\- Employees 104 and 105 contain wrong data on purpose, to test the payroll validator.

