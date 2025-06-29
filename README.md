# 🍕 Pizza Sales Analysis using SQL & Power BI

## 🔥 Project Overview

This project analyzes pizza sales data using SQL and Power BI to uncover insights about revenue, order patterns, and product performance. The goal is to help the business optimize operations, improve marketing strategies, and boost overall sales.

---

## 🎯 Objectives

- Analyze overall sales performance and identify key revenue drivers.
- Understand customer ordering patterns, including peak sales days and months.
- Evaluate pizza category and size preferences to optimize the menu and marketing campaigns.
- Identify best and worst performing pizzas to inform product decisions.

---

## 🗂️ Dataset

The dataset (`pizza_sales.csv`) contains:

- **Order details**: order date, time, order ID
- **Pizza details**: pizza name, category, size, ingredients, quantity
- **Pricing**: unit price and total price

---

## 💻 Steps Performed

### 🔎 Data Preparation & SQL Analysis

- Imported raw CSV data into SQL database.
- Cleaned and structured data (standardized columns, formatted dates).
- Wrote SQL queries to calculate key metrics:
  - Total revenue
  - Total pizzas sold
  - Total orders
  - Average order value
  - Average pizzas per order
  - Daily and monthly trends
  - Sales distribution by category and size
  - Top and bottom performing pizzas by revenue, quantity, and order count

**See** `pizza_sales_query.sql` for detailed queries.

---

### 📊 Power BI Visualization

- Connected cleaned data to Power BI.
- Created an interactive dashboard with:
  - KPI cards
  - Daily & monthly order trends
  - Sales distribution by pizza category and size
  - Best and worst sellers (by revenue, quantity, and orders)
  - Dynamic filters and slicers

---

## 💡 Key Insights

- **Total Revenue:** $817.86K
- **Total Pizzas Sold:** 50K
- **Total Orders:** 21K
- **Average Order Value:** $38.31
- **Average Pizzas per Order:** 2.32

### Sales Trends

- Highest orders on **weekends**, especially Friday and Saturday evenings.
- Peak months: **January and July**.

### Performance by Category and Size

- **Classic pizzas** contribute the highest sales and orders.
- **Large size** pizzas are the most popular.

### Best & Worst Performers

- **Top by Revenue:** Thai Chicken Pizza
- **Top by Quantity & Orders:** Classic Deluxe Pizza
- **Bottom by Revenue & Quantity:** Brie Carre Pizza


