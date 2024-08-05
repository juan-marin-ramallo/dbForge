CREATE TABLE [dbo].[DepartmentLocation] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NULL,
  [IdDepartment] [int] NULL,
  CONSTRAINT [PK_DepartmentLocation] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DepartmentLocation]
  ADD CONSTRAINT [FK_DepartmentLocation_Department] FOREIGN KEY ([IdDepartment]) REFERENCES [dbo].[Department] ([Id])
GO