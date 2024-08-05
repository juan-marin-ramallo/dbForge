CREATE TABLE [dbo].[IRDataImage] (
  [Id] [int] IDENTITY,
  [IdIRData] [int] NOT NULL,
  [ImageName] [varchar](256) NOT NULL,
  CONSTRAINT [PK_IRDataImage] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[IRDataImage]
  ADD CONSTRAINT [FK_IRDataImage_IdIRData_IRData_Id] FOREIGN KEY ([IdIRData]) REFERENCES [dbo].[IRData] ([Id])
GO