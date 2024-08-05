CREATE TABLE [dbo].[AssortmentReportProduct] (
  [IdAssortmentReport] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  [Complies] [bit] NOT NULL,
  CONSTRAINT [PK_AssortmentReportProduct] PRIMARY KEY CLUSTERED ([IdAssortmentReport], [IdProduct])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssortmentReportProduct]
  ADD CONSTRAINT [FK_AssortmentReportProduct_AssortmentReport] FOREIGN KEY ([IdAssortmentReport]) REFERENCES [dbo].[AssortmentReport] ([Id])
GO

ALTER TABLE [dbo].[AssortmentReportProduct]
  ADD CONSTRAINT [FK_AssortmentReportProduct_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO