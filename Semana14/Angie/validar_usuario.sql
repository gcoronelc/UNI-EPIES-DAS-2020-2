USE COLEGIO
GO

drop procedure usp_validar_usuario
go


create procedure usp_validar_usuario
(
	@usuario varchar(50),
	@clave   varchar(50),
	@codigo  int out,
	@mensaje varchar(1000) out
)
as
begin
	-- variables
	declare @cont int;
	-- Verifica usuario y clave
	select @cont = count(1) 
	from usuario
	where usuario = @usuario and password = @clave;
	if( @cont = 1 )
	begin
		set @codigo = 1;
		set @mensaje = 'Todo bien';
	end
	else
	begin
		set @codigo = -1;
		set @mensaje = 'Datos incorrectos,intente nuevamente.';
	end;
end;
go 

select * from usuario;
go

--probaremos el procedimiento almacenado 

begin 
  declare @codigo int , @mensaje varchar(2000);
  EXEC usp_validar_usuario 'jimena','12345',@codigo out , @mensaje out;
  print cast(@codigo as varchar(10)) + ' - ' + @mensaje;
end;
go