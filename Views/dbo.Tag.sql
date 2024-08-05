SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   VIEW [dbo].[Tag] 
AS SELECT        Id, Name, Deleted, CreatedDate, IdUser
FROM            dbo.Parameter
WHERE        (IdType = 6)
GO