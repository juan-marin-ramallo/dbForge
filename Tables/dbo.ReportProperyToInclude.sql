CREATE TABLE [dbo].[ReportProperyToInclude] (
  [Id] [int] IDENTITY,
  [Class] [varchar](100) NOT NULL,
  [Property] [varchar](100) NOT NULL,
  CONSTRAINT [PK_ReportProperyToInclude] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO