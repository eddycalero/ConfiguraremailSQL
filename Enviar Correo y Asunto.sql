
--Configuración de prueba de correo de base de datos
--Ahora que hemos configurado una cuenta de correo electrónico, ¿qué sigue? Bueno,
--enviemos un correo electrónico de prueba y veamos si funciona.
--Como mencionamos anteriormente, podríamos enviar un correo electrónico 
--para alertar a un usuario sobre un evento que ocurrió en la base de datos y 
--esto es exactamente lo que haremos más adelante con un simple activador de DML. 
--Pero ahora, enviemos un correo electrónico al destinatario especificado 
--mediante el procedimiento almacenado sp_send_dbmail.

EXEC msdb.dbo.sp_send_dbmail
     @profile_name = 'Jose',
     @recipients = 'Caleroeddy99@gmail.com',
     @body = 'Esta es una prueba que no esta fallida',
     @subject = 'La prueba no fue inexitosa';
GO

SELECT * FROM msdb.dbo.sysmail_event_log;