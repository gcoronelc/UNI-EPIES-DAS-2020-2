-- INSERTAR UN NUEVO CLIENTE

SELECT * FROM CLIENTE;
GO

SELECT * FROM CONTADOR;
GO

DROP PROCEDURE USP_CLIENTE_INSERT;
GO

CREATE PROCEDURE USP_CLIENTE_INSERT
(
	@PATERNO   VARCHAR(100),
	@MATERNO   VARCHAR(100),
	@NOMBRE    VARCHAR(100),
	@DNI       VARCHAR(20),
	@CIUDAD    VARCHAR(100),
	@DIRECCION VARCHAR(150),
	@TELEFONO  VARCHAR(20),
	@EMAIL     VARCHAR(100),
	@codigo    int out,
	@mensaje   varchar(1000) out
)
AS
BEGIN
	DECLARE @CONT INT, @LONGITUD INT ;
	declare @codCliente varchar(10);
	BEGIN TRY
		-- Inicio de transacción
		BEGIN TRANSACTION;
		-- Datos para el codigo
		select @CONT = int_contitem, @LONGITUD = int_contlongitud 
		from Contador
		where vch_conttabla = 'Cliente';
		if( @@ROWCOUNT = 0 )
		begin
			throw 51000, 'Contador no existe.', 1;
		end;
		-- Actualizar contador
		SET @CONT = @CONT + 1;
		UPDATE CONTADOR 
		SET int_contitem = @CONT
		where vch_conttabla = 'Cliente';
		-- Generar el codigo
		set @codCliente = RIGHT('00000' + Ltrim(Rtrim(@CONT)),@LONGITUD);
		-- Insertar el cliente
		INSERT INTO CLIENTE(chr_cliecodigo,vch_cliepaterno,vch_cliematerno,
		vch_clienombre,chr_cliedni,vch_clieciudad,vch_cliedireccion,
		vch_clietelefono,vch_clieemail)
		VALUES(@codCliente,@PATERNO,@MATERNO,@NOMBRE,@DNI,@CIUDAD,@DIRECCION,@TELEFONO,@EMAIL);
		-- Fin de transacción
		set @codigo = 1;
		set @mensaje = 'Proceso ejecutado correctamente. Código del cliente ' + @codCliente + '.';
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
	declare @codigo int, @mensaje varchar(2000);
	EXEC USP_CLIENTE_INSERT 'Abc', 'Xyz', 'Mnp', '123', 'Lima', 'Mi Casa', '555', 'gmail' , @codigo out, @mensaje out;
	print cast(@codigo as varchar(10)) + ' - ' + @mensaje;
end;
go


-- Para generar el codigo
select RIGHT('00000' + Ltrim(Rtrim(10)),5);
go

-- Columnas de la tabla cliente

sp_help cliente;
go



