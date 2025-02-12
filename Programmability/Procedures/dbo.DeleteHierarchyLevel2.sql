﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		GL
-- Create date: 12/05/2017
-- Description:	SP para eliminar una jerarquia nivel 2
-- =============================================
create PROCEDURE [dbo].[DeleteHierarchyLevel2]
(
	 @Id [sys].[int]
)
AS
BEGIN
		UPDATE	[dbo].[POIHierarchyLevel2]		
		SET		[Deleted] = 1 		
		WHERE	[Id] = @Id
	
		UPDATE	[dbo].[PointOfInterest]
		SET		[FatherId] = NULL
		WHERE	[FatherId] = @Id	

END

GO