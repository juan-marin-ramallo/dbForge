CREATE TABLE [dbo].[Company] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](512) NULL,
  [ImageName] [varchar](256) NULL,
  [ImageUrl] [varchar](512) NULL,
  [IsMain] [bit] NOT NULL,
  [Identifier] [varchar](50) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Company_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO