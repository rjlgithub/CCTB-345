
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/09/2014 13:54:49
-- Generated from EDMX file: C:\Users\WB122\Documents\GitHub\CCTB-345\Model First Sample\MyCompany.ModelFirst\SalesModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CompanySales];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CustomerOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_CustomerOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderLineItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LineItems] DROP CONSTRAINT [FK_OrderLineItem];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductLineItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LineItems] DROP CONSTRAINT [FK_ProductLineItem];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerTypeCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_CustomerTypeCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_CustomerAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerContactDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContactDetails] DROP CONSTRAINT [FK_CustomerContactDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryProduct_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategoryProduct] DROP CONSTRAINT [FK_CategoryProduct_Category];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryProduct_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategoryProduct] DROP CONSTRAINT [FK_CategoryProduct_Product];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[LineItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LineItems];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[CustomerTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerTypes];
GO
IF OBJECT_ID(N'[dbo].[ContactDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContactDetails];
GO
IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[CategoryProduct]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoryProduct];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerId] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [CustomerTypeId] int  NOT NULL,
    [Address] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderId] int IDENTITY(1,1) NOT NULL,
    [OrderDate] datetime  NOT NULL,
    [ShipToAddress] nvarchar(max)  NOT NULL,
    [OrderSource] int  NOT NULL,
    [CustomerId] int  NOT NULL
);
GO

-- Creating table 'LineItems'
CREATE TABLE [dbo].[LineItems] (
    [LineItemId] int IDENTITY(1,1) NOT NULL,
    [Quantity] int  NOT NULL,
    [OrderId] int  NOT NULL,
    [ProductId] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [CategoryId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductId] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [LineItemId] int  NOT NULL
);
GO

-- Creating table 'CustomerTypes'
CREATE TABLE [dbo].[CustomerTypes] (
    [CustomerTypeId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ContactDetails'
CREATE TABLE [dbo].[ContactDetails] (
    [ContactDetailId] int IDENTITY(1,1) NOT NULL,
    [MobilePhone] nvarchar(max)  NOT NULL,
    [HomeNumber] nvarchar(max)  NOT NULL,
    [OfficeNumber] nvarchar(max)  NOT NULL,
    [TwitterAlias] nvarchar(max)  NOT NULL,
    [FaceBook] nvarchar(max)  NOT NULL,
    [LinkedIn] nvarchar(max)  NOT NULL,
    [SkypeId] nvarchar(max)  NOT NULL,
    [CustomerId] int  NOT NULL,
    [Customer_CustomerId] int  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [AddressId] int IDENTITY(1,1) NOT NULL,
    [StreetAddress] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [ProvinceState] nvarchar(max)  NOT NULL,
    [PostalCodeZip] nvarchar(max)  NOT NULL,
    [CustomerCustomerId] int  NOT NULL
);
GO

-- Creating table 'CategoryProduct'
CREATE TABLE [dbo].[CategoryProduct] (
    [Categories_CategoryId] int  NOT NULL,
    [Products_ProductId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CustomerId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- Creating primary key on [OrderId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderId] ASC);
GO

-- Creating primary key on [LineItemId] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [PK_LineItems]
    PRIMARY KEY CLUSTERED ([LineItemId] ASC);
GO

-- Creating primary key on [CategoryId] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([CategoryId] ASC);
GO

-- Creating primary key on [ProductId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [CustomerTypeId] in table 'CustomerTypes'
ALTER TABLE [dbo].[CustomerTypes]
ADD CONSTRAINT [PK_CustomerTypes]
    PRIMARY KEY CLUSTERED ([CustomerTypeId] ASC);
GO

-- Creating primary key on [ContactDetailId] in table 'ContactDetails'
ALTER TABLE [dbo].[ContactDetails]
ADD CONSTRAINT [PK_ContactDetails]
    PRIMARY KEY CLUSTERED ([ContactDetailId] ASC);
GO

-- Creating primary key on [AddressId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([AddressId] ASC);
GO

-- Creating primary key on [Categories_CategoryId], [Products_ProductId] in table 'CategoryProduct'
ALTER TABLE [dbo].[CategoryProduct]
ADD CONSTRAINT [PK_CategoryProduct]
    PRIMARY KEY NONCLUSTERED ([Categories_CategoryId], [Products_ProductId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_CustomerOrder]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerOrder'
CREATE INDEX [IX_FK_CustomerOrder]
ON [dbo].[Orders]
    ([CustomerId]);
GO

-- Creating foreign key on [OrderId] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [FK_OrderLineItem]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Orders]
        ([OrderId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderLineItem'
CREATE INDEX [IX_FK_OrderLineItem]
ON [dbo].[LineItems]
    ([OrderId]);
GO

-- Creating foreign key on [ProductId] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [FK_ProductLineItem]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Products]
        ([ProductId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductLineItem'
CREATE INDEX [IX_FK_ProductLineItem]
ON [dbo].[LineItems]
    ([ProductId]);
GO

-- Creating foreign key on [CustomerTypeId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_CustomerTypeCustomer]
    FOREIGN KEY ([CustomerTypeId])
    REFERENCES [dbo].[CustomerTypes]
        ([CustomerTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerTypeCustomer'
CREATE INDEX [IX_FK_CustomerTypeCustomer]
ON [dbo].[Customers]
    ([CustomerTypeId]);
GO

-- Creating foreign key on [CustomerCustomerId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_CustomerAddress]
    FOREIGN KEY ([CustomerCustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerAddress'
CREATE INDEX [IX_FK_CustomerAddress]
ON [dbo].[Addresses]
    ([CustomerCustomerId]);
GO

-- Creating foreign key on [Categories_CategoryId] in table 'CategoryProduct'
ALTER TABLE [dbo].[CategoryProduct]
ADD CONSTRAINT [FK_CategoryProduct_Category]
    FOREIGN KEY ([Categories_CategoryId])
    REFERENCES [dbo].[Categories]
        ([CategoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Products_ProductId] in table 'CategoryProduct'
ALTER TABLE [dbo].[CategoryProduct]
ADD CONSTRAINT [FK_CategoryProduct_Product]
    FOREIGN KEY ([Products_ProductId])
    REFERENCES [dbo].[Products]
        ([ProductId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryProduct_Product'
CREATE INDEX [IX_FK_CategoryProduct_Product]
ON [dbo].[CategoryProduct]
    ([Products_ProductId]);
GO

-- Creating foreign key on [Customer_CustomerId] in table 'ContactDetails'
ALTER TABLE [dbo].[ContactDetails]
ADD CONSTRAINT [FK_CustomerContactDetail]
    FOREIGN KEY ([Customer_CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerContactDetail'
CREATE INDEX [IX_FK_CustomerContactDetail]
ON [dbo].[ContactDetails]
    ([Customer_CustomerId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------