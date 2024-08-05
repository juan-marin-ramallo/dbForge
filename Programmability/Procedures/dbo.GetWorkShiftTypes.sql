SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetWorkShiftTypes]      
AS      
BEGIN      
 SELECT 
	WST.[Id],   
	WST.[Name]
 FROM [dbo].WorkShiftType WST  
END
GO