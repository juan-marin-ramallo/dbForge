CREATE TABLE [dbo].[RouteGroup] (
  [Id] [int] IDENTITY,
  [Name] [varchar](200) NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NULL,
  [EditedDate] [datetime] NULL,
  [Deleted] [bit] NULL,
  CONSTRAINT [PK_RouteGroup] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[RouteGroup]
  ADD CONSTRAINT [FK_RouteGroup_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO