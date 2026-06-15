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