CREATE TABLE [dbo].[CustomReportDynamic] (
  [IdCustomReport] [int] NOT NULL,
  [IdDynamic] [int] NOT NULL,
  CONSTRAINT [PK__CustomRe__5DDBA256A80B0D1A] PRIMARY KEY CLUSTERED ([IdCustomReport], [IdDynamic])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportDynamic]
  ADD CONSTRAINT [FK__CustomRep__IdCus__3EDDEA9E] FOREIGN KEY ([IdCustomReport]) REFERENCES [dbo].[CustomReport] ([Id])
GO

ALTER TABLE [dbo].[CustomReportDynamic]
  ADD CONSTRAINT [FK__CustomRep__IdDyn__3FD20ED7] FOREIGN KEY ([IdDynamic]) REFERENCES [dbo].[Dynamic] ([Id])
GO