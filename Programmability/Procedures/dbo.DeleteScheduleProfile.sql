SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author:  Gaston L.  
-- Create date: 22/10/2018  
-- Description: SP para eliminar un schedule profile  
-- =============================================  
CREATE PROCEDURE [dbo].[DeleteScheduleProfile]   
 @Id [sys].[int]  
AS  
BEGIN  
 UPDATE [dbo].[ScheduleProfile]  
 SET  [Deleted] = 1, [DeletedDate] = GETUTCDATE()  
 WHERE [Id] = @Id  

 UPDATE [dbo].[ScheduleProfileCatalog]  
 SET  [Deleted] = 1  
 WHERE [IdScheduleProfile] = @Id  
END
GO