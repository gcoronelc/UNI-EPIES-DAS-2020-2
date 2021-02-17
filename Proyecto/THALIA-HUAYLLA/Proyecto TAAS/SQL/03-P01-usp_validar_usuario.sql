USE [TAAS]
GO

CREATE  procedure [dbo].[usp_validar_usuario]
(
	@usuario varchar(50),
	@clave varchar(50),
	@codigo int out,
	@mensaje varchar(1000) out
)
as
begin
	declare @cont int;
	select @cont = count(1)
	from EMPLEADO a inner join USUARIO b ON a.idempleado = b.idempleado
	where USUARIO = @usuario and CLAVE = @clave;
	if( @cont = 1 )
	begin
		set @codigo = 1;
		set @mensaje = 'Todo bien';
	end
	else
	begin
		set @codigo = -1;
		set @mensaje = 'Datos Incorrectos'
	end;
end;
GO

