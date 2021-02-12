Use Colegio;
go

drop procedure usp_validar_usuario;
go

create procedure usp_validar_usuario
(
     @usuario varchar(50),
	 @clave   varchar(50),
	 @codigo  int    out,
	 @mensaje varchar(1000) out
)
as 
begin 
     declare @cont int;
	 select @cont=count(1) from [dbo].[usuario]
	 where [usuario]=@usuario and [password]=@clave;
	 if(@cont=1)
	 begin
	     set @codigo=1;
		 set @mensaje='Todo bien';
	 end
	 else
	 begin
	     set @codigo=-1;
		 set @mensaje='Datos incorrectos.';
	 end;

end;
go



begin
	declare @codigo int, @mensaje varchar(2000);
	EXEC usp_validar_usuario 'coroneleric', '1234', @codigo out, @mensaje out;
	print cast(@codigo as varchar(10)) + ' - ' + @mensaje;
end;
go


select * from [dbo].[usuario]



