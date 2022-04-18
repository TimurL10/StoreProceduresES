USE [7gostore_db]
GO

/****** Object:  Table [dbo].[cmnReferenceBook]    Script Date: 01.09.2021 18:45:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


begin tran
CREATE TABLE [dbo].[nomenclature](
	[nomenclatureRowId] int IDENTITY(1,1),
	--[classFilterId] int NULL, -- пока не заполняю
	--[attributesId] int NULL,
	--[metapropertiesId] int NULL, -- пока не заполняю
	--[featuresId] int NULL, -- пока не заполняю
	[featureCount] int NULL,
	--[featuresAttributesId] int NULL, -- пока не заполняю
	[id] [int] Primary key,
	[name] [nvarchar](500) NOT NULL,
	[categoryId] [nvarchar](500) NULL,
	[categoryName] [nvarchar](500) NULL,
	[vat] [int] NULL,
	[type] [varchar](10) NULL,
	[requiredGTD] [bit] NULL,
	[alcoholContaining] [bit] NULL,
	[requiredGISM] [bit] NULL,
	[excisable][bit] NULL,
	[brandId][nvarchar](100) NULL,
	[brandName][nvarchar](200) NULL,
	[manufacturerCode][nvarchar](100) NULL,
	[manufacturerId][nvarchar](100) NULL,
	[manufacturerName][nvarchar](300) NULL,
	[modified][nvarchar] NULL, 
	[articulElevel][nvarchar](100) NULL,
	[brandCommercial][nvarchar](500) NULL,
	[inStock][bit] NULL,
	[nameForPrint][nvarchar](500) NULL,
	--[gallery] int NULL, -- пока не заполняю
	--[gallery600] int NULL, -- пока не заполняю
	[description][nvarchar](max) NULL,
	--[barcodes] varchar (max) NULL,
	[deliveryTime][int] NULL,
	[codeTNVED][nvarchar](100) NULL,
	[typeOfProduct][nvarchar](100) NULL,
	[typeOfProductId][nvarchar](100) NULL
	);


CREATE TABLE [dbo].[unit](
	[id] int IDENTITY(1,1) PRIMARY KEY,
	[okei] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[fullName] [nvarchar](100) NULL,
	[interName] [nvarchar](100) NULL,
	[baseUnitCount] [int] NULL,
	[unitCount] [int] NULL
	);

CREATE TABLE [dbo].[attributes](
[attributesId] int IDENTITY(1,1) PRIMARY KEY,
[jsondata] nvarchar(max),
[nomenclatureId] int,
[value][nvarchar](100) NULL,
[attributeId][nvarchar](100) NULL,
[name][nvarchar](100) NULL,
val_value nvarchar(100) NULL,
val_id nvarchar(100) NULL
)



CREATE TABLE [dbo].[images](
[imagesId] int IDENTITY(1,1) PRIMARY KEY,
[link][nvarchar](300) NULL,
jsondata nvarchar(max) NULL,
concatLinks nvarchar(max) NULL

)

CREATE TABLE [dbo].[images600](
[images600Id] int IDENTITY(1,1) PRIMARY KEY,
[link][nvarchar](300) NULL,
jsondata nvarchar(max) NULL,
concatLinks nvarchar(max) NULL

)

CREATE TABLE [dbo].[youtube](
[youtubeId] int IDENTITY(1,1) PRIMARY KEY,
[code][nvarchar](100) NULL,
[link][nvarchar](300) NULL,
[linkHtml][nvarchar](300) NULL,
concatLinks nvarchar(max) NULL
)

CREATE TABLE [dbo].[packs](
[packsId] UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
[name][nvarchar](100) NULL,
[amountInPack][int] NULL,
[height][int] NULL,
[width][int] NULL,
[depth][int] NULL,
[weight][int] NULL,
[volume][int] NULL
)

CREATE TABLE [dbo].[weight](
[weightId] UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
[unitCount] numeric(18,3) NULL,
[baseUnitCount][int] NULL
)

CREATE TABLE [dbo].[volume](
	[volumeId] int IDENTITY(1,1) PRIMARY KEY,
	[baseUnitCount] [int] NULL,
	[unitCount] [int] NULL
	);

CREATE TABLE [dbo].[barcode](
	[barcodeId] int IDENTITY(1,1) PRIMARY KEY,
	[barcode][nvarchar](100) NULL,
	jsondata nvarchar(max) NULL
	);

CREATE TABLE [dbo].[gallery](
[imagesId] int IDENTITY(1,1) PRIMARY KEY,
[link][nvarchar](300) NULL,
concatLinks nvarchar(max) NULL
)

CREATE TABLE [dbo].[gallery600](
[images600Id] int IDENTITY(1,1) PRIMARY KEY,
[link][nvarchar](300) NULL,
concatLinks nvarchar(max) NULL

)
--ALTER TABLE [dbo].[Images600] ADD concatLinks nvarchar(max) NULL;
ALTER TABLE [dbo].[Images] ADD [nomenclatureId] int NULL;
ALTER TABLE [dbo].[Images600] ADD [nomenclatureId] int NULL;
ALTER TABLE [dbo].[youtube] ADD [nomenclatureId] int NULL ;
ALTER TABLE [dbo].[packs] ADD [nomenclatureId] int NULL ;
ALTER TABLE [dbo].[weight] ADD [nomenclatureId] int NULL ;

ALTER TABLE [dbo].[volume] ADD [nomenclatureId] int NULL ;

ALTER TABLE [dbo].[unit] ADD [nomenclatureId] int NULL ;
ALTER TABLE [dbo].[unit] ADD [weightId] int NULL ;
ALTER TABLE [dbo].[unit] ADD [volumeId] int NULL ;

ALTER TABLE [dbo].[attributes] ADD [attributesValueId] int NULL ;
ALTER TABLE [dbo].[barcode] ADD [nomenclatureId] int NULL ;

ALTER TABLE [dbo].[gallery] ADD [nomenclatureId] int NULL ;
ALTER TABLE [dbo].[gallery600] ADD [nomenclatureId] int NULL ;

ALTER TABLE [dbo].barcode
ADD CONSTRAINT MyUniqueBarcodeConstraint UNIQUE([nomenclatureId]);


										--==================
												--Prices
										--==================

CREATE TABLE [dbo].[StockOfGoods](
	[Id] [nvarchar](450) PRIMARY KEY,
	[NomenclaturaId] [uniqueidentifier] NOT NULL UNIQUE,
	[articul] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PriceBasic] [float] NOT NULL,
	[Vat] [int] NOT NULL,
	[UnitCode] [nvarchar](max) NULL,
	[UnitName] [nvarchar](max) NULL,
	[Unitkratnost] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Stockamount] [int] NOT NULL,
	[StockAmountAdd] [int] NOT NULL,
	[ShippingDate] [nvarchar](max) NULL,
	[Identificator] [nvarchar](max) NULL,
	[idCategoria] [nvarchar](max) NULL,
	[NameCategoria] [nvarchar](max) NULL)



CREATE TABLE [dbo].stockDetails(
	[stockDetailsId] int IDENTITY(1,1) PRIMARY KEY,
	main bit NULL,
	warehouse nvarchar(100) NULL,
	idWarehouse UNIQUEIDENTIFIER,
	amount int
	);
ALTER TABLE [dbo].stockDetails ADD [nomenclatureId] UNIQUEIDENTIFIER NULL;

create table ItemsCategory (categoryName nvarchar(100), CategoryId nvarchar(100),row_id int identity(1,1) primary key)

  create table InSaleItemsCategory (categoryName nvarchar(100), CategoryId int,row_id int identity(1,1) primary key)

  CREATE TABLE [dbo].[GetIdByArticles](
	[id] [nvarchar](450) NOT NULL Primary key,
	[article] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Brand] [nvarchar](max) NULL,
	[BrandId] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](max) NULL)


	CREATE TABLE [dbo].[StockOfGoods](
	[Id] [nvarchar](450) NOT NULL Primary key,
	[NomenclaturaId] [uniqueidentifier] NOT NULL,
	[articul] [nvarchar](max) NULL,
	[Price] [money] NULL,
	[Name] [nvarchar](max) NULL,
	[PriceBasic] [money] NULL,
	[Vat] [int] NOT NULL,
	[UnitCode] [nvarchar](max) NULL,
	[UnitName] [nvarchar](max) NULL,
	[Unitkratnost] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Stockamount] [int] NOT NULL,
	[StockAmountAdd] [int] NULL,
	[ShippingDate] [nvarchar](max) NULL,
	[Identificator] [nvarchar](max) NULL,
	[idCategoria] [nvarchar](max) NULL,
	[NameCategoria] [nvarchar](max) NULL)


create table GetRemainsForExcel(
id nvarchar (10)
,ItemName nvarchar (max)
,ItemNameInURL nvarchar (max)
,URL nvarchar (max)
,ShortDescription nvarchar (max)
,FullDescription nvarchar (max)
,Visibility nvarchar (10)
,Discount nvarchar (10)
,TegTitle nvarchar (max)
,MetaTegKeywords nvarchar (max)
,MetaTegDescription nvarchar (max)
,CategoryInSite nvarchar (max)
,WeightCoefficient nvarchar (10)
,Currancy nvarchar (10)
,NDS nvarchar (10)
,Measure nvarchar (10)
,Gabarit nvarchar (10)
,ImageURL nvarchar (max)
,[Ссылка на видео] nvarchar (max)
,[ID варианта] nvarchar (10)
,VendorCode nvarchar (10)
,barcode nvarchar (max)
,GabaritVariant nvarchar (10)
,[Цена продажи] nvarchar (10)
,[Старая цена] nvarchar (10)
,PriceRetail nvarchar (10)
,Remain nvarchar (10)
,Weight nvarchar (10)
,[Изображения варианта] nvarchar (max)
,Param1 nvarchar (max)
,Param2 nvarchar (max)
,Param3 nvarchar (max)
,YaMCategory nvarchar (max)
,GCategory nvarchar (max)
,OzCategory nvarchar (max)
)

	Create table attributesCatalog(
	id int identity (1,1) primary key,
	attributeId nvarchar(100),
	name nvarchar(500),
	measure nvarchar(10)
	)
	insert into attributesCatalog(name,attributeId, measure)
	values		
		('Серия','СерияId',''),
		('Страна происхождения','СтранаId',''),
		('Угол сканирования','EF004101',''),
		('С интерфейсом DALI','EF009569',''),
		('Тип датчика','EF020270',''),
		('Цвет','EF000007',''),
		('Прозрачный','EF006243',''),
		('Высота','EF000040','мм'),
		('Ширина','EF000008','мм'),
		('Глубина','EF000049','мм'),
		('Степень защиты (IP)','EF005474',''),
		('Материал','EF002169',''),
		('Вид/ марка материала','EF001257',''),
		('Отделка поверхности','EF006569',''),
		('Не содержит (без) галогенов','EF000025',''),
		('Защитное покрытие поверхности','EF000139',''),
		('Цвет по RAL','EF003882',''),
		('Ширина установочная (встраив.)','EF000846',''),
		('Модель/исполнение','EF000010',''),
		('Способ подключения','EF000124',''),
		('Способ монтажа ','EF000003',''),
		('Номин. напряжение','EF000002','В'),
		('Номин. напряжение (до)','EF000002(до)','В'),
		('Частота','EF000416','Гц'),
		('Частота (до)','EF000416(до)','Гц'),
		('Дополнит. вход управления','EF003876',''),
		('Макс. коммутационная мощность (подключ. нагрузка)','EF001503','Вт'),
		('Угол обнаружения по горизонтали','EF006582','˚'),
		('Угол обнаружения по горизонтали (до)','EF006582(до)','˚'),
		('Оптимальная высота установки','EF008011',''),
		('Защита от подкрадывания (заднее поле наблюдения)','EF000147',''),
		('Зона (коридор) для животных','EF006311',''),
		('Зона (коридор) для животных','EF006311',''),
		('Ступенчатый мониторинг','EF001098',''),
		('Регулировка порога срабатывания по освещённости','EF007575',''),
		('Функция определения оптимального значения яркости','EF003898',''),
		('Макс. дальность действия в сторону','EF001323','м'),
		('Макс. дальность действия фронтально','EF001322','м'),
		('Диаметр зоны детектировния на уровне пола','EF003843',''),
		('Мин. время задержки на включение','EF006589',''),
		('Макс. время задержки на отключение','EF006590',''),
		('HVAC/климат-контроль','EF003858',''),
		('Постоянный контроль освещённости','EF003863',''),
		('Возможность подключения в сеть','EF003904',''),
		('Подходит для беспроводной передачи','EF001198',''),
		('Регулировка порога срабатывания по чувствительности','EF003429',''),
		('Функция диммирования с механизмом диммера','EF003808',''),
		('Шунтирующий переключатель','EF001099',''),
		('Принудительное отключение','EF003920',''),
		('Температура','EF001731',''),
		('Макс. пусковой ток','EF001732','Ма'),
		('Подходит для емкостной (C-) нагрузки','EF003832',''),
		('Диаметр','EF000551',''),
		('Дистанционное управление','EF003848',''),
		('С сигнальным устройством','EF003890',''),
		('Тип напряжения ','EF000187',''),
		('Порог срабатывания по освещённости','EF003814','лк'),
		('Порог срабатывания по освещённости (до)','EF003814(до)','лк'),
		('Управляющий ток','EF003894','Ма'),
		('Функция тревоги','EF005624',''),
		('Глубина установочная (встраив.)','EF000218','мм'),
		('Диаметр монтажный (встраив.)','EF000943',''),
		('Задержка включения','EF000193',''),
		('Задержка отключения','EF000194',''),
		('Ударопрочность по стандарту EN 50102','EF004293',''),
		('Подходит для монтажа на стену','EF006644',''),
		('Длина установочная (встраив.)','EF004265',''),
		('Количество модулей (для модульных серий)','EF009573',''),
		('Подходит для монтажа на потолке','EF021180',''),
		('Мин. глубина встраивания монтажной коробки','EF012278',''),
		('Антибактериальная обработка','EF023790',''),
		('Принудительное включение','EF011991',''),
		('Макс. область присутствия','EF012569',''),
		('Регулировка наклона датчика по горизонтали','EF009566',''),
		('Регулировка наклона датчика по вертикали','EF009567',''),
		('Количество переключемых зон','EF009568',''),
		('Мин. пусковой ток','EF011992','Ма'),
		('С пультом дистанционного управления','EF000483','')
		


--commit
rollback
