USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetItemsForOzon]    Script Date: 17.04.2022 19:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Лумельский ТБ
-- Create date: 2022-02-13
-- Description:	Сбор товара для Озон

-- exec [dbo].[GetItemsForOzon_testing]	@minPrice = 10000,	@minRemain = 1
-- =============================================
ALTER PROCEDURE [dbo].[GetItemsForOzon_testing]	
@minPrice money,
@minRemain int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
IF OBJECT_ID(N'tempdb..#values_table', N'U') IS NOT NULL		DROP TABLE #values_table;
IF OBJECT_ID(N'tempdb..#attributes_table', N'U') IS NOT NULL		DROP TABLE #attributes_table;

declare @jsonData nvarchar(max)
declare @values_tbl table (id int, dictionary_value_id int, value nvarchar(max), nomemclature_id int) 
declare @attributes_tbl table (barcode nvarchar(max),category_id nvarchar(max),  itemName nvarchar(max), priceretail money, 
offer_id nvarchar(100), weight nvarchar(10),id int,ImageURL nvarchar(max),height numeric(10,0),depth numeric(10,0),width numeric(10,0), color_image nvarchar(100), nom_id int) 

declare @color table (id int, value nvarchar(max), nomemclature_id int) 
declare @name table (id int, value nvarchar(max), nomemclature_id int) 
declare @video table (id int, value nvarchar(max), nomemclature_id int)



insert into @values_tbl -- Бренд
select 85 as id,0,Param1,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain

insert into @values_tbl -- Тип
select 
8229 as id
,0
,case CategoryInSite 
when 'Общий каталог/Низковольтное оборудование/Устройства защитного отключения (УЗО)' then 'Устройство защитного отключения (УЗО)' 
when 'Общий каталог/Электроустановочные изделия/Рамки, суппорты, адаптеры и декоративные элементы для ЭУИ' then 'Рамка электроустановочная'
when 'Общий каталог/Электроустановочные изделия/Выключатели, переключатели и диммеры' then 'Диммер'
when 'Общий каталог/Низковольтное оборудование/Автоматические выключатели модульные' then 'Автоматический выключатель'
when 'Общий каталог/Низковольтное оборудование/Контакторы' then 'Контакторы'
when 'Общий каталог/Низковольтное оборудование/Автоматы защиты двигателя' then 'Автоматический выключатель'
when 'Общий каталог/Электроустановочные изделия/Выключатели, переключатели и диммеры' then 'Диммер'
when 'Общий каталог/Разъемы/Разъемы силовые ' then 'Вилка, штепсель электрические'
when 'Общий каталог/Щиты и шкафы, шинопровод/Корпуса шкафов готовые' then 'Телекоммуникационный шкаф'
when 'Общий каталог/Электроустановочные изделия/Рамки, суппорты, адаптеры и декоративные элементы для ЭУИ' then 'Рамка электроустановочная'
when 'Общий каталог/Щиты и шкафы, шинопровод/Системы сборных шин' then 'Автоматический выключатель'
when 'Общий каталог/Щиты и шкафы, шинопровод/Микроклимат щитов и шкафов' then 'Щитовое оборудование'
when 'Общий каталог/Щиты и шкафы, шинопровод/Корпуса шкафов сборной конструкции' then 'Телекоммуникационный шкаф'
when 'Общий каталог/Системы автоматизации/Реле' then 'Телекоммуникационный шкаф'
when 'Общий каталог/Кабеленесущие системы (системы для прокладки кабеля)/Системы прокладки кабеля под полом' then 'Розетка'
when 'Общий каталог/Низковольтное оборудование/Выключатели нагрузки (рубильники)' then 'Автоматический выключатель'
when 'Общий каталог/Электроустановочные изделия/Розетки антенные, информационные, коммуникационные' then 'Розетка'
when 'Общий каталог/Электроустановочные изделия/Розетки силовые' then 'Розетка'
when 'Общий каталог/Кабеленесущие системы (системы для прокладки кабеля)/Системы прокладки кабеля под полом' then 'Розетка'
when 'Общий каталог/Кабеленесущие системы (системы для прокладки кабеля)/Энергетические стойки (колонны)' then 'Розеточно-клавишный блок'

else right(CategoryInSite,len(CategoryInSite) - charindex('/',CategoryInSite,charindex('/',CategoryInSite)+1))
end
,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain

 insert into @values_tbl -- Название
select 9048 as id,0,ItemName,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain

 insert into @values_tbl -- Цвет
select 10096 as id
,0
,case when aa.val_value = 'Платина' then 'серый металлик'
		when aa.val_value = 'Дерево' then 'коричневый'  
		when aa.val_value = '' then 'Белый' else isnull(aa.val_value, ',Белый') end 
,v.id as n_id
from v_GetRemainsForExel v
join attributes aa on aa.nomenclatureId = v.id
join attributesCatalog att on aa.attributeId = att.attributeId
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain
and aa.attributeId = 'EF000007'

 insert into @values_tbl
select 4191 as id
,0
,FullDescription + ' Параметры: ' + Param4
,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain

insert into @values_tbl -- артикул
select 9024 as id
,0
,VendorCode as 'description'
,id as n_id
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain

 insert into @values_tbl -- Цвет
select 4389 as id
,0
,isnull(aa.val_value, 'Прочее')
,v.id as n_id
from v_GetRemainsForExel v
join attributes aa on aa.nomenclatureId = v.id
join attributesCatalog att on aa.attributeId = att.attributeId
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain
and aa.attributeId = 'СтранаId'

 insert into @values_tbl -- Название Цвета
select 10097 as id
,0
,case when aa.val_value = '' then 'Белый' 
	when aa.val_value = 'Прочее' then 'Белый'
	else isnull(aa.val_value, ',Белый') end
,v.id as n_id
from v_GetRemainsForExel v
join attributes aa on aa.nomenclatureId = v.id
join attributesCatalog att on aa.attributeId = att.attributeId
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain
and aa.attributeId = 'EF000007'


-- insert into @values_tbl --Тип
--select 8229 as id
--,right(CategoryInSite,len(CategoryInSite) - charindex('/',CategoryInSite,charindex('/',CategoryInSite)+1))
--,id as n_id
--from v_GetRemainsForExel
--where Weight < 25
--and PriceRetail > @minPrice
--and Remain >= @minRemain


 insert into @attributes_tbl
select barcode, 
case v.CategoryInSite 
when 'Общий каталог/Низковольтное оборудование/Устройства защитного отключения (УЗО)' then '83746913' 
when 'Общий каталог/Электроустановочные изделия/Рамки, суппорты, адаптеры и декоративные элементы для ЭУИ' then '87964566'
when 'Общий каталог/Электроустановочные изделия/Выключатели, переключатели и диммеры' then '83747266'
when 'Общий каталог/Низковольтное оборудование/Автоматические выключатели модульные' then '87964679'
when 'Общий каталог/Низковольтное оборудование/Контакторы' then '88940287'
when 'Общий каталог/Низковольтное оборудование/Автоматы защиты двигателя' then '88940287'
when 'Общий каталог/Разъемы/Разъемы силовые ' then '17033420'
when 'Общий каталог/Щиты и шкафы, шинопровод/Корпуса шкафов готовые' then '71197035'
when 'Общий каталог/Щиты и шкафы, шинопровод/Системы сборных шин' then '87964679'
when 'Общий каталог/Щиты и шкафы, шинопровод/Микроклимат щитов и шкафов' then '17038856'
when 'Общий каталог/Щиты и шкафы, шинопровод/Корпуса шкафов сборной конструкции' then '71197035'
when 'Общий каталог/Системы автоматизации/Реле' then '71197035'
when 'Общий каталог/Кабеленесущие системы (системы для прокладки кабеля)/Системы прокладки кабеля под полом' then '17033423'
when 'Общий каталог/Кабеленесущие системы (системы для прокладки кабеля)/Энергетические стойки (колонны)' then '1000003160'
when 'Общий каталог/Кабель, провод/Кабели и провода связи' then '43132639'
when 'Общий каталог/Низковольтное оборудование/Автоматические выключатели дифференциального тока (диффавтоматы)' then '87964627'
when 'Общий каталог/Низковольтное оборудование/Автоматические выключатели стационарные' then '87964679'
when 'Общий каталог/Низковольтное оборудование/Аксессуары для аппаратов защиты' then '88983434'
when 'Общий каталог/Низковольтное оборудование/Выключатели нагрузки (рубильники)' then '87964679'
when 'Общий каталог/Низковольтное оборудование/Низковольтные устройства различного назначения и аксессуары' then '88940265'
when 'Общий каталог/Системы автоматизации/Оборудование для информационной шины' then '81261110'
when 'Общий каталог/Электроустановочные изделия/Розетки антенные, информационные, коммуникационные' then '17033423'
when 'Общий каталог/Электроустановочные изделия/Розетки силовые' then '17033423'
else '83746913' end
as 'category_id'
,itemname, PriceRetail, VendorCode as offer_id,cast(weight as numeric(10,0)), v.id as n_id, ltrim(v.ImageURL)
,height = height.h --case aa.attributeId when 'EF000040' then (case aa.value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(aa.value,',','.')) as numeric(10,0)),0,1), 0) end) end
,width = width.w --case  aa.attributeId when 'EF000008' then (case aa.value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(aa.value,',','.')) as numeric(10,0)),0,1), 0) end) end
,depth = depth.d --case aa.attributeId when 'EF000049' then (case aa.value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(aa.value,',','.')) as numeric(10,0)),0,1), 0) end) end
,color_image = color_image.value --case  aa.attributeId when 'EF000007' then aa.val_value else '' end
,id --nomenclatureId 
from v_GetRemainsForExel v
--join attributes aa on aa.nomenclatureId = v.id
--join attributesCatalog att on aa.attributeId = att.attributeId
outer apply (select (case value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(value,',','.')) as numeric(10,0)),0,1), 0) end) as h from attributes where nomenclatureId = v.id and attributeId in ('EF000040') ) height
outer apply (select (case value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(value,',','.')) as numeric(10,0)),0,1), 0) end) as w from attributes where nomenclatureId = v.id and attributeId in ('EF000008')) width
outer apply (select (case value when 'true' then 0 when 'false' then 0  when null then 0 when '' then 0 else isnull(round(cast((replace(value,',','.')) as numeric(10,0)),0,1), 0) end) as d from attributes where nomenclatureId = v.id and attributeId in ('EF000049')) depth
outer apply (select value from attributes where nomenclatureId = v.id and attributeId in ('EF000007')) color_image
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain
--and aa.attributeId in ('EF000040'
--,'EF000008'
--,'EF000049'
--,'EF000007')
order by PriceRetail desc

-- Формируем json

set @jsonData = 
 (select top 100
  (select id, (select 
  (case when id = 8229 then (case 
								when category_id = '87964566' then 94812 
								when category_id = '83746913' then 94818 
								when category_id = '83747266' then 94804
								when category_id = '88940287' then 99040
								when category_id = '17033420' then 94801
								when category_id = '71197035' then 970607535
								when category_id = '87964679' then 94800
								when category_id = '17038856' then 970853450
								when category_id = '17033423' then 94814
								when category_id = '1000003160' then 94815
								when category_id = '43132639' then 96691
								when category_id = '87964627' then 94805
								when category_id = '88983434' then 99041
								when category_id = '88940265' then 94808
								when category_id = '17028931' then 115947332
								end)
		when id = 85 then (case when v.value = 'Schneider Electric' then '115868889' 
								when v.value = 'ABB' then '5445330' 
								when v.value = 'IEK (ИЭК)' then '5578883'
								when v.value = 'Lightstar' then '5106183'
								when v.value = 'Legrand' then '5098740'
								else '5098740'
								end) end) as dictionary_value_id
  ,v.value where v.nomemclature_id = a.id FOR JSON PATH) 'values' 
  from @values_tbl v where v.nomemclature_id = a.id FOR JSON PATH) attributes
  ,barcode as barcode
  ,category_id
  ,color_image
  ,(case when cast(a.depth as int) = 0 then 11 else isnull(cast(a.depth as int),11)  end) as depth
  ,'mm' as dimension_unit
  ,(case when cast(a.height as int) = 0 then 11 else isnull(cast(a.height as int),11)  end) as height
  ,ImageURL as images 
  ,itemName as name
  ,offer_id
  ,cast(PriceRetail as nvarchar(10)) as price
  ,'0.2' as 'vat'
  ,(case when cast(a.weight as int) = 0 then 11 when cast(a.weight as int) < 0 then cast(a.weight as int)*1000  else isnull(cast(a.weight as int),11)  end) as weight
  ,'g' as weight_unit
  ,(case when cast(a.width as int) = 0 then 11 else isnull(cast(a.width as int),11)  end) as width
  from @attributes_tbl a
  FOR JSON PATH, ROOT('items'))

  --set @jsonData = STRING_ESCAPE(@jsonData, '')
 set @jsonData =  (replace(replace(replace(replace(@jsonData,'"images":','"images":['),',"name','],"name'),'jpeg ','jpeg","'),'jpg ','jpg","'))
 select cast(@jsonData as xml)





 
END
