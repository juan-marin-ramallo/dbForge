CREATE TABLE [dbo].[PersonCustomAttribute] (
  [Id] [int] IDENTITY,
  [Name] [nvarchar](255) NOT NULL,
  [IdType] [int] NOT NULL,
  [IdUser] [int] NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  CONSTRAINT [PK__PersonCu__3214EC07AB0F4F5D] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonCustomAttribute]
  ADD CONSTRAINT [FK__PersonCus__IdTyp__1CBDDCC4] FOREIGN KEY ([IdType]) REFERENCES [dbo].[CustomAttributeValueType] ([Code])
GO