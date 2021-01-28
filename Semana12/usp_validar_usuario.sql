

create procedure usp_validar_usuario
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
	from Empleado
	where vch_emplusuario = @usuario and vch_emplclave = @clave;
	if( @cont = 1 )
	begin
		set @codigo = 1;
		set @mensaje = 'Todo bien';
	end
	else
	begin
		set @codigo = -1;
		set @mensaje = 'Datos incorrectos.';
	end;
end;
go



begin
	declare @codigo int, @mensaje varchar(2000);
	EXEC usp_validar_usuario 'cromero', 'chicho', @codigo out, @mensaje out;
	print cast(@codigo as varchar(10)) + ' - ' + @mensaje;
end;
go


select * from Empleado;
go



select 
		chr_emplcodigo    codigo,
		vch_emplpaterno   paterno,
		vch_emplmaterno   materno,
		vch_emplnombre    nombre,
		vch_emplciudad    ciudad,
		vch_empldireccion direccion,
		vch_emplusuario   usuario,
		'*****'           clave
	from Empleado
	where vch_emplusuario = @usuario and vch_emplclave = @clave;