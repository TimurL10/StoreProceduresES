USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetItemsForOzon_testing]    Script Date: 27.02.2022 19:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Лумельский ТБ
-- Create date: 2022-02-13
-- Description:	Сбор товара для Озон
-- =============================================
set statistics io on
set statistics time on 	

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   
IF OBJECT_ID(N'tempdb..#values_table', N'U') IS NOT NULL		DROP TABLE #values_table;
IF OBJECT_ID(N'tempdb..#attributes_table', N'U') IS NOT NULL		DROP TABLE #attributes_table;

declare @jsonData nvarchar(max)
declare @values_tbl table (id int, value nvarchar(max), nomemclature_id int) 
declare @attributes_tbl table (barcode nvarchar(max),category_id nvarchar(max),  itemName nvarchar(max), priceretail money, 
offer_id uniqueidentifier, weight nvarchar(10),id int,ImageURL nvarchar(max),height numeric(10,0),depth numeric(10,0),width numeric(10,0), nom_id int) 

declare @color table (id int, value nvarchar(max), nomemclature_id int) 
declare @name table (id int, value nvarchar(max), nomemclature_id int) 
declare @video table (id int, value nvarchar(max), nomemclature_id int)  

insert into @values_tbl
select 85 as id,Param1,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > 10000
and Remain >= 2

insert into @values_tbl
select 
8229 as id
,case CategoryInSite 
when 'Общий каталог/Низковольтное оборудование/Устройства защитного отключения (УЗО)' then 'Устройство защитного отключения (УЗО)' 
when 'Общий каталог/Электроустановочные изделия/Рамки, суппорты, адаптеры и декоративные элементы для ЭУИ' then 'Рамка электроустановочная'
when 'Общий каталог/Электроустановочные изделия/Выключатели, переключатели и диммеры' then 'Светорегулятор/диммер'
when 'Общий каталог/Низковольтное оборудование/Автоматические выключатели модульные' then 'Автоматический выключатель'
else 'Неопределенная категория'
end
,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > 10000
and Remain >= 2

 insert into @values_tbl
select 9048 as id,ItemName,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > 10000
and Remain >= 2

 insert into @values_tbl
select 10096 as id,'смотрите изображение',id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > 10000
and Remain >= 2


 insert into @attributes_tbl
select top 10 barcode, '83746913' as 'category_id',itemname, PriceRetail, newid() as offer_id,cast(weight as numeric(10,0)), v.id as n_id, ltrim(v.ImageURL)
,height = case aa.attributeId when 'EF000040' then (case aa.value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(aa.value,',','.')) as numeric(10,0)),0,1), 0) end) end
,width = case  aa.attributeId when 'EF000008' then (case aa.value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(aa.value,',','.')) as numeric(10,0)),0,1), 0) end) end
,depth = case aa.attributeId when 'EF000049' then (case aa.value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(aa.value,',','.')) as numeric(10,0)),0,1), 0) end) end
,nomenclatureId 
from v_GetRemainsForExel v
join attributes aa on aa.nomenclatureId = v.id
join attributesCatalog att on aa.attributeId = att.attributeId
where Weight < 25
and PriceRetail > 10000
and Remain >= 2
and aa.attributeId in ('EF000040'
,'EF000008'
,'EF000049')


set @jsonData = 
 (select top 10
  (select id, (select v.value where v.nomemclature_id = a.id FOR JSON PATH) 'values' 
  from @values_tbl v where v.nomemclature_id = a.id FOR JSON PATH) attributes
  ,barcode as barcode
  ,83746913 as 'category_id'
  ,'' as 'color_image'
  ,isnull(depth,1) as depth
  ,'mm' as dimension_unit
  ,isnull(height,1) as height
  ,ImageURL as images 
  ,itemName as name
  ,offer_id
  ,cast(PriceRetail as nvarchar(10)) as price
  ,'0.2' as 'vat'
  ,isnull(cast(weight as int),1) as weight 
  ,'g' as weight_unit
  ,isnull(width,1) width
  from @attributes_tbl a
  FOR JSON PATH, ROOT('items'))

  --set @jsonData = STRING_ESCAPE(@jsonData, '')
select replace(replace(replace(replace(@jsonData,'"images":','"images":['),',"name','],"name'),'jpeg ','jpeg","'),'jpg ','jpg","')
	
END

/*

--SELECT  
--JSON_QUERY('[' + STUFF(( SELECT ',' + '"' + concatLinks + '"' 
--FROM [images] where nomenclatureId = a.nom_id FOR XML PATH('')),1,1,'') + ']' ) images 
--FOR JSON PATH , WITHOUT_ARRAY_WRAPPER 




select top 15 * from v_GetRemainsForExel
where Weight < 25
and PriceRetail > 10000
and Remain >= 2
select top 10 * from nomenclature





--select top 100 articul,
--height = case aa.attributeId when 'EF000040' then isnull(aa.value, 0) end
--,width = case  aa.attributeId when 'EF000008' then isnull(aa.value, 0)  end
--,depth = case aa.attributeId when 'EF000049' then isnull(aa.value, 0)  end
--from attributes aa
--join attributesCatalog att on aa.attributeId = att.attributeId
--join [7gostore_db].[dbo].[StockOfGoods] s on s.Id = aa.nomenclatureId
--where 1=1
--and aa.attributeId in ('EF000040'
--,'EF000008'
--,'EF000049')


--SELECT  
--JSON_QUERY('[' + STUFF(( SELECT top 5 ',' + '"' + string_escape(concatLinks, N'json') + '"' 
--FROM images FOR XML PATH('')),1,1,'') + ']' ) images  
--FOR JSON PATH , WITHOUT_ARRAY_WRAPPER 

-- SELECT '"ids": ' + 
--    REPLACE( 
--      REPLACE( (SELECT top 5 string_escape(concatLinks, N'json') FROM images FOR JSON AUTO),'{"concatLinks":','' ),
--      '"}','"' ) 

--SELECT top 5 string_escape(concatLinks, N'json') as concatLinks FROM images FOR JSON AUTO

--select top 5
--    json_query(QUOTENAME(STRING_AGG('"' + STRING_ESCAPE(concatLinks, 'json') + '"', char(55)))) as [json]
--from images
--for json path
*/