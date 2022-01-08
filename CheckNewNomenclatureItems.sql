USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[CheckNewNomenclatureItems]    Script Date: 08.01.2022 20:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lumelsky
-- Create date: 2021-10-24
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CheckNewNomenclatureItems]
	-- Add the parameters for the stored procedure here
	@idsList nvarchar(max) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	set @idsList =  (select id from stockofgoods where id not in
	(select id from nomenclature) for json path, root('ids') )
	 
	
END
