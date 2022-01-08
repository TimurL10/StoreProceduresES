USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetRemainsForPrices]    Script Date: 08.01.2022 20:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetRemainsForPrices] 
	@json nvarchar(max) OUTPUT
AS
BEGIN
	
	SET NOCOUNT ON;
	set @json = (select Distinct id,'0' as amount from GetIdByArticles for json path,root('goods'))
    
END
