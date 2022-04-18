-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: 2022-03-26
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE UpdateStockForOzon 
@minPrice money,
@minRemain int	
	
AS
BEGIN

declare @x nvarchar(100)	

select (select VendorCode 
from v_GetRemainsForExel
where Weight < 25
and PriceRetail > @minPrice
and Remain >= @minRemain
order by PriceRetail desc FOR JSON AUTO) 'offer_id' FOR JSON PATH, ROOT('filter')

set @x = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@x,'"filter":[','"filter":'),']}]}',']}}'),'{"VendorCode":',''),'},',','),'"}]','"]')
select @x

END
GO
