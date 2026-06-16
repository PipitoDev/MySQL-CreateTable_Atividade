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
/* Tabelas que Receberão informações das PRIMARY KEY */
CREATE TABLE Products (
			ProductID INT AUTO_INCREMENT PRIMARY KEY,
            ProductName VARCHAR(30) NOT NULL,
            Unit INT,
            Price DECIMAL(10, 2) NOT NULL,
            Supplier_id INT,
            Category_id INT
);

CREATE TABLE Orders (
			OrderID INT AUTO_INCREMENT PRIMARY KEY,
            OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            Customer_id INT,
            Employee_id INT,
            Shipper_id INT
);

CREATE TABLE OrderDetails (
			OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
            Quantity INT NOT NULL,
            Order_id INT,
            Product_id INT
);

ALTER TABLE Products
ADD CONSTRAINT fk_supplier_id
FOREIGN KEY (Supplier_id) REFERENCES Suppliers (SupplierID),
ADD CONSTRAINT fk_category_id
FOREIGN KEY (Category_id) REFERENCES Categories (CategoryID);

ALTER TABLE Orders
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (Customer_id) REFERENCES Customers (CustomerID),
ADD CONSTRAINT fk_employee_id
FOREIGN KEY (Employee_id) REFERENCES Employees (EmployeeID);

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_order_id
FOREIGN KEY (Order_id) REFERENCES Orders (OrderID),
ADD CONSTRAINT fk_product_id
FOREIGN KEY (Product_id) REFERENCES Products (ProductID);

-- Inserindo Employees
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Gabriel', 'Silva', '2006-10-18', NULL, 'Funcionário qualificado do setor 2.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Lucas', 'Santos', '1999-03-30', NULL, 'Funcionário qualificado do setor 2.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Ana', 'Oliveira', '1992-05-22', NULL, 'Funcionário qualificado do setor 4.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Julia', 'Souza', '1982-09-03', NULL, 'Funcionário qualificado do setor 5.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Mateus', 'Rodrigues', '2010-11-16', NULL, 'Funcionário qualificado do setor 2.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Beatriz', 'Ferreira', '2008-03-10', NULL, 'Funcionário qualificado do setor 5.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Pedro', 'Almeida', '1987-09-09', NULL, 'Funcionário qualificado do setor 4.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Larissa', 'Pereira', '1982-03-12', NULL, 'Funcionário qualificado do setor 5.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('thiago', 'Carvalho', '2000-10-10', NULL, 'Funcionário qualificado do setor 3.');
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES ('Mariana', 'Gomes', '1986-07-10', NULL, 'Funcionário qualificado do setor 5.');

-- Inserindo Shippers
INSERT INTO Shippers (ShipperName, Phone) VALUES ('LogExpress', '11963856049');
INSERT INTO Shippers (ShipperName, Phone) VALUES ('RapidoTrans', '11927949549');
INSERT INTO Shippers (ShipperName, Phone) VALUES ('SulEntrega', '11913915620');
INSERT INTO Shippers (ShipperName, Phone) VALUES ('GlobalLog', '11945107719');
INSERT INTO Shippers (ShipperName, Phone) VALUES ('AlfaFretes', '11974767621');

-- Inserindo Suppliers
INSERT INTO Suppliers (SupplierName, ContactName, Address, CIty, PostalCode, Country, Phone) VALUES ('Distribuidora Alfa', 'Contato 1', 'Rua das Flores, 263', 'São Paulo', '01234767', 'Brasil', '11340823546');
INSERT INTO Suppliers (SupplierName, ContactName, Address, CIty, PostalCode, Country, Phone) VALUES ('TechSupply', 'Contato 2', 'Rua das Flores, 824', 'São Paulo', '01234429', 'Brasil', '11330784669');
INSERT INTO Suppliers (SupplierName, ContactName, Address, CIty, PostalCode, Country, Phone) VALUES ('Alimentos Norte', 'Contato 3', 'Rua das Flores, 826', 'São Paulo', '01234583', 'Brasil', '11315396955');
INSERT INTO Suppliers (SupplierName, ContactName, Address, CIty, PostalCode, Country, Phone) VALUES ('Global Imports', 'Contato 4', 'Rua das Flores, 740', 'São Paulo', '01234843', 'Brasil', '11343471375');
INSERT INTO Suppliers (SupplierName, ContactName, Address, CIty, PostalCode, Country, Phone) VALUES ('Indústria Fênix', 'Contato 5', 'Rua das Flores, 461', 'São Paulo', '01234859', 'Brasil', '11325681222');

-- Inserindo Categories
INSERT INTO Categories (CategoryName, Category_Desc) VALUES ('Eletrônicos', 'Dispositivos e acessórios');
INSERT INTO Categories (CategoryName, Category_Desc) VALUES ('Alimentos', 'Produtos perecíveis e não perecíveis');
INSERT INTO Categories (CategoryName, Category_Desc) VALUES ('Vestuário', 'Roupas e calçados');
INSERT INTO Categories (CategoryName, Category_Desc) VALUES ('Limpeza', 'Produtos de higiene e limpeza');
INSERT INTO Categories (CategoryName, Category_Desc) VALUES ('Escritório', 'Materiais de escritório');

-- Inserindo Customers
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('João Modas', 'Gerente Gabriel', 'Avenida Central, 12', 'Rio de Janeiro', '20000285', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Mercado Central', 'Gerente Lucas', 'Avenida Central, 232', 'Rio de Janeiro', '20000591', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Clínica Vida', 'Gerente Ana', 'Avenida Central, 334', 'Rio de Janeiro', '20000169', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Auto Peças Silva', 'Gerente Julia', 'Avenida Central, 169', 'Rio de Janeiro', '20000352', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Construtora Forte', 'Gerente Mateus', 'Avenida Central, 107', 'Rio de Janeiro', '20000967', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Bazar do Bairro', 'Gerente Beatriz', 'Avenida Central, 331', 'Rio de Janeiro', '20000187', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Padaria Pão Quente', 'Gerente Pedro', 'Avenida Central, 313', 'Rio de Janeiro', '20000977', 'Brasil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Restaurante Sabor', 'Gerente Larissa', 'Avenida Central, 110', 'Rio de Janeiro', '20000283', 'Brasil');

-- Inserindo Products
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Notebook', 1, 3500.0, 2, 1);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Smartphone', 1, 1999.9, 2, 1);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Arroz 5kg', 10, 25.5, 3, 2);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Feijão 1kg', 20, 8.9, 3, 2);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Camiseta Blusa', 5, 49.9, 5, 3);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Calça Jeans', 2, 119.9, 5, 3);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Detergente', 24, 2.2, 1, 4);
INSERT INTO Products (ProductName, Unit, Price, Supplier_id, Category_id) VALUES ('Caderno 10 Matérias', 12, 18.5, 2, 5);

-- Inserindo Orders
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (6, 4, 5);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (1, 3, 2);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (7, 3, 2);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (7, 4, 5);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (1, 5, 5);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (8, 9, 5);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (7, 10, 4);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (1, 3, 5);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (5, 6, 3);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (1, 2, 4);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (8, 4, 4);
INSERT INTO Orders (Customer_id, Employee_id, Shipper_id) VALUES (1, 2, 4);

-- Inserindo OrderDetails
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 1, 6);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (4, 1, 2);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 2, 3);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (4, 2, 8);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (3, 2, 2);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (5, 3, 7);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (5, 4, 8);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (4, 4, 1);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 4, 4);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 5, 2);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (1, 5, 5);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 6, 2);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (3, 7, 3);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 8, 3);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (3, 8, 1);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 8, 7);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (1, 9, 7);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (1, 9, 2);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 9, 7);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (2, 10, 4);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (4, 11, 6);
INSERT INTO OrderDetails (Quantity, Order_id, Product_id) VALUES (1, 12, 7);

SELECT EmployeeID AS 'ID do Funcionário',
	   CONCAT(FirstName, ' | ', LastName) AS 'Primeiro | Último Nome',
       DATE_FORMAT(BirthDate, '%d/%m/%Y') AS 'Data de Nascimento',
       CAST(IFNULL(Photo, 'Sem foto') AS CHAR) AS 'Foto do Funcionário',
       Notes AS 'Informação do Funcionário'
FROM Employees;

SELECT ShipperID AS 'ID do Expedidor',
	   ShipperName AS 'Nome do Expedidor',
       Phone AS 'Telefone'
FROM Shippers;

SELECT ProductID AS 'ID do Produto',
	   ProductName AS 'Nome do Produto',
       Unit AS 'Unidades',
       CONCAT('R$', Price) AS 'Preço',
       Category_id AS 'ID da Categoria',
       Supplier_id AS 'ID do Fornecedor'
FROM Products;

SELECT CategoryID AS 'ID da Categoria',
	   CategoryName AS 'Nome da Categoria',
       Category_Desc AS 'Descrinção'
FROM Categories;

SELECT CustomerID AS 'ID da Loja',
	   CustomerName AS 'Nome da Loja ',
       IFNULL(ContactName, 'Sem nome de contato') AS 'Nome de Contato',
       Address AS 'Endereço',
       City AS 'Cidade',
       PostalCode AS 'Código Postal(CEP)',
       Country AS  'País'
FROM Customers;

SELECT OrderID AS 'ID do Pedido',
	   DATE_FORMAT(OrderDate, '%d/%m/%Y') AS 'Data do Pedido',
       Customer_id AS 'ID da Loja',
       Employee_id AS 'ID do Funcionário',
       Shipper_id AS 'ID Do Expedidor'
FROM Orders;

SELECT OrderDetailID AS 'ID do Detalhe do Pedido',
	   Product_id AS 'ID do Produto Pedido',
	   Quantity AS 'Quantidade do Pedido',
       Order_id AS 'ID do Pedido'
FROM OrderDetails;

DROP DATABASE SIS04T25;








