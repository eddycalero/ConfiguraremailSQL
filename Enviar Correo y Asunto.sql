
--Configuraci�n de prueba de correo de base de datos
--Ahora que hemos configurado una cuenta de correo electr�nico, �qu� sigue? Bueno,
--enviemos un correo electr�nico de prueba y veamos si funciona.
--Como mencionamos anteriormente, podr�amos enviar un correo electr�nico 
--para alertar a un usuario sobre un evento que ocurri� en la base de datos y 
--esto es exactamente lo que haremos m�s adelante con un simple activador de DML. 
--Pero ahora, enviemos un correo electr�nico al destinatario especificado 
--mediante el procedimiento almacenado sp_send_dbmail.

EXEC msdb.dbo.sp_send_dbmail
     @profile_name = 'Jose',
     @recipients = 'Caleroeddy99@gmail.com',
     @body = 'Esta es una prueba que no esta fallida',
     @subject = 'La prueba no fue inexitosa';
GO

SELECT * FROM msdb.dbo.sysmail_event_log;