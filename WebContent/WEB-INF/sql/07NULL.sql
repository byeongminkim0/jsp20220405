USE w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Employees WHERE Photo = 'pic01';
-- 조회시 IS NULL
SELECT * FROM Employees WHERE Photo IS NULL;
SELECT * FROM Employees WHERE Photo IS NOT NULL;
