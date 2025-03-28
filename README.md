---

# **GameStop Store Management Database**  

## **Description**  
This project is a **GameStop store management database** designed to efficiently manage store operations, including **customers, products, employees, orders, and inventory tracking**. The database is structured using **SQL** and contains essential tables for handling game sales, stock management, and employee records.  

## **Features**  
✅ **Customer Management** – Store customer details and track their purchases.  
✅ **Product Catalog** – Maintain a list of available games, consoles, and accessories.  
✅ **Order Processing** – Store and process customer orders.  
✅ **Inventory Tracking** – Monitor product stock levels.  
✅ **Employee Records** – Manage store staff details and roles.  
✅ **Order Items Breakdown** – Keep track of individual products in each order.  

## **Database Schema**  
The `whole.sql` file includes the following key tables:  

1. **`customers`** – Stores customer information such as name, contact details, and purchase history.  
2. **`products`** – Maintains game and accessory details including price and stock.  
3. **`employees`** – Tracks staff members, their roles, and work history.  
4. **`orders`** – Stores all sales transactions made by customers.  
5. **`orderitems`** – Links products to orders, specifying quantities and prices.  
6. **`inventory`** – Manages stock levels for all products.  

### **2. `questions.sql`** – SQL Queries for Data Analysis  
This file contains **predefined SQL queries** to extract valuable insights from the database.  

#### **Basic Queries:**  
- List all customers, products, employees, orders, and order items.  
- Retrieve product names and prices.  
- Fetch total order prices and employee positions.  

#### **Subqueries:**  
- Find customers who have spent more than $100.  
- Identify products that have been ordered at least once.  
- Retrieve employees who processed high-value orders (above $500).  
- Get the names of products in the **Console** category.  
- Find customers who purchased a **PlayStation 5 Console**.  

#### **Join Queries:**  
- List all orders with **customer names**.  
- Retrieve order items along with **product names**.  
- Fetch orders processed by specific **employees**.  
- Display orders along with **customer and employee names**.  
- Show inventory changes with **product and employee details**.  


## **Installation & Setup**  
### **1. Clone the Repository**  
```sh
git clone https://github.com/onyxfuzzx/GameStop-Database.git
cd GameStop-Database
```
### **2. Import the Database**  
1. Open MySQL (or any SQL-compatible database).  
2. Run the following command in the SQL terminal:  
   ```sql
   SOURCE gamestop.sql;
   ```
3. Verify that all tables are created successfully.  

## **Technologies Used**  
🛠 **Database:** MySQL

## **Contributing**  
Contributions are welcome! Fork the repository, make improvements, and submit a pull request.  

## **License**  
[MIT License] – Free to use and modify.  

---
