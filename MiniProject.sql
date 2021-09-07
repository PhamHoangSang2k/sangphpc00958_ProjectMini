create database MiniProject;
use MiniProject;

drop database MiniProject;

CREATE TABLE Accounts(
	Username nvarchar(50) not null primary key,
    Password nvarchar(50) not null,
    Fullname nvarchar(50) not null,
    Email nvarchar(50) not null,
    Photo nvarchar(50) not null
) ENGINE = InnoDB;
select * from Accounts;
drop table Accounts;

CREATE TABLE Authorities(
     Id int not null primary key AUTO_INCREMENT,
     Username nvarchar(50) not null,
     RoleId nvarchar(10) not null
)ENGINE = InnoDB;
drop table Authorities;

CREATE TABLE Categories(
     Id char(4) not null primary key,
     Name nvarchar(50) not null
)ENGINE = InnoDB;
drop table Categories;


CREATE TABLE Products(
     Id int not null primary key auto_increment,
     Name nvarchar(50) not null,
     Image nvarchar(50) not null,
     Price float not null,
     CreateDate date NOT NULL,
     Available bit not null,
     CategoryId char(4) not null
)ENGINE = InnoDB;
drop table Products;

CREATE TABLE Roles(
     Id nvarchar(10) not null primary key,
     Name nvarchar(50) not null
)ENGINE = InnoDB;
drop table Roles;

CREATE TABLE OrderDetails(
	Id bigint NOT NULL PRIMARY KEY auto_increment,
	OrderId bigint NOT NULL,
	ProductId int NOT NULL,
	Price float NOT NULL,
	Quantity int NOT NULL
)ENGINE = InnoDB;
drop table OrderDetails;

CREATE TABLE Orders(
	Id bigint  NOT NULL primary key auto_increment,
	Username nvarchar(50) NOT NULL,
	CreateDate datetime NOT NULL,
	Address nvarchar(100) NOT NULL
)ENGINE = InnoDB;
drop table Orders;

insert into Roles values
('ADMIN','Admin'),
('PM','Project Manager'),
('USER','User');

INSERT Accounts (Username, Password, Fullname, Email, Photo) VALUES ('hsang','123','Pham Hoang Sang','tunh@gmail.com','a.jpg');
INSERT Accounts (Username, Password, Fullname, Email, Photo) VALUES ('nva','123','Nguyễn văn a','anv@gmail.com','b.jpg');
INSERT Accounts (Username, Password, Fullname, Email, Photo) VALUES ('nvb','123','Nguyễn văn b','bnv@gmail.com','b1.jpg');

INSERT Authorities (Id, Username, RoleId) VALUES ('101','hsang','ADMIN');
INSERT Authorities (Id, Username, RoleId) VALUES ('102','nva','USER');
INSERT Authorities (Id, Username, RoleId) VALUES ('103','nvb','PM');


INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100005, 10249, 1001, 42.4, 40);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100006, 10250, 1002, 7.7, 10);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100007, 10250, 1003, 42.4, 35);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100008, 10250, 1004, 16.8, 15);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100009, 10251, 1005, 16.8, 6);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100010, 10251, 1006, 15.6, 15);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100011, 10251, 1007, 16.8, 20);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100012, 10252, 1008, 64.8, 40);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100013, 10252, 1009, 2, 25);
INSERT OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (100014, 10252, 1010, 27.2, 40);

INSERT Categories (Id, Name) VALUES (N'1000', N'Đồng hồ đeo tay');
INSERT Categories (Id, Name) VALUES (N'1001', N'Máy tính xách tay');
INSERT Categories (Id, Name) VALUES (N'1002', N'Máy ảnh');
INSERT Categories (Id, Name) VALUES (N'1003', N'Điện thoại');
INSERT Categories (Id, Name) VALUES (N'1004', N'Nước hoa');
INSERT Categories (Id, Name) VALUES (N'1005', N'Nữ trang');
INSERT Categories (Id, Name) VALUES (N'1006', N'Nón thời trang');
INSERT Categories (Id, Name) VALUES (N'1007', N'Túi xách du lịch');


INSERT Orders (Id, Username, CreateDate, Address) VALUES (10249, N'hsang', CAST('2021-09-03 00:00:00'AS DateTime), N'Luisenstr. 48');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10250, N'hsang', CAST('2021-09-03 00:00:00' AS DateTime), N'Rua do Paço, 67');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10251, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'2, rue du Commerce');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10252, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'Boulevard Tirou, 255');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10253, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'Rua do Paço, 67');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10254, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'Hauptstr. 31');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10255, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'Starenweg 5');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10256, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'Rua do Mercado, 12');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10257, N'nva', CAST('2021-09-03 00:00:00' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35');
INSERT Orders (Id, Username, CreateDate, Address) VALUES (10258, N'nvb', CAST('2021-09-03 00:00:00' AS DateTime), N'Kirchgasse 6');

INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1001, N'Aniseed Syrup', N'1001.jpg', 190, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1002, N'Change', N'1002.jpg', 19, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1003, N'Aniseed Syrup', N'1003.jpg', 10, CAST('2021-09-02' AS Date), 1, N'1001');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId)VALUES (1004, N'Chef Anton''s Cajun Seasoning', N'1004.jpg', 22, CAST('2021-09-02' AS Date), 0, N'1001');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId)VALUES (1005, N'Chef Anton''s Gumbo Mix', N'1005.jpg', 21.35, CAST('2021-09-02' AS Date), 1, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId)VALUES (1006, N'Grandma''s Boysenberry Spread', N'1006.jpg', 25, CAST('2021-09-02' AS Date), 0, N'1001');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1007, N'Uncle Bob''s Organic Dried Pears', N'1007.jpg', 30, CAST('2021-09-02' AS Date), 0, N'1006');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1008, N'Northwoods Cranberry Sauce', N'1008.jpg', 40, CAST('2021-09-02' AS Date), 0, N'1001');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1009, N'Mishi Kobe Niku', N'1009.jpg', 97, CAST('2021-09-02' AS Date), 0, N'1005');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1010, N'Ikura', N'1010.jpg', 31, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1011, N'Queso Cabrales', N'1011.jpg', 21, CAST('2021-09-02' AS Date), 0, N'1003');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1012, N'Queso Manchego La Pastora', N'1012.jpg', 38, CAST('2021-09-02' AS Date), 1, N'1003');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1013, N'Konbu', N'1013.jpg', 6, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1014, N'Tofu', N'1014.jpg', 23.25, CAST('2021-09-02' AS Date), 1, N'1006');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1015, N'Genen Shouyu', N'1015.jpg', 15.5, CAST('2021-09-02' AS Date), 0, N'1001');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1016, N'Pavlova', N'1016.jpg', 17.45, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1017, N'Alice Mutton', N'1017.jpg', 39, CAST('2021-09-02' AS Date), 1, N'1005');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1018, N'Carnarvon Tigers', N'1018.jpg', 62.5, CAST('2021-09-02' AS Date), 1, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1019, N'Teatime Chocolate Biscuits', N'1019.jpg', 9.2, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1020, N'Sir Rodney''s Marmalade', N'1020.jpg', 81, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1021, N'Sir Rodney''s Scones', N'1021.jpg', 10, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1022, N'Gustaf flower', N'1022.jpg', 21, CAST('2021-09-02' AS Date), 1, N'1004');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1023, N'Tunnbr Korea', N'1023.jpg', 9, CAST('2021-09-02' AS Date), 1, N'1004');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1024, N'Guarana¡ Fanta¡stica', N'1024.jpg', 4.5, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1025, N'NuNuCa Nuaa-Nougat-Creme', N'1025.jpg', 14, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1026, N'Gumbar Gummibarchen', N'1026.jpg', 31.23, CAST('2021-09-02' AS Date), 1, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1027, N'Schoggi Schokolade', N'1027.jpg', 43.9, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1028, N'Russle Sauerkraut', N'1028.jpg', 45.6, CAST('2021-09-02' AS Date), 1, N'1006');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1029, N'Tharinger Rostbratwurst', N'1029.jpg', 123.79, CAST('2021-09-02' AS Date), 0, N'1005');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1030, N'Nord-Ost Matjeshering', N'1030.jpg', 25.89, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1031, N'Gorgonzola Telino', N'1031.jpg', 12.5, CAST('2021-09-02' AS Date), 0, N'1003');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1032, N'Mascarpone Fabioli', N'1032.jpg', 32, CAST('2021-09-02' AS Date), 0, N'1003');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1033, N'Geitost', N'1033.png', 2.5, CAST('2021-09-02' AS Date), 0, N'1003');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1034, N'Sasquatch Ale', N'1034.jpg', 14, CAST('2021-09-02' AS Date), 1, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1035, N'Steeleye Stout', N'1035.jpg', 18, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1036, N'Inlagd Sill', N'1036.jpg', 19, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1037, N'Gravad lax', N'1037.jpg', 26, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1038, N'Cate de Blaye', N'1038.jpg', 263.5, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1039, N'Chartreuse verte', N'1039.jpg', 18, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1040, N'Boston Crab Meat', N'1040.jpg', 18.4, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1041, N'Jack''s New England Clam Chowder', N'1041.jpg', 9.65, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1042, N'Singaporean Hokkien Fried Mee', N'1042.jpg', 14, CAST('2021-09-02' AS Date), 0, N'1004');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1043, N'Ipoh Coffee', N'1043.jpg', 46, CAST('2021-09-02' AS Date), 0, N'1000');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1044, N'Gula Malacca', N'1044.jpg', 19.45, CAST('2021-09-02' AS Date), 0, N'1001');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1045, N'Rogede sild', N'1045.jpg', 9.5, CAST('2021-09-02' AS Date), 1, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1046, N'Spegesild', N'1046.jpg', 12, CAST('2021-09-02' AS Date), 0, N'1007');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1047, N'Zaanse koeken', N'1047.jpg', 9.5, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1048, N'Chocolade', N'1048.jpg', 12.75, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1049, N'Maxilaku', N'1049.jpg', 20, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1050, N'Valkoinen suklaa', N'1050.jpg', 16.25, CAST('2021-09-02' AS Date), 0, N'1002');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1051, N'Manjimup Dried Apples', N'1051.jpg', 53, CAST('2021-09-02' AS Date), 0, N'1006');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1052, N'Filo Mix', N'1052.jpg', 7, CAST('2021-09-02' AS Date), 0, N'1004');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1053, N'Perth Pasties', N'1053.jpg', 32.8, CAST('2021-09-02' AS Date), 0, N'1005');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1054, N'Tourtiare', N'1054.jpg', 7.45, CAST('2021-09-02' AS Date), 1, N'1005');
INSERT Products (Id, Name, Image, Price, CreateDate, Available, CategoryId) VALUES (1055, N'Pacta chinois', N'1055.jpg', 24, CAST('2021-09-02' AS Date), 0, N'1005');

select * from Categories;
select * from Products;
select * from Roles;
select * from Authorities;
select * from Accounts;


ALTER TABLE Products  ADD  CONSTRAINT FK_CategoryId FOREIGN KEY(CategoryId)
REFERENCES Categories (Id) ON DELETE CASCADE ;

ALTER TABLE Authorities  ADD  CONSTRAINT FK_UserRoles FOREIGN KEY(Username)
REFERENCES Accounts (Username)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE Authorities  ADD  CONSTRAINT FK_Roles FOREIGN KEY(RoleId)
REFERENCES Roles(Id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE OrderDetails  ADD  CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY(OrderId)
REFERENCES Orders(Id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE OrderDetails ADD  CONSTRAINT FK_OrderDetails_Products FOREIGN KEY(ProductId)
REFERENCES Products (Id)
ON UPDATE CASCADE;

ALTER TABLE Orders ADD  CONSTRAINT FK_Orders_Customers FOREIGN KEY(Username)
REFERENCES Accounts (Username)
ON UPDATE CASCADE
ON DELETE CASCADE