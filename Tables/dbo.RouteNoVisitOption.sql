CREATE TABLE [dbo].[RouteNoVisitOption] (
  [Id] [int] IDENTITY,
  [Description] [varchar](50) NOT NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NULL,
  [EditedDate] [datetime] NULL,
  CONSTRAINT [PK_RouteNoVisitOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[RouteNoVisitOption]
  ADD CONSTRAINT [FK_RouteNoVisitOption_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO