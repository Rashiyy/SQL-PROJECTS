--Project 7 (Deleting Duplicate Emails)

CREATE TABLE Emails(ID INT,NAME VARCHAR(30),Email VARCHAR(30),Phone NUMERIC);
INSERT INTO Emails(ID,NAME,Email,Phone) VALUES
(1,'Rahul','rahul@exmple.com',9839473902),
(2,'Rohit','rohit@exmple.com',9883782971),
(3,'Suresh','rahul@exmple.com',7654321098),
(4,'Manish','manish@exmple.com',8927394619),
(5,'Amit','amit@exmple.com',9399303840),
(6,'Rahul','rahul@exmple.com',9737466147);

SELECT * FROM Emails

SELECT DISTINCT ON (Email)* FROM Emails ORDER BY Email;
