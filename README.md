
---

## Project Overview
This project uses SQL to analyze retail sales, customer behaviour, and product performance from the H+ Sport e-commerce dataset. Each query shows how I used SQL tools like filtering, joins, grouping, and CTEs to find and analyze useful insights from the data.

The dataset includes four main tables:
- **Customer** – customer demographic and contact information  
- **Orders** – transaction details and dates  
- **OrderItem** – product quantity and sales per order  
- **Product** – product details such as size, variety, and status  

---
## Objectives
- Find out which products, regions, and customers bring in the most revenue  
- Check customer loyalty and repeat purchase rate 
- Spot products that are often bought together to plan cross-selling ideas  
- Identify inactive or one-time customers to target with re-engagement campaigns  
- Practice using SQL for real business questions and retail data problems  
---

## Challenges & How I Solved Them
| Challenge | How It Was Solved |
|------------|------------------|
| The dataset has NULL values in customer information. | Used `Where Email Is Not Null And Phone Is Not Null` to clean the dataset. |
| Difficulty linking customer, order, and product data across multiple tables. | Applied `Inner` and `Left Join` statements using consistent keys (CustomerID, OrderID, ProductID). |
| Wanted to analyze repeat and new customers efficiently. | Created a CTE to group customers by order count and calculate repeat-customer rate. |
| Needed to detect product relationships (frequently bought together). | Used a self-join on `OrderItem` to identify pairs of products purchased in the same order. |

---

## Patterns & Final Insights
- **Customer Behaviour:** Around 25% customers make repeat purchases. It's a good sign for loyalty building programs.  
- **Product Trends:** Medium-size products sell the best, with grape and lemon flavours being the top sellers.
- **Regional Insight:** A few states stand out with much higher order volumes, great targets for focused marketing.  
- **Cross-Sell Potential:** Products like mineral water and energy bars are often bought together, which could be bundled for promotions.  
- **Final Suggestion:**  
Keep loyal customers engaged, create bundle deals for popular product pairs, and run reactivation offers for inactive customers.

---
## Folder Structure
- **01_X:** Data Inspection & Cleaning  
- **02_X:** Sales Analysis  
- **03_X:** Customer Insights  

---
## Skills Demonstrated
- Data cleaning & validation  
- Aggregation & summarization  
- Complex joins & subqueries  
- Common Table Expressions (CTEs)  
- Business-driven data insights  

---
