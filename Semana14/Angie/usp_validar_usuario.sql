USE COLEGIO
GO

select*from usuario
go 

create procedure validar_usuario
(
	@usuario varchar(50),
	@clave   varchar(50),
	@codigo  int out,
	@mensaje varchar(1000) out
)
as
begin
	declare @cont int;
	select @cont = count(1) 
	from usuario
	where usuario = @usuario and clave = @clave;
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
	select 
		idusuario    codigo,
		idrol        rol,
		usuario      usuarios,
		'******'     clave
		from usuario
	where usuario = @usuario and clave = @clave;
end;
go 


--probaremos el procedimiento almacenado 

begin 
  declare @codigo int , @mensaje varchar(2000);
  EXEC validar_usuario 'jimena','12345',@codigo out , @mensaje out;
  print cast(@codigo as varchar(10)) + ' - ' + @mensaje;
end;
go