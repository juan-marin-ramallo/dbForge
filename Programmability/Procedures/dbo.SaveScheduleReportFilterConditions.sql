SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 12/04/2019
-- Description:	SP para guardar las condiciones
--				de alerta para un envio
--				automatico de reporte
-- =============================================
CREATE PROCEDURE [dbo].[SaveScheduleReportFilterConditions]
(
	 @IdScheduleReport [sys].[int]
	,@FilterConditions [dbo].[ScheduleReportFilterConditionTableType] READONLY
)
AS
BEGIN
	INSERT INTO [dbo].[ScheduleReportFilterCondition]([IdScheduleReport], [IdQuestion], [IdProduct], [IdProductReportAttribute], [ConditionType], [ConditionValue])
	SELECT	@IdScheduleReport, [IdQuestion], [IdProduct], [IdProductReportAttribute], [ConditionType], [ConditionValue]
	FROM	@FilterConditions
END
GO