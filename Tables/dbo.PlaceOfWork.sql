CREATE TABLE [dbo].[PlaceOfWork] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [BusinessName] [varchar](100) NULL,
  [Identifier] [varchar](50) NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  CONSTRAINT [PK_PlaceOfWork] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO