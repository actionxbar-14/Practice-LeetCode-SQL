/*
===============================================================================================================================================
                                    # Q2. Employees Earning More Than Their Managers
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** SQL Self Join
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/employees-earning-more-than-their-managers/description/



========================================
## Problem Description :
========================================

--> Write a solution to find the employees who earn more than their managers.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Employee**
----------------------


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |


- `id` is the primary key (column with unique values) for this table.
- Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.



===========================
## Example 1
===========================


**Input: Employee**

    +----+-------+--------+-----------+
    | id | name  | salary | managerId |
    +----+-------+--------+-----------+
    | 1  | Joe   | 70000  | 3         |
    | 2  | Henry | 80000  | 4         |
    | 3  | Sam   | 60000  | NULL      |
    | 4  | Max   | 90000  | NULL      |
    +----+-------+--------+-----------+



**Output**

    +----------+
    | Employee |
    +----------+
    | Joe      |
    +----------+



===============================
## Explanation
===============================

--> Joe is the only employee who earns more than their manager.

- Joe earns 70000, while his manager Sam earns 60000.
- Henry earns 80000, while his manager Max earns 90000.
- Therefore, only Joe satisfies the given condition.



===================================
## SQL Requirements
===================================

1. Find employees whose salary is greater than their manager's salary.
2. Match employees with their respective managers using managerId.
3. Return only the employee's name.
4. The result can be returned in any order.



===============================================================================================================================================
*/



-- :: My Solution : 

SELECT 
    emp.name As Employee
FROM Employee e
LEFT JOIN 
Employee emp
ON
e.id = emp.managerId
WHERE emp.managerId IS NOT NULL
AND 
e.salary < emp.salary




/* ===============================================================================================================================================*/


-- :: Optimal Solution :



SELECT
    emp.name AS Employee
FROM Employee e
INNER JOIN 
Employee emp
ON e.id = emp.managerId
WHERE e.salary < emp.salary;