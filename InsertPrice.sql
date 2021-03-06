USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[InsertPrice]    Script Date: 08.01.2022 22:18:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: 10-10-2021
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsertPrice] 
	-- Add the parameters for the stored procedure here
	@Price nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Insert into dbo.jsondataeleven (nomenclature_json, timestamp)
	values (@Price, convert(datetime,getdate(),113))

	DELETE FROM [7gostore_db].[dbo].[StockOfGoods]
	IF OBJECT_ID('tempdb..#temptable') IS NOT NULL DROP TABLE #temptable
	create table #temptable (priceObject nvarchar(max), id int identity (1,1))
	declare @ROW_COUNT int
	declare @priceObj nvarchar(max)
	declare @numId int



	insert into #temptable(priceObject)
	select root.value from openjson(@Price, '$."stockOfGoods"') as root

	set @ROW_COUNT = (select count(*) from #temptable)
	WHILE (@ROW_COUNT > 0)
	begin
	set @priceObj = (select priceobject from #temptable where @ROW_COUNT = id)
	set @numId = (select * from OPENJSON ( @priceObj) WITH (nomenclatureId int '$.id'))
	Begin
		INSERT INTO [7gostore_db].[dbo].[StockOfGoods]
		([Id]
		  ,[NomenclaturaId]
		  ,[articul]
		  ,[Price]
		  ,[Name]
		  ,[PriceBasic]
		  ,[Vat]
		  ,[UnitCode]
		  ,[UnitName]
		  ,[Unitkratnost]
		  ,[Stock]
		  ,[Stockamount]
		  ,[StockAmountAdd]
		  ,[ShippingDate]
		  ,[Identificator]
		  ,[idCategoria]
		  ,[NameCategoria])
	 select * from openjson(@priceObj) 
	 WITH ( 
			[Id] int '$.id'
		  ,[NomenclaturaId] uniqueidentifier '$.nomenclaturaid' 
		  ,[articul] nvarchar(10) '$.articul'
		  ,[Price] money '$.price'
		  ,[Name] nvarchar(max) '$.name'
		  ,[PriceBasic] money '$.priceBasic'
		  ,[Vat] int '$.vat'
		  ,[UnitCode] nvarchar(300) '$.unitcode'
		  ,[UnitName] nvarchar(300) '$.unitname'
		  ,[Unitkratnost] int '$.unitkratnost'
		  ,[Stock] int '$.stock'
		  ,[Stockamount] int '$.stockamount'
		  ,[StockAmountAdd] int '$.stockamountAdd'
		  ,[ShippingDate] nvarchar(300) '$.shippingDate'
		  ,[Identificator] nvarchar(300) '$.identificator'
		  ,[idCategoria] nvarchar(max) '$.idCategoria'
		  ,[NameCategoria] nvarchar(max) '$.nameCategoria'
 
	 )

	 insert into stockDetails(jsondata, nomenclatureId, main,amount,warehouse, idWarehouse)
	 select * from openjson(@priceObj)
	 WITH (	
			stockDetails nvarchar(max) as json,
			[NomenclaturaId] uniqueidentifier '$.nomenclaturaid' 
	 )
	 CROSS APPLY openjson(stockDetails, '$')
	WITH(
			main bit						'$.main',
			amount int						'$.amount',
			warehouse nvarchar(100)			'$.warehouse',
			idWarehouse uniqueidentifier	'$.idWarehouse'
	)
	End

	--Else
	--	Begin		

	--		UPDATE [dbo].[StockOfGoods]
	--		SET	[Id] = (select * from OPENJSON ( @priceObj) WITH (nomenclatureId int '$.id'))
	--	  ,[NomenclaturaId] = (select * from OPENJSON ( @priceObj) WITH([NomenclaturaId] uniqueidentifier '$.nomenclaturaid' ))
	--	  ,[articul] = (select * from OPENJSON ( @priceObj) WITH([articul] nvarchar(10) '$.articul'))
	--	  ,[Price]= (select * from OPENJSON ( @priceObj) WITH([Price] money '$.price'))
	--	  ,[Name]= (select * from OPENJSON ( @priceObj) WITH([Name] nvarchar(max) '$.name'))
	--	  ,[PriceBasic]= (select * from OPENJSON ( @priceObj) WITH([PriceBasic] money '$.priceBasic'))
	--	  ,[Vat]= (select * from OPENJSON ( @priceObj) WITH([Vat] int '$.vat'))
	--	  ,[UnitCode]= (select * from OPENJSON ( @priceObj) WITH([UnitCode] nvarchar(300) '$.unitcode'))
	--	  ,[UnitName]= (select * from OPENJSON ( @priceObj) WITH([UnitName] nvarchar(300) '$.unitname'))
	--	  ,[Unitkratnost]= (select * from OPENJSON ( @priceObj) WITH([Unitkratnost] int '$.unitkratnost'))
	--	  ,[Stock]= (select * from OPENJSON ( @priceObj) WITH([Stock] int '$.stock'))
	--	  ,[Stockamount]= (select * from OPENJSON ( @priceObj) WITH([Stockamount] int '$.stockamount'))
	--	  ,[StockAmountAdd]= (select * from OPENJSON ( @priceObj) WITH([StockAmountAdd] int '$.stockamountAdd'))
	--	  ,[ShippingDate]= (select * from OPENJSON ( @priceObj) WITH([ShippingDate] nvarchar(300) '$.shippingDate'))
	--	  ,[Identificator]= (select * from OPENJSON ( @priceObj) WITH([Identificator] nvarchar(300) '$.identificator'))
	--	  ,[idCategoria]= (select * from OPENJSON ( @priceObj) WITH([idCategoria] nvarchar(max) '$.idCategoria'))
	--	  ,[NameCategoria]= (select * from OPENJSON ( @priceObj) WITH([NameCategoria] nvarchar(max) '$.nameCategoria'))
	--		where id = (select * from OPENJSON ( @priceObj) WITH (nomenclatureId int '$.id'))

	--		UPDATE dbo.stockDetails
	--		SET main =  (select * from OPENJSON ( @priceObj) WITH(main bit '$.main'))
	--		,amount = (select * from OPENJSON ( @priceObj) WITH(amount int	'$.amount'))
	--		,warehouse = (select * from OPENJSON ( @priceObj) WITH(warehouse nvarchar(100) '$.warehouse'))
	--		,idWarehouse = (select * from OPENJSON ( @priceObj) WITH(idWarehouse uniqueidentifier '$.idWarehouse'))
	--		where [nomenclatureId] = (select * from OPENJSON ( @priceObj) WITH([NomenclaturaId] uniqueidentifier '$.nomenclaturaid' ))
	--	End


 set @ROW_COUNT = @ROW_COUNT - 1
 end





END


