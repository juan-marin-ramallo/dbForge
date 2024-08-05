CREATE TABLE [dbo].[ProductMissingReportTypeOld] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductMissingReportType_Deleted] DEFAULT (0),
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  CONSTRAINT [PK_ProductMissingReportType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO