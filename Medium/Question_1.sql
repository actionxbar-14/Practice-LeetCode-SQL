

/* 

===============================================================================================================================================
                                                            # Q1. Second Highest Salary
===============================================================================================================================================




**Difficulty:** Medium

**Topics:** SQL, Database


===================================
## Problem Description
===================================







------------------------
Table: `Employee`
------------------------


| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |



--> `id` is the primary key (column with unique values) for this table.

-->  Each row of this table contains information about the salary of an employee.

-->  Write a solution to find the second highest **distinct** salary from the `Employee` table. If there is no second highest salary, return `null` (return `None` in Pandas).










==========================
## Example 1
==========================





**Input:**

Employee table:

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
'






**Output:**

| SecondHighestSalary |
|---------------------|
| 200                 |











============================
## Example 2
============================





**Input:**

Employee table:

| id | salary |
|----|--------|
| 1  | 100    |




**Output:**

| SecondHighestSalary |
|---------------------|
| null |

## Constraints

- The `Employee` table contains at least one row.


*/






/* ===============================================================================================================================================



:: My Solution : 

*/



WITH salary_rank AS (
    SELECT 
        salary,
        ROW_NUMBER() OVER(ORDER BY salary) AS rank_salary 
    FROM Employee
)


SELECT 
    MAX(salary) AS SecondHighestSalary
FROM salary_rank 
WHERE rank_salary = 2