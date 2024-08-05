CREATE TABLE [dbo].[ScheduleReportFilterCondition] (
  [Id] [int] IDENTITY,
  [IdScheduleReport] [int] NOT NULL,
  [IdQuestion] [int] NULL,
  [IdProduct] [int] NULL,
  [IdProductReportAttribute] [int] NULL,
  [ConditionType] [varchar](3) NOT NULL,
  [ConditionValue] [varchar](5000) NULL,
  CONSTRAINT [PK_ScheduleReportFilterCondition] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportFilterCondition]
  ADD CONSTRAINT [FK_ScheduleReportFilterCondition_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportFilterCondition]
  ADD CONSTRAINT [FK_ScheduleReportFilterCondition_ProductReportAttribute] FOREIGN KEY ([IdProductReportAttribute]) REFERENCES [dbo].[ProductReportAttribute] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportFilterCondition]
  ADD CONSTRAINT [FK_ScheduleReportFilterCondition_Question] FOREIGN KEY ([IdQuestion]) REFERENCES [dbo].[Question] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportFilterCondition]
  ADD CONSTRAINT [FK_ScheduleReportFilterCondition_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO