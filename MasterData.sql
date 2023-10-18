USE [DataRecovery]
GO
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','FileMonitorInterval','60000','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','FileuploadInterval','60000','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','FileSizePerStreaminMB','1024','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','FileChunkinMB','1024','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','OutputFileName','FileInfo.json','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','ThreadSleep','1000','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','CanEncrypt','false','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','fileVersionKey','###!!','Krishna',GETDATE(),1)

GO



INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','IncludeFileExtensions','*.docx,*.txt','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','ExcludeFileExtensions','*.docx,*.txt','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','ExcludeFolders','x','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','BackupFilePath','D:\ServerFolder','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','BackupType','Local','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','FoldersToScan','C:\Vamsi','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','VersionstoKeep','3','Krishna',GETDATE(),1)
INSERT INTO [dbo].[tblConfigs] ([SystemId] ,[Configkey] ,[Configvalue] ,[CreatedBy] ,[CreatedOn] ,[IsActive]) VALUES ('Srinivas-HP','CloudBackupProvider','AWS','Krishna',GETDATE(),1)



