CREATE TABLE [dbo].[Department] (
  [Id] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Latitude] [decimal](25, 20) NOT NULL,
  [Longitude] [decimal](25, 20) NOT NULL,
  CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO