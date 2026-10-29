🚀 Snowflake Data Engineering Project
📌 Project Overview
This project demonstrates the implementation of a modern Data Engineering solution using Snowflake and SQL. The objective was to ingest raw business data, apply transformations, and create analytical datasets using the Medallion Architecture (Bronze, Silver, and Gold layers).

The project simulates a retail sales environment containing customer, product, and order data, which is transformed into business-ready insights for reporting and decision-making.

🏗️ Architecture
Bronze Layer
Raw data ingested from CSV files into Snowflake tables.

Silver Layer
Data cleaning, validation, and standardization.

Gold Layer
Business-focused analytical queries and reporting tables.

CSV Files
    ↓
Bronze Layer
    ↓
Silver Layer
    ↓
Gold Layer
    ↓
Business Insights & Reporting
📂 Datasets
Customers
Contains customer information including:

Customer ID
Customer Name
Email Address
Province
Signup Date
Total Records: 50

Orders
Contains transactional sales information including:

Order ID
Customer ID
Product ID
Quantity
Order Date
Total Records: 150

Products
Contains product catalog information including:

Product ID
Product Name
Category
Unit Price
Total Records: Product inventory dataset used for sales analysis.

🛠️ Technologies Used
Snowflake
SQL
Git
GitHub
Visual Studio Code
CSV Data Sources
📈 Data Engineering Skills Demonstrated
Data Ingestion
Loading CSV files into Snowflake
Managing structured datasets
Data validation after ingestion
Data Transformation
Cleaning incomplete records
Data standardization
Data quality checks
SQL Development
SELECT Statements
Filtering and Sorting
Aggregate Functions
GROUP BY
ORDER BY
Joins
Calculated Columns
Business Metrics
🔍 Analytical Queries
Record Validation
Validated successful data loading into Snowflake:

SELECT COUNT(*) AS total_rows
FROM CUSTOMERS_TAB*E;
Result: 50 Customers

SELECT COUNT(*) AS total_rows
FROM ORDERS_TABLE;
Result: 150 Orders

Revenue Analysis
Calculated revenue generated per transaction:

SELECT
    c.CUSTOMER_NAME,
    p.PRODUCT_NAME,
    p.CATEGORY,
    o.QUANTITY,
    p.UNIT_PRICE,
    o.QUANTITY * p.UNIT_PRICE AS LINE_REVENUE
FROM ORDERS_TABLE o
JOIN CUSTOMERS_TABLE c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID
JOIN PRODUCTS_TABLE p
    ON o.PRODUCT_ID = p.PRODUCT_ID;
Top Customers by Revenue
Identified the highest-spending customers:

SELECT
    c.CUSTOMER_NAME,
    SUM(o.QUANTITY * p.UNIT_PRICE) AS TOTAL_SPEND
FROM ORDERS_TABLE o
JOIN CUSTOMERS_TABLE c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID
JOIN PRODUCTS_TABLE p
    ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY c.CUSTOMER_NAME
ORDER BY TOTAL_SPEND DESC
LIMIT 5;
Revenue by Product Category
Analyzed revenue contribution by product category:

SELECT
    p.CATEGORY,
    SUM(o.QUANTITY * p.UNIT_PRICE) AS TOTAL_REVENUE
FROM ORDERS_TABLE o
JOIN PRODUCTS_TABLE p
    ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY p.CATEGORY;
Product Performance Analysis
Measured product sales performance using revenue and order quantities.

🎯 Key Learning Outcomes
Through this project, I gained practical experience in:

Building Snowflake databases and schemas
Working with real-world datasets
Implementing Medallion Architecture
Data cleansing and validation
Writing analytical SQL queries
Performing multi-table joins
Creating business-ready datasets
Developing reporting solutions
💡 Business Value
The Gold Layer enables stakeholders to:

Identify top-performing customers
Analyze product sales trends
Monitor category performance
Measure business revenue
Support data-driven decision-making
📚 Repository Contents
├── customers.csv
├── orders.csv
├── products.csv
├── DE_Snowflake_Project.sql
└── README.md
👨‍💻 Author
Phila Zungu

Aspiring Data Engineer focused on Snowflake, SQL, Data Warehousing, ETL/ELT Development, and Cloud Data Platforms.

Core Skills
Snowflake
SQL
Data Engineering
ETL/ELT Pipelines
Data Warehousing
Git & GitHub
Analytics & Reporting
Medallion Architecture
