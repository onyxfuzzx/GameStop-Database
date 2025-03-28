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
