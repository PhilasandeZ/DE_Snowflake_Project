# 🚀 Snowflake Data Engineering Project

A hands-on Data Engineering project built in Snowflake using the Medallion Architecture (Bronze, Silver, Gold). This project demonstrates data ingestion, transformation, validation, and business analytics using SQL and Snowflake.

---

## 📖 Project Overview

The project uses customer, order, and product datasets to simulate a retail sales environment. Data is loaded into Snowflake, processed through multiple layers, and transformed into business-ready insights.

### Objectives
- Import raw CSV files into Snowflake
- Perform data validation and cleansing
- Implement Bronze, Silver, and Gold layers
- Create analytical SQL queries
- Generate business insights from transactional data

---

## 🏗️ Architecture

```text
CSV Files
│
├── customers.csv
├── orders.csv
└── products.csv
        │
        ▼
Bronze Layer
(Raw Data Storage)
        │
        ▼
Silver Layer
(Data Cleaning & Validation)
        │
        ▼
Gold Layer
(Business Reporting & Analytics)
```

---

## 📂 Datasets

### Customers
Stores customer information.

| Field |
|---------|
| Customer ID |
| Customer Name |
| Email |
| Province |
| Signup Date |

✅ 50 Records

---

### Orders
Stores sales transactions.

| Field |
|---------|
| Order ID |
| Customer ID |
| Product ID |
| Quantity |
| Order Date |

✅ 150 Records

---

### Products
Stores product catalogue information.

| Field |
|---------|
| Product ID |
| Product Name |
| Category |
| Unit Price |

✅ Product inventory dataset used for sales analysis.

---

## 🛠️ Technologies Used

- Snowflake
- SQL
- Git
- GitHub
- Visual Studio Code
- CSV Files

---

## 🔧 Data Engineering Tasks

### Data Ingestion
- Loaded CSV files into Snowflake tables
- Validated record counts
- Verified successful imports

### Data Transformation
- Cleaned and standardized datasets
- Removed invalid records
- Applied quality checks

### Analytics Development
- Created business reporting queries
- Performed revenue calculations
- Analyzed customer and product performance

---

## 📊 SQL Skills Demonstrated

- SELECT Statements
- Joins
- Aggregate Functions
- GROUP BY
- ORDER BY
- Calculated Fields
- Revenue Analysis
- Customer Analytics
- Data Validation
- Business Reporting

---

## 📈 Key Business Queries

### Record Validation

```sql
SELECT COUNT(*) AS TOTAL_ROWS
FROM CUSTOMERS_TAB*E;
```

Result: **50 Customers**

```sql
SELECT COUNT(*) AS TOTAL_ROWS
FROM ORDERS_TABLE;
```

Result: **150 Orders**

---

### Revenue Analysis

```sql
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
```

---

### Top 5 Customers by Revenue

```sql
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
```

---

### Revenue by Product Category

```sql
SELECT
    p.CATEGORY,
    SUM(o.QUANTITY * p.UNIT_PRICE) AS TOTAL_REVENUE
FROM ORDERS_TABLE o
JOIN PRODUCTS_TABLE p
    ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY p.CATEGORY;
```

---

## 🎯 Project Outcomes

This project demonstrates the ability to:

✅ Design a Snowflake Data Warehouse

✅ Implement Medallion Architecture

✅ Perform Data Cleaning and Validation

✅ Build SQL-Based Analytics

✅ Create Business Reporting Solutions

✅ Transform Raw Data into Actionable Insights

---

## 📁 Repository Structure

```text
Snowflake-Data-Engineering-Project
│
├── customers.csv
├── orders.csv
├── products.csv
├── DE_Snowflake_Project.sql
└── README.md
```

---

## 👨‍💻 Author

**Phila Zungu**

Aspiring Data Engineer with practical experience in:

- Snowflake
- SQL
- Data Warehousing
- ETL/ELT Pipelines
- Analytics & Reporting
- Git & GitHub
- Cloud Data Platforms

---

⭐ If you found this project useful, feel free to star the repository.
