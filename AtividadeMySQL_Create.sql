CREATE DATABASE SIS04T25;

USE SIS04T25;

CREATE TABLE Employees (
			EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
            FirstName VARCHAR(30) NOT NULL,
            LastName VARCHAR(30) NOT NULL,
            BirthDate DATE,
            Photo BLOB,
            Notes VARCHAR(200)
);

CREATE TABLE Shippers (
			ShipperID INT AUTO_INCREMENT PRIMARY KEY,
            ShipperName VARCHAR(60) NOT NULL,
            Phone VARCHAR(11)
);

CREATE TABLE Suppliers (
			SupplierID INT AUTO_INCREMENT PRIMARY KEY,
            SupplierName VARCHAR(60) NOT NULL,
            ContactName VARCHAR(60),
            Address VARCHAR(100) NOT NULL,
            CIty VARCHAR(100) NOT NULL,
            PostalCode VARCHAR(8) NOT NULL,
            Country VARCHAR(100),
            Phone VARCHAR(11)
);

CREATE TABLE Products (
			ProductID INT AUTO_INCREMENT PRIMARY KEY,
            ProductName VARCHAR(30) NOT NULL,
            Unit INT,
            Price DECIMAL(10, 2) NOT NULL,
            Supplier_id INT,
            Category_id INT,
            FOREIGN KEY (Supplier_id) REFERENCES Suppliers (SupplierID),
            FOREIGN KEY (Category_id) REFERENCES Categories (CategoryID)
);

CREATE TABLE Categories (
			CategoryID INT AUTO_INCREMENT PRIMARY KEY,
            CategoryName VARCHAR(20),
            Category_Desc VARCHAR(100)
);

CREATE TABLE Customers (
			CustomerID INT AUTO_INCREMENT PRIMARY KEY,
            CustomerName VARCHAR(60) NOT NULL,
            ContactName VARCHAR(60),
            Address VARCHAR(100) NOT NULL,
            City VARCHAR(100) NOT NULL,
            PostalCode VARCHAR(8) NOT NULL,
            Country VARCHAR(100)
);

CREATE TABLE Orders (
			OrderID INT AUTO_INCREMENT PRIMARY KEY,
            OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            Customer_id INT,
            Employee_id INT,
            Shipper_id INT,
            FOREIGN KEY (Customer_id) REFERENCES Customers (CustomerID),
            FOREIGN KEY (Employee_id) REFERENCES Employees (EmployeeID),
            FOREIGN KEY (Shipper_id) REFERENCES Shippers (ShipperID)
);

CREATE TABLE OrderDetails (
			OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
            Quantity INT NOT NULL,
            Order_id INT,
            Product_id INT,
            FOREIGN KEY (Order_id) REFERENCES Orders (OrderID),
            FOREIGN KEY (Product_id) REFERENCES Products (ProductID)
);









