SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 31/05/2021
-- Description:	SP para obtener la información general de PowerBI
-- =============================================
CREATE PROCEDURE [dbo].[GetPowerBIConfiguration]
	@Id [sys].[int]
AS
BEGIN
	SELECT	[Id], [ApplicationId], [WorkspaceId], [AuthenticationType], [Username], [Password], [ApplicationSecret], [Tenant]
	FROM	[dbo].[PowerBIConfiguration]
	WHERE	[Id] = @Id
END
GO