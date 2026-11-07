


/*
===============================================================================================================================================
                                    # Q7. Customer Placing the Largest Number of Orders
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** GROUP BY, COUNT(), ORDER BY, TOP
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/



========================================
## Problem Description :
========================================

--> Write a solution to find the `customer_number` for the customer who has placed the largest number of orders.

--> The test cases are generated so that exactly one customer will have placed more orders than any other customer.

--> Return the result table in the following format.



=======================================
## Table Schema
=======================================


----------------------
**Table: Orders**
----------------------


| Column Name     | Type |
|-----------------|------|
| order_number    | int  |
| customer_number | int  |


- `order_number` is the primary key (column with unique values) for this table.
- This table contains information about the order ID and the customer ID.



===========================
## Example 1
===========================


**Input: Orders**

    +--------------+-----------------+
    | order_number | customer_number |
    +--------------+-----------------+
    | 1            | 1               |
    | 2            | 2               |
    | 3            | 3               |
    | 4            | 3               |
    +--------------+-----------------+



**Output**

    +-----------------+
    | customer_number |
    +-----------------+
    | 3               |
    +-----------------+



===============================
## Explanation
===============================

--> Customer 1 has placed 1 order.

--> Customer 2 has placed 1 order.

--> Customer 3 has placed 2 orders.

--> Customer 3 has placed the largest number of orders compared to other customers.

--> Therefore, the result is customer_number = 3.



===================================
## SQL Requirements
===================================

1. Count the total number of orders placed by each customer.
2. Group the records based on customer_number.
3. Identify the customer who has placed the maximum number of orders.
4. Return only the customer_number.
5. Exactly one customer will have the largest number of orders in the given test cases.



===================================
## Follow-up
===================================

What if more than one customer has the largest number of orders? Can you find all the customer_number values in this case?



===============================================================================================================================================
*/



:: My Solution : 



SELECT 
    customer_number
FROM (
SELECT 
    TOP 1
    customer_number ,
    COUNT(order_number) As Order_number
FROM Orders 
GROUP BY customer_number 
ORDER BY COUNT(order_number) DESC
)t