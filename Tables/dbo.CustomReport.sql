CREATE TABLE [dbo].[CustomReport] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [IdType] [int] NULL,
  [IdForm] [int] NULL,
  [TemplateFilename] [varchar](200) NOT NULL,
  [CreateDate] [datetime] NOT NULL,
  [EditedDate] [datetime] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_CustomReport_Deleted] DEFAULT (0),
  [IdUser] [int] NULL,
  CONSTRAINT [PK_CustomReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReport]
  ADD CONSTRAINT [FK_CustomReport_CustomReport] FOREIGN KEY ([IdType]) REFERENCES [dbo].[CustomReportType] ([Id])
GO

ALTER TABLE [dbo].[CustomReport]
  ADD CONSTRAINT [FK_CustomReport_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO

ALTER TABLE [dbo].[CustomReport]
  ADD CONSTRAINT [FK_CustomReport_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO