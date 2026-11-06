


/*
===============================================================================================================================================
                                                    # Q5. Employee Bonus
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** SQL Joins, LEFT JOIN, NULL Handling
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/employee-bonus/



========================================
## Problem Description :
========================================

--> Write a solution to report the name and bonus amount of each employee who satisfies either of the following:

- The employee has a bonus less than 1000.
- The employee did not get any bonus.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Employee**
----------------------


| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |


- `empId` is the column with unique values for this table.
- Each row indicates the name and ID of an employee, their salary, and the ID of their manager.



----------------------
**Table: Bonus**
----------------------


| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |


- `empId` is the column with unique values for this table.
- `empId` is a foreign key referencing the `empId` column of the Employee table.
- Each row contains the ID of an employee and their respective bonus.



===========================
## Example 1
===========================


**Input: Employee**

    +-------+--------+------------+--------+
    | empId | name   | supervisor | salary |
    +-------+--------+------------+--------+
    | 3     | Brad   | NULL       | 4000   |
    | 1     | John   | 3          | 1000   |
    | 2     | Dan    | 3          | 2000   |
    | 4     | Thomas | 3          | 4000   |
    +-------+--------+------------+--------+



**Input: Bonus**

    +-------+-------+
    | empId | bonus |
    +-------+-------+
    | 2     | 500   |
    | 4     | 2000  |
    +-------+-------+



**Output**

    +------+-------+
    | name | bonus |
    +------+-------+
    | Brad | NULL  |
    | John | NULL  |
    | Dan  | 500   |
    +------+-------+



===============================
## Explanation
===============================

--> Brad did not receive any bonus, so his bonus is NULL.

--> John did not receive any bonus, so his bonus is NULL.

--> Dan received a bonus of 500, which is less than 1000.

--> Thomas received a bonus of 2000, which is not less than 1000, so he is excluded from the result.



===================================
## SQL Requirements
===================================

1. Retrieve employee names and their bonus amounts.
2. Include employees who received a bonus less than 1000.
3. Include employees who did not receive any bonus.
4. Return NULL for employees without a matching record in the Bonus table.
5. The result can be returned in any order.



===============================================================================================================================================
*/




## My Solution : 


SELECT 
    e.name As name,
    b.bonus As bonus
FROM Employee As e 
LEFT JOIN 
Bonus As b 
ON 
e.empId = b.empId
WHERE b.bonus IS NULL OR
b.bonus < 1000


/* ===============================================================================================================================================*/


## Optional Solution :



SELECT 
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE NOT EXISTS (
    SELECT 1
    FROM Bonus b2
    WHERE b2.empId = e.empId
      AND b2.bonus >= 1000
);

