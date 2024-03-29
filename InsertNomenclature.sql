USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[InsertNomenclature]    Script Date: 19.09.2022 21:38:58 ******/
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

Insert into dbo.jsondataeleven (nomenclature_json, timestamp)
values (@nomenclatureObj, convert(datetime,getdate(),113))

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

declare @a nvarchar(max)
set @nomenclatureObj = RIGHT(@nomenclatureObj , LEN(@nomenclatureObj ) - 20)
set @a = @nomenclatureObj

INSERT INTO [dbo].[nomenclature]
           ([featureCount]
           ,[id]
           ,[name]
           ,[categoryId]
		  -- ,[categoryParentId]
           ,[categoryName]
           ,[vat]
           ,[requiredGTD]
           --,[alcoholContaining]
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
				--alcoholContaining bit '$.alcoholContaining',	
				requiredGISM bit '$.requiredGISM',	
				excisable bit '$.excisable',	
				brandId bit '$.brandId',	
				brandName nvarchar(max) '$.brandName',	
				manufacturerCode nvarchar(100) '$.manufacturerCode',
				modified nvarchar(100) '$.modified',
				--manufacturerId nvarchar(200) '$.manufacturerId',	
				--manufacturerName nvarchar(100) '$.manufacturerName',	
				articulElevel nvarchar(100) '$.articulElevel',	
				brandCommercial nvarchar(500) '$.brandCommercial',
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
			width numeric(18,3) '$.width',
			depth float '$.depth',
			height float '$.height',
			volume float '$.volume')

--insert into dbo.unit(okei,name,fullname,intername,nomenclatureId)
--select * from 
--OPENJSON ( @a)  
--WITH (   
--              okei   nvarchar(200) '$.unit.okei' ,  
--              name     nvarchar(200)   '$.unit.name',  
--              fullname nvarchar(200) '$.unit.fullName',  
--              intername nvarchar(200) '$.unit.interName',
--			  nomenclatureId int '$.id'
-- )

insert into dbo.volume(okei,name,fullname,intername,baseUnitCount,unitCount,nomenclatureId)
select * from 
OPENJSON ( @a)  
WITH (		  
			  okei   nvarchar(200) '$.volume.unit.okei' ,  
              name     nvarchar(200)   '$.volume.unit.name',  
              fullname nvarchar(200) '$.volume.unit.fullName',  
              intername nvarchar(200) '$.volume.unit.interName',
              baseUnitCount nvarchar (100) '$.volume.baseUnitCount',  
              unitCount nvarchar (100) '$.volume.unitCount',  
			  nomenclatureId int '$.id'
 ) 
 
 insert into dbo.weight(okei,name,fullname,intername,baseUnitCount,unitCount,baseUnitCount2,unitCount2,nomenclatureId)
select * from 
OPENJSON ( @a)  
WITH (   
			 okei   nvarchar(200) '$.weight.unit.okei' ,  
              name     nvarchar(200)   '$.weight.unit.name',  
              fullname nvarchar(200) '$.weight.unit.fullName',  
              intername nvarchar(200) '$.weight.unit.interName',
              baseUnitCount nvarchar (100) '$.weight.unit.baseUnitCount',  
              unitCount nvarchar (100) '$.weight.unit.unitCount',
			  baseUnitCount nvarchar (100) '$.weight.baseUnitCount',  
              unitCount nvarchar (100) '$.weight.unitCount',  
			  nomenclatureId int '$.id'
 )

insert into dbo.youtube(code,link,linkHtml,nomenclatureId)
select * from 
OPENJSON ( @a)  
WITH (   
              code nvarchar(100) '$.youtube.code',  
              link nvarchar(100) '$.youtube.link',  
              fullname nvarchar(200) '$.youtube.linkHTML',  
			  nomenclatureId int '$.id'
 );

 INSERT INTO attributes(jsondata,nomenclatureId,value,attributeId,name, val_value,val_id)
SELECT * FROM OPENJSON ( @a)  
WITH ( 
			[attributes] nvarchar(max) as json,
			nomenclatureId int '$.id'
)
CROSS APPLY openjson(attributes,'$')
WITH(
		value nvarchar(max) '$.value',
		attributeId nvarchar(max) '$.attributeId',
		name nvarchar(max) '$.name',
		val_value nvarchar(max) '$.valueId.value',
		val_id nvarchar(max) '$.valueId.id'
		
)

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
					  ( select link + ' ' from [7gostore_db].[dbo].[images]  where nomenclatureId = @nomenImgNum for xml path ('')
					  ),1,9999) As Images)
				  where nomenclatureId = @nomenImgNum
			end


		set @num = @num+1
  end 

 
END

