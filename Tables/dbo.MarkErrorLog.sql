CREATE TABLE [dbo].[MarkErrorLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [ReceivedDate] [datetime] NOT NULL,
  [IdPersonOfInterest] [int] NULL,
  [IdType] [smallint] NOT NULL,
  [IdPointOfInterest] [int] NULL,
  [Latitude] [decimal](25, 20) NULL,
  [Longitude] [decimal](25, 20) NULL,
  [ErrorMessage] [varchar](5000) NOT NULL,
  [OperationCode] [varchar](50) NOT NULL,
  CONSTRAINT [PK_MarkErrorLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO