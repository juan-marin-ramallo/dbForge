CREATE TABLE [dbo].[DayOfWeek] (
  [Id] [smallint] IDENTITY,
  [Name] [varchar](10) NOT NULL,
  [Order] [smallint] NOT NULL,
  CONSTRAINT [PK_DayOfWeek] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO