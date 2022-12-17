
sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO

sp_configure 'Database Mail XPs', 1;
GO
RECONFIGURE
GO

-- Create a Database Mail profile  
EXECUTE msdb.dbo.sysmail_add_profile_sp  
    @profile_name = 'Jose',  
    @description = 'Perfil de Notificaciones administrador' ;  
GO

-- Grant access to the profile to the DBMailUsers role  
EXECUTE msdb.dbo.sysmail_add_principalprofile_sp  
    @profile_name = 'Jose',  
    @principal_name = 'public',  
    @is_default = 1 ;
GO

-- Create a Database Mail account  
EXECUTE msdb.dbo.sysmail_add_account_sp  
    @account_name = 'JoseHotmail',  
    @description = 'Correo de notificaciones',  
    @email_address = 'caleroeddy99@hotmail.com',  
    @display_name = 'Administrador',  
    @mailserver_name = 'smtp-mail.outlook.com',
    @port = 587,
    @enable_ssl = 1,
    @username = 'caleroeddy99@hotmail.com',
    @password = 'Isaac12$1999' ;  
GO

-- Add the account to the profile  
EXECUTE msdb.dbo.sysmail_add_profileaccount_sp  
    @profile_name = 'Jose',  
    @account_name = 'JoseHotmail',  
    @sequence_number =1 ;  
GO