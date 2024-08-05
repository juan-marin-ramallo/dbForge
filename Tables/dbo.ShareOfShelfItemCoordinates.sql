CREATE TABLE [dbo].[ShareOfShelfItemCoordinates] (
  [Id] [int] IDENTITY,
  [IdShareOfShelfItem] [int] NOT NULL,
  [X0] [int] NOT NULL,
  [Y0] [int] NOT NULL,
  [X1] [int] NOT NULL,
  [Y1] [int] NOT NULL,
  CONSTRAINT [PK_ShareOfShelfItemCoordinates] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfItemCoordinates]
  ADD CONSTRAINT [FK_ShareOfShelfItemCoordinates_ShareOfShelfItem] FOREIGN KEY ([IdShareOfShelfItem]) REFERENCES [dbo].[ShareOfShelfItem] ([Id])
GO