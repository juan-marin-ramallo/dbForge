CREATE TABLE [dbo].[CustomAttributeOption] (
  [Id] [int] IDENTITY,
  [IdCustomAttribute] [int] NOT NULL,
  [Text] [varchar](100) NOT NULL,
  [IsDefault] [bit] NOT NULL CONSTRAINT [DF_CustomAttributeOption_IsDefault] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_CustomAttributeOption_Deleted] DEFAULT (0),
  CONSTRAINT [PK_CustomAttributeOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO