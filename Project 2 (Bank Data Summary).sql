--Project 2(Bank Account Summary)

CREATE TABLE bank_data(AccountNumber INT,AccountHolderName VARCHAR(30),TransactionDate date,TransactionType VARCHAR(30),TransactionAmount DECIMAL(10,2));

INSERT INTO bank_data(AccountNumber,AccountHolderName,TransactionDate,TransactionType,TransactionAmount) VALUES
(1001,'Ravi Sharma','2023-07-01','Deposit',5000.00),
(1001,'Ravi Sharma','2023-07-05','Withdrawal',1000.00),
(1001,'Ravi Sharma','2023-07-10','Deposit',2000.00),
(1002,'Priya Gupta','2023-07-12','Deposit',3000.00),
(1002,'Priya Gupta','2023-07-08','Withdrawal',500.00),
(1003,'Vikram Patel','2023-07-04','Deposit',10000.00),
(1003,'Vikram Patel','2023-07-09','Withdrawal',2000.00);

SELECT AccountNumber,AccountHolderName,sum(CASE WHEN TransactionType = 'Deposit' THEN TransactionAmount ELSE 0 END)-sum(CASE WHEN TransactionType = 'Withdrawal' THEN TransactionAmount ELSE 0 END)
AS Totalbalance FROM bank_data GROUP BY AccountNumber,AccountHolderName ORDER BY AccountNumber