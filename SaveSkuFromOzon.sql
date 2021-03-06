USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[SaveSkuFromOzon]    Script Date: 20.04.2022 17:08:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: 2022-03-26
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SaveSkuFromOzon]
	@skuList nvarchar(max) 
AS
BEGIN
	
	SET NOCOUNT ON;


insert into OzonSkuTable (sku_product_id, offer_id)
  select product_id, offer_id  
  from openjson(@skuList) 
  with (  
  items_json nvarchar(max)  '$.result.items' as json
  )
  CROSS APPLY openjson(items_json,'$')
WITH (
			product_id int '$.product_id',
			offer_id nvarchar(max) '$.offer_id'
)


END
