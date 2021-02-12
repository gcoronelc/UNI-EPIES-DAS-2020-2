use [ColegioAcademica]
go


create procedure usp_registrar_alumno(
      
	  
	  @nombre varchar(100),
	  @apellidopaterno varchar(100),
	  @apellidomaterno varchar(100),
	  @dni char(8),
	  @fecnac datetime,
	  @celular char(9),
	  @direccion varchar(200),
	  @sexo varchar(1),
	  @emergencia varchar(200),
	  @estado int,
	  @correo varchar(30)
	  

	  /*@codigo int out,
	  @mensaje varchar(1000) out*/

)
as 
begin
     /* declare @cont int;
	 select @cont=count(1) from [dbo].[alumno]
	 where [idalumno]=@idalumno;
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
    */
	 insert into alumno(nombre,paterno,materno,dni,fecnac,celular,direccion,sexo,estado,correo)
	 values(@nombre,@apellidopaterno,@apellidomaterno,@dni,@fecnac,@celular,@direccion,@sexo,@estado,@correo);
	
	 
/*
	select 
	       nombre = @nombre ,
	       apellido_paterno = @apellidopaterno ,
	       apellido_materno=  @apellidomaterno ,
	       dni=    @dni ,
	       fecnac=@fecnac ,
	       paisOrigen= @paisorigen  ,
	       ciudad=@ciudad ,
	       provincia=@provincia ,
	       celular=@celular ,
	       direccion=@direccion ,
	       institucion_previa=@institucionprevia ,
	       sexo=@sexo ,
	       emergencia=@emergencia ,
	       estado=@estado 
	from alumno
	where idalumno=@idalumno
*/  
  
  
end;
go

begin
	/*declare @codigo int, @mensaje varchar(2000);*/
	EXECUTE usp_registrar_alumno
	       
	       'luis miguel' ,
	        'ramos' ,
	        'llanos',
	          '73102581' ,
	      '08/06/2005' ,
	       '940514367' ,
	       'jr. cabana 251- chorrillos' ,
	       'M',
	       '948820307' ,
	       1,
		   'llanosramos11@hotmail.com';
	/*print cast(@codigo as varchar(10)) + ' - ' + @mensaje;*/
end;
go


select * from [ColegioAcademica].[dbo].[ALUMNO]