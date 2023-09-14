﻿CREATE TABLE [dbo].[Skus]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
  [productid] INT   NOT NULL DEFAULT '',
  [color] nvarchar(5)   DEFAULT NULL,
  [color_name] nvarchar(30)   DEFAULT NULL,
  [size] nvarchar(15)   DEFAULT NULL,
  [subsize] nvarchar(15)   DEFAULT NULL,
  [nwi] INT DEFAULT NULL,
  [stockstatus] char(1)   DEFAULT NULL,
  [price] decimal(15,2) DEFAULT NULL,
  [special_price] decimal(10,2) DEFAULT NULL,
  [instock_qty] INT DEFAULT NULL,
  [retail_price] decimal(15,2) DEFAULT NULL,
  [cost] decimal(15,2) DEFAULT NULL,
  [sizeorder] INT NOT NULL DEFAULT '0',
  [subsizeorder] INT NOT NULL DEFAULT '0',
  [sp_cmp_price] decimal(15,2) DEFAULT NULL,
  [cmp_at_price] decimal(15,2) DEFAULT NULL,
  [second_sku] nvarchar(20)   DEFAULT NULL,
  [departmentId] INT   NOT NULL DEFAULT '',
  [club_price] decimal(15,2) DEFAULT NULL,
  [modified_dts] datetime NOT NULL DEFAULT '1959-01-01 00:00:01',
  CONSTRAINT [FK_Product_ToSku] FOREIGN KEY ([productId]) REFERENCES [Products]([Id]),
  CONSTRAINT [FK_department_ToSkuu] FOREIGN KEY ([departmentId]) REFERENCES [departments]([Id])
)
