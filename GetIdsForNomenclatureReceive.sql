USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetIdsForNomenclatureReceive]    Script Date: 08.01.2022 20:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: 2021-10-23
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetIdsForNomenclatureReceive]	-- Add the parameters for the stored procedure here
	@idsList nvarchar (max) out
	
AS
BEGIN
	set @idsList =  (select distinct id from GetIdByArticles 
	where id not in 
	(select id from nomenclature) for json path, root('ids'))
	return @idsList 
END
