--Identify the top 5 customer segments based on average monthly revenue
SELECT customer_segment, AVG(monthly_revenue) AS avg_monthly_revenue
FROM customers
GROUP BY customer_segment
ORDER BY avg_monthly_revenue DESC
LIMIT 5;

--Determine the churn rate for customers who have been with the company for more than 2 years
SELECT 
    COUNT(CASE WHEN churn = 1 THEN 1 END) / COUNT(*) AS churn_rate
FROM customer_data
WHERE tenure > 24;

--Analyze the average data usage per customer by service plan
SELECT service_plan, AVG(data_usage) AS avg_data_usage
FROM usage_data
GROUP BY service_plan;

--Calculate the CLTV(Customer Lifetime Value) for customers based on their tenure, average monthly revenue, and churn rate
WITH Customer_Data AS (
    SELECT customer_id, tenure, AVG(monthly_revenue) AS avg_monthly_revenue, churn
    FROM customer_data
    GROUP BY customer_id
)
SELECT customer_id, avg_monthly_revenue * tenure * (1 - churn) AS CLTV
FROM Customer_Data;

--Evaluate the impact of a recent promotional campaign on customer acquisition and revenue
SELECT 
    COUNT(CASE WHEN promotion_code IS NOT NULL THEN 1 END) AS new_customers_from_promotion,
    SUM(CASE WHEN promotion_code IS NOT NULL THEN monthly_revenue END) AS promotion_revenue
FROM customer_data
WHERE promotion_date BETWEEN '2024-01-01' AND '2024-03-31';

--Identify the peak hours for voice and data usage
SELECT 
    EXTRACT(HOUR FROM call_time) AS hour,
    AVG(call_duration) AS avg_call_duration,
    AVG(data_usage) AS avg_data_usage
FROM usage_data
GROUP BY hour
ORDER BY avg_call_duration DESC, avg_data_usage DESC;

--Analyze customer satisfaction ratings based on different demographic factors (e.g., age, income)
SELECT 
    age_group, income_level, AVG(satisfaction_rating) AS avg_satisfaction
FROM customer_surveys
GROUP BY age_group, income_level;

--Identify customers who are potential candidates for upgrading their service plans
SELECT 
    customer_id, current_plan, recommended_plan
FROM customer_data
WHERE data_usage > (SELECT AVG(data_usage) FROM usage_data WHERE service_plan = 'recommended_plan');

--Detect unusual patterns in call records or data usage that might indicate fraudulent activity
SELECT 
    customer_id, call_duration, data_usage
FROM usage_data
WHERE call_duration > (SELECT AVG(call_duration) FROM usage_data) * 3
    OR data_usage > (SELECT AVG(data_usage) FROM usage_data) * 3;
    
    
--Evaluate network performance metrics (e.g., call drop rate, data transfer speed) by region  
SELECT 
    region, 
    COUNT(CASE WHEN call_status = 'dropped' THEN 1 END) / COUNT(*) AS drop_rate,
    AVG(data_transfer_speed) AS avg_speed
FROM network_data
GROUP BY region;








