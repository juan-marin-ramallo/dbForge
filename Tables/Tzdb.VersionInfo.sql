CREATE TABLE [Tzdb].[VersionInfo] (
  [Version] [char](5) NOT NULL,
  [Loaded] [datetimeoffset](0) NOT NULL,
  CONSTRAINT [PK__VersionI__0F54013590D0C3AD] PRIMARY KEY CLUSTERED ([Version])
)
ON [PRIMARY]
GO