CREATE TABLE [dbo].[AssetType] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NULL,
  [Description] [varchar](250) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_AssetType_Deleted] DEFAULT (0),
  [CreatedDate] [datetime] NULL,
  [EditedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetType]
  ADD CONSTRAINT [FK_AssetType_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO