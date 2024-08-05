SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author:  GL  
-- Create date: <Create Date,,>  
-- Description: GUARDA PEDIDOS ENVIADOS DESDE LA APP  
-- =============================================  
CREATE PROCEDURE [dbo].[UpdateOrderReportAttachment]  
  @Id [sys].[int]  
 ,@AttachmentUniqueName [sys].[varchar](256) = NULL  
 ,@AttachementUrl [sys].[varchar](2048) = NULL  
 ,@TypeId [sys].[int] = NULL  
 ,@Comment [sys].[varchar](250) = NULL  
 ,@Status [sys].[smallint] = NULL  
AS  
BEGIN   
 INSERT INTO [dbo].[OrderReportDocumentTrazability] VALUES(@Id, @TypeId, @Status, @Comment, @AttachmentUniqueName, @AttachementUrl)
END
GO