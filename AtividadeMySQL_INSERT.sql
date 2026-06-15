USE SIS04T25;

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