CREATE TABLE [dbo].[CustomAttribute] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [IdValueType] [int] NOT NULL CONSTRAINT [DF_CustomAttribute_ValueType] DEFAULT (0),
  [DefaultValue] [varchar](max) NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_CustomAttribute_Deleted] DEFAULT (0),
  [IsObligatory] [bit] NOT NULL CONSTRAINT [DF_CustomAttribute_IsObligatory] DEFAULT (0),
  [IsVisible] [bit] NOT NULL CONSTRAINT [DF_CustomAttribute_IsVisible] DEFAULT (1),
  [CanDelete] [bit] NOT NULL CONSTRAINT [DF_CustomAttribute_CanDelete] DEFAULT (1),
  [CanEditObligatory] [bit] NOT NULL CONSTRAINT [DF_CustomAttribute_CanEditObligatory] DEFAULT (1),
  CONSTRAINT [PK_CustomAttribute] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttribute]
  ADD CONSTRAINT [FK_CustomAttribute_CustomAttributeValueType] FOREIGN KEY ([IdValueType]) REFERENCES [dbo].[CustomAttributeValueType] ([Code])
GO

ALTER TABLE [dbo].[CustomAttribute]
  ADD CONSTRAINT [FK_CustomAttribute_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO