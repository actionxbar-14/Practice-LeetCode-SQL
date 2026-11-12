



/*
===============================================================================================================================================
                                                    # Q12. Not Boring Movies
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** WHERE Clause, Modulo Operator, ORDER BY, Filtering
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/not-boring-movies/



========================================
## Problem Description :
========================================

--> Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

--> Return the result table ordered by rating in descending order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Cinema**
----------------------


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |


- `id` is the primary key (column with unique values) for this table.
- Each row contains information about the name of a movie, its genre, and its rating.
- `rating` is a float with 2 decimal places in the range [0, 10].



===========================
## Example 1
===========================


**Input: Cinema**

    +----+------------+-------------+--------+
    | id | movie      | description | rating |
    +----+------------+-------------+--------+
    | 1  | War        | great 3D    | 8.9    |
    | 2  | Science    | fiction     | 8.5    |
    | 3  | irish      | boring      | 6.2    |
    | 4  | Ice song   | Fantacy     | 8.6    |
    | 5  | House card | Interesting | 9.1    |
    +----+------------+-------------+--------+



**Output**

    +----+------------+-------------+--------+
    | id | movie      | description | rating |
    +----+------------+-------------+--------+
    | 5  | House card | Interesting | 9.1    |
    | 1  | War        | great 3D    | 8.9    |
    +----+------------+-------------+--------+



===============================
## Explanation
===============================

--> We need to select movies having an odd-numbered ID and a description other than "boring".

--> The movies with odd-numbered IDs are 1, 3, and 5.

--> Movie with id = 3 has description = "boring", so it is excluded.

--> Movies with id = 1 and id = 5 satisfy both conditions.

--> Finally, the result is sorted by rating in descending order:

- House card has a rating of 9.1.
- War has a rating of 8.9.

--> Therefore, House card appears before War.



===================================
## SQL Requirements
===================================

1. Retrieve all columns from the Cinema table.
2. Include only movies having an odd-numbered id.
3. Exclude movies whose description is "boring".
4. Use the modulo operator (%) to identify odd-numbered IDs.
5. Sort the result by rating in descending order.
6. Return all matching records.



===================================
## Expected SQL Concepts
===================================

- WHERE Clause
- AND Operator
- Modulo Operator (%)
- ORDER BY
- DESC



===============================================================================================================================================
*/


:: My Solution :


SELECT  
    id,
    movie,
    description,
    rating 
FROM Cinema 
WHERE id % 2 != 0 AND 
description != 'boring' 
ORDER BY rating DESC , id DESC