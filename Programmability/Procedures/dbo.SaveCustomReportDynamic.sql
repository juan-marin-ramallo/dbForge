SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[SaveCustomReportDynamic]  
  @IdCustomReport int  
 ,@IdDynamic int  
AS  
BEGIN  
   
 INSERT INTO CustomReportDynamic([IdCustomReport], [IdDynamic])  
 VALUES (@IdCustomReport, @IdDynamic)  
  
END
GO