
-- Total number of customers
SELECT COUNT(*) FROM telecom_churn;

-- Churn rate by contract type
SELECT Contract, 
       COUNT(*) AS Total_Customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM telecom_churn
GROUP BY Contract;
