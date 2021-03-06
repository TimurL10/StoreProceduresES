USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetSkuFromOzon]    Script Date: 27.03.2022 20:56:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [dbo].[GetSkuFromOzon] 10000,1
-- =============================================
ALTER PROCEDURE [dbo].[GetSkuFromOzon] 
	-- Add the parameters for the stored procedure here
@minPrice money,
@minRemain int	

AS
BEGIN

declare @x nvarchar(max)	

set @x = (select (select VendorCode 
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain
order by PriceRetail desc FOR JSON AUTO) 'offer_id' FOR JSON PATH, ROOT('filter'))

set @x = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@x,'"filter":[','"filter":'),']}]}',']}}'),'{"VendorCode":',''),'},',','),'"}]','"]')
select @x

END
