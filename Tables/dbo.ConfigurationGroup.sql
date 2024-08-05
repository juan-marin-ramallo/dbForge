CREATE TABLE [dbo].[ConfigurationGroup] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Order] [int] NOT NULL,
  [IdParent] [int] NULL,
  [Visible] [bit] NOT NULL,
  CONSTRAINT [PK_ConfigurationGroup] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConfigurationGroup]
  ADD CONSTRAINT [FK_ConfigurationGroup_ConfigurationGroup1] FOREIGN KEY ([Id]) REFERENCES [dbo].[ConfigurationGroup] ([Id])
GO