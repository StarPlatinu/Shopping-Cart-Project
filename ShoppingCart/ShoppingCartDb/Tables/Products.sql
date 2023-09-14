﻿CREATE TABLE [dbo].[Products]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
 [departmentId] INT NULL,
 [classId] INT   NULL,
 [subclassId] INT   NULL,
 [description] nvarchar(45)   NULL,
 [fabric] nvarchar(15)   NULL,
 [taxable] INT DEFAULT NULL,
 [web] INT DEFAULT NULL,
 [in_store] INT DEFAULT NULL,
 [manufacturerId] INT   NULL,
 [stockcheckid] nvarchar(5)   NULL,
 [overridestockcheck] INT DEFAULT NULL,
 [icon1] INT DEFAULT NULL,
 [icon1_start] datetime DEFAULT NULL,
 [icon1_end] datetime DEFAULT NULL,
 [icon2] INT DEFAULT NULL,
 [icon2_start] datetime DEFAULT NULL,
 [icon2_end] datetime DEFAULT NULL,
 [icon3] INT DEFAULT NULL,
 [icon3_start] datetime DEFAULT NULL,
 [icon3_end] datetime DEFAULT NULL,
 [shipexcepttype] char(1)   NULL,
 [shipcharge] decimal(15,2) DEFAULT NULL,
 [linktitle] nvarchar(40)   NULL,
 [linkurl] nvarchar(100)   NULL,
 [extdescription] text ,
 [price_low] decimal(15,2) DEFAULT NULL,
 [price_high] decimal(15,2) DEFAULT NULL,
 [picwidth] INT DEFAULT NULL,
 [pictureext] char(3)   NULL,
 [picheight] INT DEFAULT NULL,
 [personalization] char(1)   NULL,
 [sp_cmp_price_low] decimal(15,2) DEFAULT NULL,
 [sp_cmp_price_high] decimal(15,2) DEFAULT NULL,
 [cmp_at_price_low] decimal(15,2) DEFAULT NULL,
 [cmp_at_price_high] decimal(15,2) DEFAULT NULL,
 [stockstatus] char(2)   NULL,
 [salesrankqty] INT DEFAULT NULL,
 [active_icon1] INT DEFAULT NULL,
 [active_icon2] INT DEFAULT NULL,
 [active_icon3] INT DEFAULT NULL,
 [product_group] nvarchar(10)   NULL,
 [category] nvarchar(15)   NULL,
 [season] nvarchar(6)   NULL,
 [model_id] nvarchar(30)   NULL,
 [modified_dts] datetime NOT NULL,
 [club_price_low] decimal(15,2) DEFAULT NULL,
 [club_price_high] decimal(15,2) DEFAULT NULL,
 [active_inv_dts] datetime NOT NULL ,
 [length] decimal(15,2) NOT NULL ,
 [width] decimal(15,2) NOT NULL ,
 [height] decimal(15,2) NOT NULL,
 [weight] decimal(15,2) NOT NULL ,
 [ship_separately] INT NOT NULL ,
 [additional_handling] INT NOT NULL ,
 [package_type] char(2)  NOT NULL ,
 [product_type] char(1)  NOT NULL ,
 [print_detail] INT NOT NULL ,
 [date_received] datetime DEFAULT NULL,
  CONSTRAINT [FK_Departments_ToProdcut] FOREIGN KEY ([departmentId]) REFERENCES [Departments]([Id]),
  CONSTRAINT [FK_Class_ToProduct] FOREIGN KEY ([classId]) REFERENCES [Classes]([Id]),
  CONSTRAINT [FK_SubClass_ToProduct] FOREIGN KEY ([subclassId]) REFERENCES [SubClasses]([Id]),
  CONSTRAINT [FK_Manufacturer_ToProduct] FOREIGN KEY ([manufacturerId]) REFERENCES [Manufacturers]([Id])
)
