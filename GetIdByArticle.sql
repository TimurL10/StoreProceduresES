USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetIdByArticle]    Script Date: 08.01.2022 20:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetIdByArticle] 	
	@Price nvarchar(max)
AS
BEGIN
	 --SET NOCOUNT ON added to prevent extra result sets from
	 --interfering with SELECT statements.
	SET NOCOUNT ON; 

	
	DELETE FROM [7gostore_db].[dbo].GetIdByArticles
	IF OBJECT_ID('tempdb..#temptable') IS NOT NULL DROP TABLE #temptable
	create table #temptable (priceObject nvarchar(max), id int identity (1,1))
	declare @ROW_COUNT int
	declare @priceObj nvarchar(max)
	declare @numId int



	insert into #temptable(priceObject)
	select root.value from openjson(@Price, '$."result"') as root

	select * from #temptable

	set @ROW_COUNT = (select count(*) from #temptable)
	WHILE (@ROW_COUNT > 0)
	begin
		set @priceObj = (select priceobject from #temptable where @ROW_COUNT = id)
		Begin
			INSERT INTO [7gostore_db].[dbo].GetIdByArticles
			(id,article,Name,Brand,BrandId,CategoryId)
		 select * from openjson(@priceObj) 
		 WITH ( 
				[Id] int '$.id'	
				,[article] nvarchar(max) '$.article'			  
				,[Name] nvarchar(max) '$.name'			  
				,[Brand] nvarchar(max) '$.brand'
				,[BrandId] nvarchar(max) '$.brandId'
				,[CategoryId] nvarchar(max) '$.categoryid'
 
		 )	 
	 
	End


 set @ROW_COUNT = @ROW_COUNT - 1

END

end