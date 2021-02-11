USE COLEGIO
GO


--Tabla Alumno 

SET IDENTITY_INSERT alumno ON;
GO

INSERT INTO alumno(idalumno,nombre,apellido,dni,fecnac,direccion,sexo) 
VALUES( 1, 'Carlos', 'Saavedra', '71465894', '05/07/2004','las rosas 560 mz.05','H' );

INSERT INTO alumno(idalumno,nombre,apellido,dni,fecnac,paisOrigen,ciudad,provincia,celular,direccion,institucion_previa,sexo,estado,emergencia)  
VALUES( 2, 'Maria', 'Cano', '71489637', '21/07/2004', 'Peru','Lima','Lima','148652379','las Flores 250','San Judas Tadeo ' ,'F','S','178059999');

INSERT INTO alumno(idalumno,nombre,apellido,dni,fecnac,paisOrigen,ciudad,provincia,celular,direccion,institucion_previa,sexo,estado,emergencia)  
VALUES( 3, 'Jesus', 'Perez', '71478590', '01/02/2004','Peru','Arequipa','Caraveli', '148652379','Ugarte 500','Fe y alegria 04','M','S','210004875' );

INSERT INTO alumno(idalumno,nombre,apellido,dni,fecnac,paisOrigen,ciudad,provincia,celular,direccion,institucion_previa,sexo,estado,emergencia)  
VALUES( 4, 'Roberto', 'Quispe', '71485622', '06/12/2005', 'Venezuela','Caracas','Caracas','148652379','las rosas 449 mz.06','Fe y alegria 04','M','N','635986200');

INSERT INTO alumno(idalumno,nombre,apellido,dni,fecnac,paisOrigen,ciudad,provincia,celular,direccion,institucion_previa,sexo,estado,emergencia)  
VALUES( 5, 'Sandra', 'Torres', '71458881', '14/01/2004', 'Peru','Lima','Lima','148652379','las flores 784 paradero 7','Divino corazon de Jesus' ,'F','S','14726041');
GO

SET IDENTITY_INSERT alumno OFF;
GO

SELECT * FROM ALUMNO;
GO


--Tabla Persona

SET IDENTITY_INSERT persona ON;
GO

INSERT INTO persona(idpersona,nombre,apellido,dni,profesion,telefono,celular,direccion,correo)   
VALUES( 12, 'Mario', 'Saavedra', '70145213', 'Docente','3767718', '123478599','las rosas 560 mz.05','CarlosS@gmail.com' );

INSERT INTO persona(idpersona,nombre,apellido,dni,profesion,telefono,celular,direccion,correo) 
VALUES( 13, 'Ramon', 'Cano', '78965421', 'Ingeniero','3767718', '986235100','las flores 250','JrAlva@gmail.com' );  

INSERT INTO persona(idpersona,nombre,apellido,dni,profesion,telefono,celular,direccion,correo)  
VALUES( 14, 'Martha', 'Rivas', '47895621', 'Docente','3767718', '784125963','Ugarte 500 ','MMmoron@gmail.com' );  

INSERT INTO persona(idpersona,nombre,apellido,dni,profesion,telefono,celular,direccion,correo)  
VALUES( 15, 'Jose', 'Quispe', '7845219', 'Doctor','3767718', '444589621','Canarias mz.05','QuispeJOSE@gmail.com' );  

INSERT INTO persona(idpersona,nombre,apellido,dni,profesion,telefono,celular,direccion,correo)  
VALUES( 16, 'Carmen', 'Flores', '95412687', 'Veterinaria','3767718', '789651234','las flores 755 paradero 7','Cncg0005@gmail.com' ); 
GO

SET IDENTITY_INSERT persona OFF;
GO


------------------------------------------------------------------------------------

--Tabla rol 

INSERT INTO rol VALUES( 1, 'Secretario' );
INSERT INTO rol VALUES( 2, 'Administrador' );
GO


--Tabla Usuario 

SET IDENTITY_INSERT usuario ON;
GO

INSERT INTO usuario(idusuario,nombre,apellido,idrol,usuario,password) 
VALUES( 1, 'Jimena', 'Alvarez', 1, 'Jimena', '12345' );

INSERT INTO usuario(idusuario,nombre,apellido,idrol,usuario,password) 
VALUES( 2, 'Angie', 'Torres', 1, 'Angie', '78451' );

INSERT INTO usuario(idusuario,nombre,apellido,idrol,usuario,password)  
VALUES( 3, 'Piero', 'Berrospi', 2, 'Piero', '30066' );

INSERT INTO usuario(idusuario,nombre,apellido,idrol,usuario,password)  
VALUES( 4, 'Julio', 'Saavedra', 2, 'Julio', '54693' );

INSERT INTO usuario(idusuario,nombre,apellido,idrol,usuario,password)  
VALUES( 5, 'Marcos', 'Torres', 1, 'Marcos', '11203' );
GO

SET IDENTITY_INSERT usuario OFF;
GO