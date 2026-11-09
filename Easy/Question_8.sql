



/*
===============================================================================================================================================
                                                    # Q8. Big Countries
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** SQL SELECT, WHERE Clause, Comparison Operators, OR Operator
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/big-countries/



========================================
## Problem Description :
========================================

--> A country is considered big if it satisfies either of the following conditions:

1. It has an area of at least three million (i.e., 3000000 km²).
2. It has a population of at least twenty-five million (i.e., 25000000).

--> Write a solution to find the name, population, and area of the big countries.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: World**
----------------------


| Column Name | Type    |
|-------------|---------|
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |


- `name` is the primary key (column with unique values) for this table.
- Each row gives information about the name of a country, the continent to which it belongs, its area, its population, and its GDP value.



===========================
## Example 1
===========================


**Input: World**

    +-------------+-----------+---------+------------+--------------+
    | name        | continent | area    | population | gdp          |
    +-------------+-----------+---------+------------+--------------+
    | Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
    | Albania     | Europe    | 28748   | 2831741    | 12960000000  |
    | Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
    | Andorra     | Europe    | 468     | 78115      | 3712000000   |
    | Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
    +-------------+-----------+---------+------------+--------------+



**Output**

    +-------------+------------+---------+
    | name        | population | area    |
    +-------------+------------+---------+
    | Afghanistan | 25500100   | 652230  |
    | Algeria     | 37100000   | 2381741 |
    +-------------+------------+---------+



===============================
## Explanation
===============================

--> Afghanistan has a population of 25,500,100, which is greater than 25,000,000. Therefore, it is a big country.

--> Algeria has a population of 37,100,000, which is greater than 25,000,000. Therefore, it is a big country.

--> Albania, Andorra, and Angola do not satisfy either of the given conditions.

--> Therefore, only Afghanistan and Algeria are included in the result.



===================================
## SQL Requirements
===================================

1. Retrieve the country name, population, and area.
2. Include countries having an area greater than or equal to 3,000,000 km².
3. Include countries having a population greater than or equal to 25,000,000.
4. Use the OR operator because satisfying either condition is sufficient.
5. The result can be returned in any order.



===============================================================================================================================================
*/


:: My Solution :

SELECT 
    name,
    population,
    area
FROM World 
WHERE area >= 3000000 OR population >= 25000000