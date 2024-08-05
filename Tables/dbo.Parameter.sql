CREATE TABLE [dbo].[Parameter] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Deleted] [bit] NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [IdType] [int] NOT NULL,
  [Description] [varchar](500) NULL,
  [Value] [int] NULL,
  [Order] [int] NULL,
  CONSTRAINT [PK_Parameter] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Parameter]
  ADD CONSTRAINT [FK_Parameter_Type] FOREIGN KEY ([IdType]) REFERENCES [dbo].[ParameterType] ([Id])
GO

ALTER TABLE [dbo].[Parameter]
  ADD CONSTRAINT [FK_Parameter_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO