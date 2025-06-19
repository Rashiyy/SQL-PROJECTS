--Project 3 (Customers Who Never ORDER)

CREATE TABLE Customers(Id INT PRIMARY KEY,NAME VARCHAR(30));
INSERT INTO Customers(Id,NAME) VALUES
(1,'Joe'),
(2,'Henry'),
(3,'Sam'),
(4,'Max');

SELECT * FROM Customers

CREATE TABLE Orders(Id INT PRIMARY KEY,Customer_Id INT);
INSERT INTO Orders(Id,Customer_Id) VALUES
(2,1),
(1,3);

SELECT * FROM Orders

SELECT NAME AS Customerss FROM Customers LEFT OUTER JOIN Orders ON Customers.Id=Orders.Customer_Id WHERE Customer_Id IS NULL;
