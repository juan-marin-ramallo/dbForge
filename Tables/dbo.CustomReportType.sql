CREATE TABLE [dbo].[CustomReportType] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Order] [int] NOT NULL CONSTRAINT [DF_CustomReportType_Order] DEFAULT (1),
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_Table_1_Deleted] DEFAULT (0),
  [IdPermission] [smallint] NULL,
  CONSTRAINT [PK_CustomReportType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportType]
  ADD CONSTRAINT [FK_CustomReportType_Permission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO