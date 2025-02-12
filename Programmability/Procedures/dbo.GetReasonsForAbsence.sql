﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================    
-- Author: Franco Barboza    
-- Create date: 03/10/2023    
-- Description: SP para obtener los atributos de las personas    
-- =============================================    
CREATE PROCEDURE [dbo].[GetReasonsForAbsence]    
AS    
BEGIN    
 SELECT AR.[Id], 
		AR.[Name],
		AR.[Description]	
 FROM [dbo].[AbsenceReason] AR
 WHERE AR.[Deleted] IS NULL OR AR.[Deleted] = 0    
END
GO