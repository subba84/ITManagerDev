USE [DataRecovery]
GO
SET IDENTITY_INSERT [dbo].[tblUserMachineMappings] ON 
GO

INSERT [dbo].[tblUserMachineMappings] ([UserMachineMappingID], [UserId], [SystemId], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn], [IsActive]) VALUES (2, N'SubbaRao', N'Lenovo-123', N'krishna', CAST(N'2002-02-02T00:00:00.000' AS DateTime), NULL, NULL, 1)


SET IDENTITY_INSERT [dbo].[tblUserMachineMappings] OFF
GO
