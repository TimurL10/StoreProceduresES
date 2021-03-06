USE [7gostore_db]
GO
/****** Object:  UserDefinedFunction [dbo].[MarginCalc]    Script Date: 21.03.2022 22:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Timur L
-- Create date: 2022-01-22
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION [dbo].[MarginCalc]
(
	-- Add the parameters for the function here
	@Price money
)
RETURNS money
AS
BEGIN
	declare @percent numeric(5,2) = 100
	declare @margin numeric(5,2) = 30 -- %наценка
	set @Price = (@Price*(@margin/@percent)+ @Price)
	RETURN @Price

END
