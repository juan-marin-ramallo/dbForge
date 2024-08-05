SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[DeleteCustomReportFields]  
 @IdCustomReport int  
AS  
BEGIN  
   
 DELETE FROM CustomReportField  
 WHERE [IdCustomReport] = @IdCustomReport  
  
 DELETE FROM CustomReportForm  
 WHERE [IdCustomReport] = @IdCustomReport  
  
  DELETE FROM CustomReportDynamic  
  WHERE [IdCustomReport] = @IdCustomReport
END
GO