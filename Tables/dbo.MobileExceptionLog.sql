CREATE TABLE [dbo].[MobileExceptionLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [ClassName] [varchar](100) NOT NULL,
  [MethodName] [varchar](200) NOT NULL,
  [ExceptionClassName] [varchar](100) NOT NULL,
  [ExceptionMessage] [varchar](500) NULL,
  [ExceptionStackTrace] [varchar](8000) NULL,
  [ApplicationVersionCode] [smallint] NULL,
  [ApplicationVersionName] [varchar](50) NULL,
  [DeviceAvailableMemory] [bigint] NULL,
  [DeviceTotalMemory] [bigint] NULL,
  [DeviceModel] [varchar](100) NULL,
  [DeviceSdkInt] [smallint] NULL,
  [DeviceSdkName] [varchar](50) NULL,
  [DeviceReleaseVersion] [varchar](20) NULL,
  CONSTRAINT [PK_MobileExceptionLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO