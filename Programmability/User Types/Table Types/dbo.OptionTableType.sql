CREATE TYPE [dbo].[OptionTableType] AS TABLE (
  [Id] [int] NULL,
  [Text] [varchar](100) NOT NULL,
  [IsDefault] [bit] NOT NULL
)
GO