CREATE TABLE [dbo].[Form] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NULL,
  [IdUser] [int] NULL,
  [Name] [varchar](100) NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  [StartDate] [datetime] NULL,
  [EndDate] [datetime] NULL,
  [IdFormCategory] [int] NULL,
  [AllPointOfInterest] [bit] NULL,
  [AllPersonOfInterest] [bit] NULL,
  [NonPointOfInterest] [bit] NULL,
  [Description] [varchar](1000) NULL,
  [OneTimeAnswer] [bit] NOT NULL CONSTRAINT [DF_Form_OneTimeAnswer] DEFAULT (0),
  [IsWeighted] [bit] NOT NULL CONSTRAINT [DF_Form_IsWeighted] DEFAULT (0),
  [AllowWebComplete] [bit] NOT NULL CONSTRAINT [DF_Form_AllowWebComplete] DEFAULT (1),
  [IdCompany] [int] NULL,
  [IdFormType] [int] NULL,
  [CompleteMultipleTimes] [bit] NOT NULL CONSTRAINT [DF_Form_CompleteMultipleTimes] DEFAULT (0),
  [EditedDate] [datetime] NULL,
  [IsFormPlus] [bit] NOT NULL CONSTRAINT [DF_Form_IsFormPlus] DEFAULT (0),
  CONSTRAINT [PK_Form] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Form]
  ADD CONSTRAINT [FK_Form_Company] FOREIGN KEY ([IdCompany]) REFERENCES [dbo].[Company] ([Id])
GO

ALTER TABLE [dbo].[Form]
  ADD CONSTRAINT [FK_Form_FormCategory] FOREIGN KEY ([IdFormCategory]) REFERENCES [dbo].[FormCategory] ([Id])
GO

ALTER TABLE [dbo].[Form]
  ADD CONSTRAINT [FK_Form_Parameter] FOREIGN KEY ([IdFormType]) REFERENCES [dbo].[Parameter] ([Id])
GO

ALTER TABLE [dbo].[Form]
  ADD CONSTRAINT [FK_Form_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO