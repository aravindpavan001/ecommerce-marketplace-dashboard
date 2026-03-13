  Marketplace Performance Tracker
  
 Project Overview

This project analyses marketplace transaction data from the Olist E-commerce dataset to understand sales performance, customer behaviour, and seller contribution.
Using SQL for data analysis and Power BI for visualisation, the project identifies key business metrics such as revenue trends, top sellers, customer distribution, and order patterns.
The goal is to simulate how a data analyst would analyse marketplace data to support business decision-making.

   Tools & Technologies

. SQL (SQL Server)
. Power BI
. Kaggle Olist E-commerce Dataset
. GitHub for project version control

   Dataset

Source: Olist E-commerce Dataset from Kaggle

Tables used:

. customers
. orders
. order_items
. products
. payments

The dataset contains real marketplace transactions, including customer information, order details, product data, and payment records.

   Project Workflow

1. Downloaded the Olist dataset from Kaggle
2. Created relational database tables using SQL
3. Imported CSV files into the database
4. Performed data exploration and business analysis using SQL queries
5. Exported analytical results for visualisation
6. Built an interactive Power BI dashboard


   Key Business Questions

The project answers the following questions:

. What is the total marketplace revenue (GMV)?
. How do sales change over time?
. Which sellers generate the most revenue?
. Which product categories perform best?
. Which regions generate the most orders?
. What payment methods are most commonly used?
. How many customers make repeat purchases?


   SQL Analysis

Key analyses performed using SQL:

. Total revenue (GMV)
. Monthly sales trends
. Top sellers by revenue
. Product category performance
. Customer purchase behaviour
. Regional order distribution
. Payment method analysis
. Customer lifetime value estimation

All SQL queries used in the analysis are available in:

/SQLQUERY 0.sql


   Dashboard Features

The Power BI dashboard includes:

KPIs

. Total Revenue (GMV)
. Total Orders
. Total Customers
. avg order value

  Visualizations

. Monthly revenue trend
. Top sellers by revenue
. Order distribution by state
. Order status breakdown
. Payment type analysis


   Project Structure

marketplace-performance-tracker

dataset/
dashboard/
screenshots/
sql/analysis_queries.sql
README.md

   Key Insights

. A small group of sellers generates a large portion of the total revenue.
. Sales show clear monthly fluctuations.
. Certain regions contribute significantly more orders.
. Credit card payments dominate the transaction methods.
. Repeat customers contribute a meaningful share of total orders.

Dashboard Preview

[Dashboard Preview](screenshots/dashboard_overview.png)


  Power BI File

The full Power BI (.pbix) file is not included due to GitHub upload size limits.
The dashboard preview and dataset are available in this repository.
 
  Power BI File Download

The Power BI dashboard file can be downloaded here:
[Download PBIX](https://drive.google.com/file/d/1_-l2mHnELvuvpN0rL28lLnY_XBblQOsg/view?usp=drive_link)




