CREATE TABLE [dbo].[RouteWebNoVisitOption] (
  [Id] [int] IDENTITY,
  [Description] [varchar](500) NOT NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NULL,
  [EditedDate] [datetime] NULL,
  CONSTRAINT [PK_RouteWebNoVisitOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[RouteWebNoVisitOption]
  ADD CONSTRAINT [FK_RouteWebNoVisitOption_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO