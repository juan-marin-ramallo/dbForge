CREATE TABLE [dbo].[PersonOfInterest] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [LastName] [varchar](50) NOT NULL,
  [Identifier] [varchar](20) NULL,
  [MobilePhoneNumber] [varchar](20) NULL,
  [MobileIMEI] [varchar](40) NOT NULL,
  [Status] [char](1) NOT NULL,
  [Type] [char](1) NULL,
  [IdDepartment] [int] NULL,
  [Deleted] [bit] NOT NULL,
  [Pending] [bit] NOT NULL,
  [DeviceId] [varchar](300) NULL,
  [Pin] [varchar](4) NULL,
  [PinDate] [datetime] NULL,
  [Avatar] [varbinary](max) NULL,
  [Email] [varchar](255) NULL,
  [DeviceBrand] [varchar](50) NULL,
  [DeviceModel] [varchar](50) NULL,
  [AndroidVersion] [varchar](50) NULL,
  CONSTRAINT [PK_Stocker] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterest] WITH NOCHECK
  ADD CONSTRAINT [FK_PersonOfInterest_Department] FOREIGN KEY ([IdDepartment]) REFERENCES [dbo].[Department] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterest]
  ADD CONSTRAINT [FK_PersonOfInterest_PersonOfInterestType] FOREIGN KEY ([Type]) REFERENCES [dbo].[PersonOfInterestType] ([Code])
GO