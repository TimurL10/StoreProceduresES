USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[InsertNomenclature]    Script Date: 26.12.2021 13:10:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: 26-09-2021
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsertNomenclature] 
	@nomenclatureObj nvarchar(max)
AS
BEGIN	
	SET NOCOUNT ON;

declare @numId int
DECLARE @ROW_COUNT INT
declare @a nvarchar(max)
IF OBJECT_ID('tempdb..#temptable2') IS NOT NULL DROP TABLE #temptable2
Create table #temptable2 (okei nvarchar(max),name nvarchar(max),fullname nvarchar(max),intername nvarchar(max), nomenclatureId int)
IF OBJECT_ID('tempdb..#temptable') IS NOT NULL DROP TABLE #temptable
Create table #temptable (obj nvarchar(max), id int identity (1,1))

Insert into dbo.jsondataeleven (nomenclature_json, timestamp)
values (@nomenclatureObj, convert(date,getdate(),113))

set @nomenclatureObj = RIGHT(@nomenclatureObj , LEN(@nomenclatureObj ) - 20)
insert into #temptable (obj)
select root.[value] as [nom] from openjson (@nomenclatureObj ) as root

set @ROW_COUNT = (select COUNT(*) FROM #temptable)

delete from nomenclature
delete from attributes
delete from barcode
delete from gallery
delete from gallery600
delete from images
delete from images600
delete from packs
delete from unit
delete from volume
delete from weight
delete from youtube

while @ROW_COUNT > 0
begin
set @a = (select obj from #temptable t where t.id = @ROW_COUNT)
set @numId = (select * from OPENJSON ( @a) WITH (nomenclatureId int '$.id'))


INSERT INTO [dbo].[nomenclature]
           ([featureCount]
           ,[id]
           ,[name]
           ,[categoryId]
		  -- ,[categoryParentId]
           ,[categoryName]
           ,[vat]
           ,[requiredGTD]
           ,[alcoholContaining]
           ,[requiredGISM]
           ,[excisable]
           ,[brandId]
           ,[brandName]
           ,[manufacturerCode]
           ,[modified]
           ,[articulElevel]
           ,[brandCommercial]
           ,[inStock]
           ,[nameForPrint]
		   ,[type]
           ,[description]
           ,[deliveryTime]
           ,[typeOfProduct]
           ,[typeOfProductId])
		   select * from 
OPENJSON ( @a)  
WITH (   
              featureCount int '$.featureCount' ,  
              id    int   '$.id',  
              name nvarchar(max) '$.name',  
			  	categoryId nvarchar(100) '$.categoryId',			
			 -- categoryParentId nvarchar(100) '$.categoryParentId',
			   categoryName nvarchar(100) '$.categoryName',
				vat nvarchar(100) '$.vat',
				requiredGTD bit '$.requiredGTD',	
				alcoholContaining bit '$.alcoholContaining',	
				requiredGISM bit '$.requiredGISM',	
				excisable bit '$.excisable',	
				brandId bit '$.brandId',	
				brandName nvarchar(max) '$.brandName',	
				manufacturerCode nvarchar(100) '$.manufacturerCode',
				modified nvarchar(100) '$.modified',
				--manufacturerId nvarchar(200) '$.manufacturerId',	
				--manufacturerName nvarchar(100) '$.manufacturerName',	
				articulElevel nvarchar(100) '$.articulElevel',	
				brandCommercial nvarchar(200) '$.brandCommercial',
				  inStock bit '$.inStock',
              nameForPrint nvarchar(max) '$.nameForPrint',
			  	type nvarchar(200) '$.type',
			  description nvarchar(max) '$.description',
			  	deliveryTime int '$.deliveryTime',
				typeOfProduct nvarchar(100) '$.typeOfProduct',
			  	typeOfProductId nvarchar(100) '$.typeOfProductId'					
 ); 
 
insert into [dbo].[barcode](nomenclatureId,jsondata, barcode)
select * from openjson (@a)
WITH (
			  nomenclatureId int '$.id',
			  barcodes nvarchar (max) as json 
)
CROSS APPLY openjson(barcodes,'$')
WITH (
			barcodes nvarchar (100) '$'
)

INSERT INTO dbo.images(jsondata,nomenclatureId,link)
 SELECT * FROM OPENJSON ( @a )  
WITH ( 
		[images] nvarchar(max) as json,               
		nomenclatureId int '$.id'
)
CROSS APPLY openjson(images,'$')
WITH(link nvarchar(max) '$.link')

INSERT INTO dbo.images600(jsondata,nomenclatureId,link)
 SELECT * FROM OPENJSON ( @a)  
WITH ( 
			[images600] nvarchar(max) as json,
			nomenclatureId int '$.id'
)
CROSS APPLY openjson(images600,'$')
WITH(link nvarchar(max) '$.link')

INSERT INTO dbo.packs(jsondata,nomenclatureId,name,amountInPack,height,width,depth,weight,volume)
 SELECT * FROM OPENJSON ( @a)  
WITH ( 
			packs nvarchar(max) as json,			
			nomenclatureId int '$.id'
			)
CROSS APPLY openjson(packs,'$')
WITH(		name nvarchar(300) '$.name',
			amountInPack float '$.amountInPack',
			height float '$.height',
			width float '$.width',
			depth float '$.depth',
			weight float '$.height',
			volume float '$.volume')

insert into dbo.unit(okei,name,fullname,intername,nomenclatureId)
select * from 
OPENJSON ( @a)  
WITH (   
              okei   nvarchar(200) '$.unit.okei' ,  
              name     nvarchar(200)   '$.unit.name',  
              fullname nvarchar(200) '$.unit.fullName',  
              intername nvarchar(200) '$.unit.interName',
			  nomenclatureId int '$.id'
 )

insert into dbo.volume(baseUnitCount,unitCount,nomenclatureId,u.unitId)
select * from 
OPENJSON ( @a)  
WITH (   
              baseUnitCount nvarchar (100) '$.volume.baseUnitCount',  
              unitCount nvarchar (100) '$.volume.unitCount',  
			  nomenclatureId int '$.id'
 )
 CROSS APPLY 
(select id from unit where nomenclatureId = @numId) u
 
 insert into dbo.weight(baseUnitCount,unitCount,nomenclatureId,u.unitId)
select * from 
OPENJSON ( @a)  
WITH (   
              baseUnitCount nvarchar (100) '$.weight.baseUnitCount',  
              unitCount nvarchar (100) '$.weight.unitCount',  
			  nomenclatureId int '$.id'
 )
 CROSS APPLY 
 (select id from unit where nomenclatureId = @numId ) u

 insert into dbo.unit(okei,name,fullname,intername,weightid)
select * from 
OPENJSON ( @a)  
WITH (   
              okei   nvarchar(200) '$.weight.unit.okei' ,  
              name     nvarchar(200)   '$.weight.unit.name',  
              fullname nvarchar(200) '$.weight.unit.fullName',  
              intername nvarchar(200) '$.weight.unit.interName'
 )
 CROSS APPLY (select weightId from dbo.weight where nomenclatureId = @numId) w

 insert into dbo.unit(okei,name,fullname,intername,volumeid)
select * from 
OPENJSON ( @a)  
WITH (   
              okei   nvarchar(200) '$.volume.unit.okei' ,  
              name     nvarchar(200)   '$.volume.unit.name',  
              fullname nvarchar(200) '$.volume.unit.fullName',  
              intername nvarchar(200) '$.volume.unit.interName'
 )
 CROSS APPLY (select volumeId from dbo.volume where nomenclatureId = @numId) v

insert into dbo.youtube(code,link,linkHtml,nomenclatureId)
select * from 
OPENJSON ( @a)  
WITH (   
              code nvarchar(100) '$.youtube.code',  
              link nvarchar(100) '$.youtube.link',  
              fullname nvarchar(200) '$.youtube.linkHTML',  
			  nomenclatureId int '$.id'
 );

 INSERT INTO attributes(jsondata,nomenclatureId,value,attributeId,name)
 SELECT * FROM OPENJSON ( @a)  
WITH ( 
			[attributes] nvarchar(max) as json,
			nomenclatureId int '$.id'
)
CROSS APPLY openjson(attributes,'$')
WITH(
		value nvarchar(max) '$.value',
		attributeId nvarchar(max) '$.attributeId',
		name nvarchar(max) '$.name'
		
)







 set @ROW_COUNT =  @ROW_COUNT - 1;
 
 end
  

--/////////////////////////////**Сцепка картинок**/////////////////////////////////

IF OBJECT_ID('tempdb..#tbl') IS NOT NULL DROP TABLE #tbl
IF OBJECT_ID('tempdb..#tblNewNom') IS NOT NULL DROP TABLE #tblNewNom
IF OBJECT_ID('tempdb..#tblImagLinks') IS NOT NULL DROP TABLE #tblImagLinks

 create table  #tblImagLinks (link nvarchar(max))
 create table  #tbl (nomenclatureId nvarchar(max), cnt int, id int identity (1,1))
 create table #tblNewNom ([imagesId] int,[link] nvarchar(max), nomenclatureId nvarchar(max),[jsondata] nvarchar(max))

 declare @num int = 1
 declare @count_t int = (select COUNT(*) from nomenclature)
 declare @cntimg int 
 declare @nomenImgNum nvarchar(100)

  insert into #tbl(nomenclatureId,cnt)
  SELECT nomenclatureId, count(nomenclatureId) as countt FROM [7gostore_db].[dbo].[images] i
	GROUP BY nomenclatureId


  while (@num < @count_t)
  begin	
		set @cntimg = (select cnt from #tbl where id = @num)
		set @nomenImgNum = (select nomenclatureId from #tbl where id = @num)
		if (@cntimg > 1)
			begin
				update images
				  set concatLinks = (select substring(
					  ( select ' ' + link from [7gostore_db].[dbo].[images]  where nomenclatureId = @nomenImgNum for xml path ('')
					  ),1,9999) As Images)
				  where nomenclatureId = @nomenImgNum
			end


		set @num = @num+1
  end
  

 
END

