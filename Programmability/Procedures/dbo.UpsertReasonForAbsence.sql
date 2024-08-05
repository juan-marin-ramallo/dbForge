SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author: Cristian Barbarini  
-- Create date: 05/10/2022  
-- Description: SP para guardar/actualizar las metas de personas  
-- =============================================  
CREATE PROCEDURE [dbo].[UpsertReasonForAbsence]  
(  
 @Id INT,  
 @Name VARCHAR(255),  
 @Description VARCHAR(255),  
 @IdUser INT  
)  
AS  
BEGIN  
 IF @Id > 0 BEGIN  
  UPDATE [dbo].[AbsenceReason]  
  SET [Name] = @Name, [Description] = @Description 
  WHERE [Id] = @Id;  
 END  
 ELSE BEGIN  
  INSERT INTO [dbo].[AbsenceReason]([Name],[Description],[Deleted],[DeletedDate],[EditedDate])  
  VALUES(@Name, @Description,0,NULL, GETDATE());  
 END  
END
GO