USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePricesandRemains]    Script Date: 08.01.2022 20:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[UpdatePricesandRemains]	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	
	declare @jsonitems nvarchar(max)

	select id from GetIdByArticles for json auto

END
