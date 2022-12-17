
----Revertir los cambios

EXECUTE msdb.dbo.sysmail_delete_profileaccount_sp @profile_name = 'Jose'
EXECUTE msdb.dbo.sysmail_delete_principalprofile_sp @profile_name = 'Jose'
EXECUTE msdb.dbo.sysmail_delete_account_sp @account_name = 'JoseHotmail'
EXECUTE msdb.dbo.sysmail_delete_profile_sp @profile_name = 'Jose'




--Si algo sale mal, hay que ejecutar los procedimientos almacenados individualmente
--y esto podría ayudar a solucionar el problema. Solo hay que asegurarse de ejecutar
--el procedimiento almacenado ‘sysmail_add_profileaccount_sp’ después de que se 
--cree la cuenta de la base de datos y se cree un perfil de la base de datos.