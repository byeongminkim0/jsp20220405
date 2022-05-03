USE w3schools;

-- 주문한 적 없는 고객명 조회 (JOIN, SUB QUERY)
-- Orders, Customers
-- JOIN
SELECT c.CustomerID, c.CustomerName
FROM Customers c LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1;

-- SUB QUERY
SELECT CustomerID, CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)
ORDER BY 1;

-- 고객별 주문 수 (JOIN, SUB QUERY)
SELECT c.CustomerName, COUNT(o.OrderID) NumOfOrders
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 1;

SELECT c.CustomerName, 
		(SELECT COUNT(OrderID) FROM Orders o WHERE c.CustomerID = o.CustomerID) NumOfOrders
FROM Customers c
ORDER BY 1;

-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
ORDER BY 1;

-- SUB QUERY
SELECT p.ProductName, 
		(SELECT CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID)
FROM Products p
ORDER BY 1;

-- Suppliers, Customers
-- 고객과 공급자가 모두 있는 나라 조회 (JOIN, SUB QUERY)
SELECT DISTINCT s.Country
FROM Suppliers s JOIN Customers c
ON s.Country = c.Country
ORDER BY 1;

SELECT DISTINCT Country
FROM Suppliers 
WHERE Country IN (SELECT Country FROM Customers)
ORDER BY 1;

-- leetcode 1587
-- SUB QUERY
SELECT u.name, (SELECT SUM(t.amount) FROM Transactions t WHERE u.account = t.account) balance
FROM  Users u
HAVING balance >= 10000;

-- JOIN
SELECT u.name, SUM(t.amount) balance
FROM Users u JOIN Transactions t 
ON u.account = t.account
GROUP BY u.account
HAVING balance >= 10000;

-- leetcode 1407
SELECT name, IFNULL((SELECT SUM(distance) FROM Rides WHERE user_id = Users.id), 0) travelled_distance
FROM Users
ORDER BY 2 DESC, 1;

SELECT u.name, SUM(IFNULL((r.distance), 0)) travelled_distance
FROM Users u LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY 2 DESC, 1;

-- leetcode 1965
SELECT e.employee_id
FROM Employees e LEFT JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM Employees e Right JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE e.employee_id IS NULL

ORDER BY 1;