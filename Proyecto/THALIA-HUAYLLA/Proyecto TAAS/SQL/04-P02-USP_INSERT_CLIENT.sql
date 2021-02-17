
USE TAASGROUP;
GO


SELECT * FROM CLIENTE;
GO

drop procedure USP_INSERT_CLIENT;
go


CREATE PROCEDURE USP_INSERT_CLIENT
(
	@NOMBRE     VARCHAR(150),
	@IDTIPODOC  int out,
	@NRODOC     VARCHAR(20),
	@DIRECCION  VARCHAR(200),
	@CELULAR    VARCHAR(20),
	@CORREO     VARCHAR(50),
	@IDCLIENTE  int out,
	@codigo     int out,
	@mensaje    varchar(1000) out	
)
AS
BEGIN
	BEGIN TRY

		-- Inicio de transacción
		BEGIN TRANSACTION;
		set @IDCLIENTE = 0;

		-- Insertar cliente
		INSERT INTO CLIENTE(NOMBRE,IDTIPODOC,NRODOC,DIRRECCION,CELULAR,CORREO)
		VALUES(@NOMBRE,@IDTIPODOC,@NRODOC,@DIRECCION,@CELULAR,@CORREO);

		set @IDCLIENTE = @@IDENTITY;
		
		-- Fin de transacción
		set @codigo = 1;
		set @mensaje = 'Proceso ejecutado correctamente.';
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		set @codigo = -1;
		set @mensaje = 'Proceso fue abortado.';
	END CATCH;
END;
GO

-- Prueba
begin
	declare @idcliente int, @codigo int, @mensaje varchar(2000);
	EXEC USP_INSERT_CLIENT 'Adrian', 1, '123456', 'Av Alcazar', '987654321', 'gmail',
		@idcliente out, @codigo  out, @mensaje out;
	select @idcliente, @codigo, @mensaje;
end;
go


select * from cliente;
go

