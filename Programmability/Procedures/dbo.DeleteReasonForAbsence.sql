SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author: Barboza Franco
-- Create date: 04/12/2022  
-- Description: SP para eliminar las metas de personas  
-- =============================================  
CREATE PROCEDURE [dbo].[DeleteReasonForAbsence]  
(  
 @Id INT  
)  
AS  
BEGIN  
 UPDATE [dbo].[AbsenceReason] 
 SET [Deleted] = 1,
	DeletedDate = SYSDatetime(),
	EditedDate = SYSDatetime()
 WHERE [Id] = @Id;  
END
GO