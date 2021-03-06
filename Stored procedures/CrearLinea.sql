USE[BD_COMPANIA]

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
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CrearLinea 
	-- Add the parameters for the stored procedure here
	@descripcion nchar(60)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	BEGIN TRY
		BEGIN TRAN
			INSERT INTO Linea
			(descripcion)
			VALUES (@descripcion)
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
END
GO

--EXEC CrearLinea 'Linea 1'