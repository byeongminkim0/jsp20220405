USE w3schools;

SELECT * FROM Employees;
SELECT * FROM Customers;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Employees; -- 모든 레코드 삭제

SELECT * FROM Customers;

SELECT * FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';

SELECT CustomerID, CustomerName, City, Country, PostalCode FROM Customers ORDER BY CustomerID;