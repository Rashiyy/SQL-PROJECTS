--Project 4 (Market Analysis)

CREATE TABLE Sales_Data(CustomersID INT,ProductID VARCHAR(20),PurchaseDate date,Quantity INT,Revenue DECIMAL(10,2));
INSERT INTO Sales_Data (CustomersID,ProductID,PurchaseDate,Quantity,Revenue) VALUES 
(1,'A','2023-01-01',5,100.00),
(2,'B','2023-01-02',3,50.00),
(3,'A','2023-01-03',2,30.00),
(4,'C','2023-01-03',1,20.00),
(1,'B','2023-01-04',4,80.00);

SELECT * FROM Sales_Data

(1) SELECT sum(Revenue) AS Total_Revenue FROM Sales_Data;

(2) SELECT ProductID,sum(Quantity) AS Total_Quantity,sum(Revenue) AS Total_Revenue FROM Sales_Data GROUP BY ProductID ORDER BY ProductID;

(3) SELECT CustomersID,sum(Revenue) AS Total_Revenue FROM Sales_Data GROUP BY CustomersID ORDER BY CustomersID;