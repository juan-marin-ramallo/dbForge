CREATE TABLE [dbo].[FormPlus] (
  [Id] [int] IDENTITY,
  [IdForm] [int] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  CONSTRAINT [PK_FormPlus] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormPlus]
  ADD CONSTRAINT [FK_FormPlus_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO