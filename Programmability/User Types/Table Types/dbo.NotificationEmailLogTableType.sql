CREATE TYPE [dbo].[NotificationEmailLogTableType] AS TABLE (
  [CodeNotification] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Sent] [bit] NOT NULL,
  [Email] [varchar](255) NOT NULL,
  [IdUser] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [TriesCount] [int] NOT NULL
)
GO