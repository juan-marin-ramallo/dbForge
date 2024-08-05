CREATE TABLE [dbo].[ShareOfShelfEmptySpace] (
  [Id] [int] IDENTITY,
  [IdShareOfShelf] [int] NOT NULL,
  [X0] [int] NOT NULL,
  [Y0] [int] NOT NULL,
  [X1] [int] NOT NULL,
  [Y1] [int] NOT NULL,
  CONSTRAINT [PK_ShareOfShelfEmptySpace] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfEmptySpace]
  ADD CONSTRAINT [FK_ShareOfShelfEmptySpace_ShareOfShelfReport] FOREIGN KEY ([IdShareOfShelf]) REFERENCES [dbo].[ShareOfShelfReport] ([Id])
GO