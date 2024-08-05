CREATE TABLE [dbo].[CustomerValidation] (
  [Id] [int] IDENTITY,
  [BlockedWeb] [bit] NULL,
  [BlockedMobile] [bit] NULL,
  CONSTRAINT [PK_CustomerValidation] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO