SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================    
-- Author: Cristian Barbarini    
-- Create date: 05/09/2023    
-- Description: Inhabilita estado de pedido    
-- =============================================    
CREATE PROCEDURE [dbo].[ToggleStatus]    
 @Id INT,    
 @Disabled BIT    
AS    
BEGIN    
  DECLARE @IsInitial BIT;
  SELECT @IsInitial = IsInitial FROM OrderStatus WHERE Id = @Id
  IF @Disabled = 1 OR @IsInitial = 0 OR NOT EXISTS(SELECT 1 FROM OrderStatus WHERE IsInitial = 1 AND Id <> @Id AND [Disabled] = 0)  
  BEGIN  
    UPDATE OrderStatus SET [Disabled] = @Disabled WHERE Id = @Id    
  END  
  ELSE BEGIN  
    SELECT -1  
  END  
END
GO