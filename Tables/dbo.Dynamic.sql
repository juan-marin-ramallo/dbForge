CREATE TABLE [dbo].[Dynamic] (
  [Id] [int] IDENTITY,
  [IdFormPlus] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NULL,
  [Disabled] [bit] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [AllPersonOfInterest] [bit] NOT NULL CONSTRAINT [DF__Dynamic__AllPers__4773309F] DEFAULT (0),
  [IdUser] [int] NOT NULL CONSTRAINT [DF__Dynamic__IdUser__6BB09115] DEFAULT (1),
  CONSTRAINT [PK_Dynamic] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dynamic]
  ADD CONSTRAINT [FK_Dynamic_FormPlus] FOREIGN KEY ([IdFormPlus]) REFERENCES [dbo].[FormPlus] ([Id])
GO