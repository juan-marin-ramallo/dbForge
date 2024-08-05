CREATE TABLE [dbo].[ProductReportSection] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Description] [varchar](250) NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NOT NULL,
  [Order] [int] NOT NULL,
  [FullDeleted] [bit] NOT NULL CONSTRAINT [DF_ProductReportSection_FullDeleted] DEFAULT (0),
  CONSTRAINT [PK_ProductReportSection] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportSection]
  ADD CONSTRAINT [FK_ProductReportSection_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO