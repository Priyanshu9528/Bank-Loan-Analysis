Create database Bank_Loan_DB;

use Bank_Loan_DB;

select * from financial_loan;

-- Total Loan Applications 

select count(*) as Total_Loan_Applications from financial_loan;

-- MTD Loan Applications 

SELECT COUNT(id) AS MTD_Loan_Applications 
FROM financial_loan 
WHERE MONTH(STR_TO_DATE(issue_date, '%Y-%m-%d')) = 12;


-- Total Funded Amount

SELECT 
    SUM(loan_amount) AS Total_Funded_Amount
FROM
    financial_loan; 



-- MTD Total Funded Amount

SELECT 
    SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM
    financial_loan
WHERE MONTH(STR_TO_DATE(issue_date, '%Y-%m-%d')) = 12; 

-- Total Amount Received

SELECT 
    SUM(total_payment) AS Total_Amount_Received
FROM
    financial_loan;
 
 
-- MTD Total Amount Received

SELECT 
    SUM(total_payment) AS MTD_Total_Amount_Received
FROM
    financial_loan
WHERE MONTH(STR_TO_DATE(issue_date, '%Y-%m-%d')) = 12;   
   
 
-- Average Interest Rate

SELECT 
    avg(int_rate)*100 AS Avg_Interest_Rate
FROM
    financial_loan; 
    

-- MTD Average Interest Rate

SELECT 
    ROUND(AVG(int_rate) * 100, 2) AS MTD_Avg_Interest_Rate
FROM
    financial_loan
WHERE
    MONTH(STR_TO_DATE(issue_date, '%y-%m-%d')) = 12;    
    
   
-- Average DTI

SELECT 
    ROUND(AVG(dti) * 100, 2) AS Avg_Debt_To_Income
FROM
    financial_loan;   
  
  
-- MTD Average DTI

SELECT 
    ROUND(AVG(dti) * 100, 2) AS MTD_Avg_Debt_To_Income
FROM
    financial_loan
WHERE
    MONTH(STR_TO_DATE(issue_date, '%y-%m-%d')) = 12;   
 
-- -----------------------

-- Good Loan VS Bad Loan

select loan_status from financial_loan;  

-- Good Loan Percentage

select count(case when loan_status = 'Fully')


