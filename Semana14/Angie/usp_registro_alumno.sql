Use COLEGIO
GO

drop procedure usp_registro_alumno;
go

Create procedure usp_registro_alumno
(
	@nombre varchar(50),
	@apellido varchar(50),
	@dni char(8),
	@fecnac varchar(20),
	@direccion varchar(200),
	@sexo varchar(1),
	@codigo int out ,
	@mensaje varchar (1000) output
)
as
begin 

	BEGIN TRY 
		BEGIN TRANSACTION 
	 
		INSERT INTO dbo.alumno(nombre, apellido, dni, fecnac,direccion, sexo) 
		VALUES(@nombre, @apellido,@dni, @fecnac, @direccion, @sexo );

		set @codigo = 1;
		set @mensaje = 'Alumno registrado correctamente.';

		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		set @codigo = -1;
		set @mensaje = 'Proceso fue abortado.';
	END CATCH;

end;
go


begin
	exec usp_registro_alumno 
end;
go

select * from alumno

