CREATE TABLE [dbo].[CustomAttributeGroup] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CustomAttributeGroup_CreatedDate] DEFAULT (getutcdate()),
  [IdUser] [int] NOT NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_CustomAttributeGroup_Deleted] DEFAULT (0),
  CONSTRAINT [PK_CustomAttributeGroup] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttributeGroup]
  ADD CONSTRAINT [FK_CustomAttributeGroup_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO