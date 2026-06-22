# 🗄️ Retail SQL Analytics

[![SQLite](https://img.shields.io/badge/SQLite-Database-003B57)]()
[![SQL](https://img.shields.io/badge/SQL-Analytics-336791)]()
[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717)]()

## 📊 Project Overview

An SQL-focused analytics project built to simulate how a Junior Data Analyst would explore business data using a relational database.

The project uses SQLite and SQL to analyze sales performance, product profitability, and inventory management within a retail food and beverage business.

This project extends the analysis performed in the Retail Business Intelligence Dashboard project and focuses specifically on querying, aggregating, and extracting business insights using SQL.

---

## ✨ Project Snapshot

This project was designed as a practical SQL case study covering:

* sales performance analysis
* revenue and profitability analysis
* inventory monitoring
* stock risk identification
* business-oriented querying
* SQL-based decision support

The goal was not simply to learn SQL syntax, but to understand how SQL can be used to answer real business questions and support data-driven decisions.

---

## 🎯 Business Problem

Retail businesses need quick answers to questions such as:

* Which categories generate the highest sales volume?
* Which categories produce the highest revenue?
* Which products are the most profitable?
* Which items are at risk of stock depletion?
* Are high-profit products adequately stocked?

This project was developed to answer those questions using structured SQL analysis.

---

## 🛠️ Tech Stack

* SQLite
* DB Browser for SQLite
* SQL
* Git
* GitHub
* Visual Studio Code

---

## 🧱 Project Structure

```text
retail-sql-analytics/
│
├── data/
│
├── database/
│   └── retail_sales.db
│
├── sql/
│   ├── 01_basic_queries.sql
│   ├── 02_sales_analysis.sql
│   └── 03_inventory_analysis.sql
│
├── insights/
│   └── business_insights.md
│
├── screenshots/
│
├── README.md
└── .gitignore
```

---

## 📦 Dataset Overview

The dataset contains 1,000 retail transactions and includes:

* Order ID
* Order Date
* Customer ID
* Product Name
* Category
* Price
* Quantity Sold
* Product Cost
* Profit
* Stock Remaining
* Payment Method

The dataset is the same business dataset used in the Retail Business Intelligence Dashboard project, allowing the analysis to be explored from both a SQL and Business Intelligence perspective.

---

## 📈 Analytics Covered

### Sales Analysis

* Sales volume by category
* Revenue by category
* Profit by category
* Top profitable products

### Inventory Analysis

* Low-stock products
* Products at risk of stockout
* Average stock by category
* High-profit products with critical stock levels

---

## 💡 Key Insights

* Sales volume and profitability do not always move together.
* Olive Oil generated strong profitability despite relatively low sales volume.
* Wine emerged as the strongest category in terms of revenue and profit.
* Several highly profitable products were found to have critically low stock levels.
* Inventory monitoring plays a significant role in protecting future revenue.

---

## 🧠 What I Learned

This project helped me practice:

* writing analytical SQL queries
* using aggregate functions
* working with GROUP BY and HAVING
* performing inventory and profitability analysis
* translating business questions into SQL queries
* organizing SQL projects professionally with Git and GitHub

---

## 🔮 Future Improvements

Planned extensions include:

* Customer Analysis
* CASE WHEN statements
* Subqueries
* Common Table Expressions (CTEs)
* SQL Views
* Additional KPI analysis

---

## 👨‍💻 Author

**Francesco Di Cianni**

Junior Data Analyst Portfolio Project

---

## ⭐ Final Note

This project focuses on practical SQL analytics rather than advanced database engineering.

The objective is to demonstrate how SQL can be used to solve realistic business problems, generate insights, and support decision-making processes within a retail environment.
