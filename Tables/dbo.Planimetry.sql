CREATE TABLE [dbo].[Planimetry] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](1000) NULL,
  [FileName] [varchar](100) NOT NULL,
  [FileEncoded] [varbinary](max) NULL,
  [RealFileName] [varchar](100) NULL,
  [FileType] [varchar](50) NULL,
  [IdBrand] [int] NULL,
  [IdProvider] [int] NULL,
  [IdCategory] [int] NULL,
  [CreatedDate] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [AllPointOfInterest] [bit] NULL,
  [Identifier] [varchar](100) NULL,
  [MD5Checksum] [varchar](32) NULL,
  CONSTRAINT [PK_Planimetry] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Planimetry]
  ADD CONSTRAINT [FK_Planimetry_Brand] FOREIGN KEY ([IdBrand]) REFERENCES [dbo].[Brand] ([Id])
GO

ALTER TABLE [dbo].[Planimetry]
  ADD CONSTRAINT [FK_Planimetry_Category] FOREIGN KEY ([IdCategory]) REFERENCES [dbo].[Category] ([Id])
GO

ALTER TABLE [dbo].[Planimetry]
  ADD CONSTRAINT [FK_Planimetry_Provider] FOREIGN KEY ([IdProvider]) REFERENCES [dbo].[Provider] ([Id])
GO

ALTER TABLE [dbo].[Planimetry]
  ADD CONSTRAINT [FK_Planimetry_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO