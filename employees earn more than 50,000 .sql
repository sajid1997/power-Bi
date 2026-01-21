/*Question 7 (tricky):
Write a SQL query to find departments where all employees earn more than 50,000.*/

With Cte 
as
(
 Select Department, Min(Salary) as MinSALARy from Employee
 group by Department
)
Select Department from CTE
Where MinSALARy>= 50000
