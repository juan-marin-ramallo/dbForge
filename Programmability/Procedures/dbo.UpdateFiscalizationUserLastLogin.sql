SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 17/08/2023
-- Description:	SP para actualizar la fecha/hora
--				de último acceso para un usuario
--				fiscalizador
-- =============================================
CREATE PROCEDURE [dbo].[UpdateFiscalizationUserLastLogin]
(
	 @Id [sys].[int]
    ,@Ip [sys].[varchar](20)
)
AS
BEGIN
	UPDATE	[dbo].[FiscalizationUser]
	SET		[LastLoginDate] = GETUTCDATE(), [LastLoginIp] = @Ip
	WHERE	[Id] = @Id
END
GO