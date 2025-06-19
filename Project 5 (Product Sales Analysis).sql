--Project 5 ( Product Sales Analysis)

CREATE TABLE Productss(ProductName VARCHAR(30),Price DECIMAL(10,2));
INSERT INTO Productss(ProductName,Price) VALUES
('Apple',2.50),
('Banana',1.50),
('Orange',3.00),
('Mango',2.00);

ALTER TABLE Productss
ADD PID INT;
UPDATE Productss SET PID=1 WHERE ProductName='Apple';
UPDATE Productss SET PID=2 WHERE ProductName='Banana';
UPDATE Productss SET PID=3 WHERE ProductName='Orange';
UPDATE Productss SET PID=4 WHERE ProductName='Mango';

 SELECT * FROM Productss
 
 CREATE TABLE Orderss(OrderID INT,ProductID INT,Quantity INT,Sales DECIMAL(10,2));
 INSERT INTO Orderss(OrderID,ProductID,Quantity,Sales) VALUES
 (1,1,10,25.00),
 (2,1,5,12.50),
 (3,2,8,12.00),
 (4,3,12,36.00), 
 (5,4,6,12.00);

SELECT * FROM Orderss

SELECT Productss.ProductName,sum(Orderss.Sales) AS Total_Revenue FROM Productss LEFT OUTER JOIN Orderss ON Productss.PID=Orderss.ProductID GROUP BY ProductName ORDER BY sum(Orderss.Sales) DESC;

