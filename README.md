# Sql_Powerbi_overallsales_analytics
## Project Overview 
A comprehensive overall sales analytics project using SQL for data extraction and transformation, and Power BI for dynamic visualization.

## Dataset used
<a href= "https://github.com/Manjari0522/sql_powerbi_retailsales_analytics/blob/main/retailsales.csv.zip">Retail Sales data</a>

## Tools & Technologies
SQL (MySQL) – Data querying and transformation
Power BI – Dashboard development and visualization
DAX – For calculated metrics and custom measures in Power BI

 ## SQL Usage Highlights
The sales_queries.sql file includes mainly following domains- 

-Joins across order, customer, product, and warehouse tables
-Aggregate queries for total revenue, gross profit, unit price, AOV
-Monthly trend extraction for gross profit
-Ranking and grouping by customer, channel, and product

## Power Bi Features 

-Key Questions Answered
1. What is the overall sales performance?
2. Which warehouses and channels are contributing most to total revenue?
3. How are gross profits trending over the months?
4. Which customers and products are driving the most revenue?
5. What are the average shipping days and unit prices?
6. How does AOV (Average Order Value) vary by delivery region?

<a href="https://github.com/Manjari0522/sql_powerbi_retailsales_analytics/blob/main/retailsales.dashboard.png">Dashboard review</a>

## Insights

 -Total Revenue: $154.57M generated from 7,991 orders across 50 customers.
 -Top Revenue Channel: Export (53% of total revenue).
 -Best Performing Warehouse: GUT930 (47.27% contribution).
 -High-Performing Products: ProductIDs 1, 4, and 9 show the highest unit price contributions.
 -Gross Profit Trends: Peaks observed around the 4th and 9th months, suggesting seasonal demand.
 -Average Shipping Days: 10.44 days—an important logistics metric.
 -Customer Behavior: Some customers placed up to 200 orders, while others remained low-volume buyers.
 -Delivery Region Impact: AOV fluctuates widely, with a concentration around the 0.6M to 0.8M range.

 ## Conclusion
 
This project effectively demonstrates how combining SQL for data extraction and Power BI for visualization can provide actionable insights into retail sales performance. By analyzing key metrics such as revenue, gross profit, customer behavior, and product trends, the dashboard helps businesses identify growth opportunities, optimize operations, and make data-driven decisions
