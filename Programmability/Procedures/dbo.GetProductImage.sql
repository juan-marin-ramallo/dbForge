SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetProductImage]
	@Id [sys].[int]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	[ImageArray]
	FROM	dbo.Product WITH (NOLOCK)
	WHERE	[Id] = @Id
END



GO