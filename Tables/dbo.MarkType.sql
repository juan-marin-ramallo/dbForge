CREATE TABLE [dbo].[MarkType] (
  [Code] [varchar](5) NOT NULL,
  [Description] [varchar](50) NOT NULL,
  [IsFinalMark] [bit] NOT NULL,
  CONSTRAINT [PK_MarkType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO