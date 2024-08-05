CREATE TABLE [dbo].[Configuration] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Description] [varchar](500) NOT NULL,
  [Value] [varchar](250) NOT NULL,
  [DescriptionPT] [varchar](100) NULL,
  [Visible] [bit] NOT NULL,
  [Order] [int] NOT NULL,
  [IdConfigurationGroup] [int] NOT NULL,
  [Type] [int] NOT NULL,
  CONSTRAINT [PK_Configuration] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Configuration]
  ADD CONSTRAINT [FK_Configuration_ConfigurationGroup] FOREIGN KEY ([IdConfigurationGroup]) REFERENCES [dbo].[ConfigurationGroup] ([Id])
GO