# 📚 Bookstore-Sales-Inventory-Analysis-using-SQL Server

A SQL-based data analysis project focused on exploring book sales, customer behavior, revenue, and inventory levels using a relational bookstore dataset.

This project demonstrates practical SQL skills such as filtering, sorting, aggregation, joins, GROUP BY, HAVING, DISTINCT, COALESCE, TOP, and business-oriented analysis.

## 🎯 Project Overview

The goal of this project is to analyze bookstore data and answer common business questions related to:

📖 Book catalog and genres

📦 Inventory and remaining stock

🛒 Customer orders and purchase quantities

💰 Revenue and customer spending

👥 Customer ordering behavior

⭐ Best-selling and high-value books

📊 Genre-level sales performance

The analysis is performed using SQL Server.

## 🗂️ Dataset

The project contains three CSV datasets:

Dataset

Records

Description

Books.csv

500

Book details, genre, author, price, publication year, and stock

Customers.csv

500

Customer information including name, email, city, and country

Orders.csv

500

Order details including customer, book, date, quantity, and total amount

Tables

Books

Book_ID

Title

Author

Genre

Published_Year

Price

Stock

Customers

Customer_ID

Name

Email

Phone

City

Country

Orders

Order_ID

Customer_ID

Book_ID

Order_Date

Quantity

Total_Amount

## 🔗 Data Relationships

Customers
    │
    │ Customer_ID
    ▼
 Orders ───────── Book_ID ─────────► Books

One customer can place multiple orders.

A book can appear in multiple orders.

Orders acts as the main transactional table connecting customers and books.


## 🚀 How to Run the Project

1. Install / open SQL Server

Use SQL Server Management Studio (SSMS) or another SQL Server-compatible environment.

2. Create the database

CREATE DATABASE Bookstore;
GO

USE Bookstore;
GO

3. Create the tables

Create the Books, Customers, and Orders tables using the column structure from the CSV files.

4. Load the CSV data

Import the three CSV files into their corresponding tables using the SQL Server Import Wizard or another bulk-loading method.

5. Run the SQL queries

Open Project.sql and execute the queries section by section.

## 📁 Repository Structure

bookstore-sales-inventory-analysis-sql/
│
├── Books.csv
├── Customers.csv
├── Orders.csv
├── Project.sql
└── README.md


## 👨‍💻 Skills Highlighted

SQL Server | Data Analysis | Data Cleaning & Exploration | Joins | Aggregations | Business Analysis | Inventory Analysis | Sales Analysis | Customer Analysis

## ⭐ Project Purpose

This project was created to strengthen practical SQL and data analysis skills by working with a relational bookstore dataset and solving business-oriented analytical questions.

If you find this project useful, consider giving the repository a ⭐.
