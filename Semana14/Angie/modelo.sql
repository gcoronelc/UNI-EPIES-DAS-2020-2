
CREATE TABLE alumno
( 
	idalumno             integer IDENTITY ( 1,1 ) ,
	nombre               varchar(50)  NULL ,
	apellido             varchar(50)  NULL ,
	dni                  char(8)  NULL ,
	fecnac               datetime  NOT NULL ,
	direccion            varchar(200)  NOT NULL ,
	sexo                 varchar(1)  NULL ,
	CONSTRAINT XPKalumnos PRIMARY KEY (idalumno ASC)
)
go



CREATE TABLE parentesco
( 
	idparentesco         integer  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	CONSTRAINT XPKparentesco PRIMARY KEY (idparentesco ASC)
)
go



CREATE TABLE periodo
( 
	anio                 integer  NOT NULL ,
	fecinicio            datetime  NULL ,
	anio_fin             integer  NOT NULL ,
	estado               integer  NOT NULL ,
	bonoingreso          numeric(10,2)  NOT NULL ,
	impmatricula         numeric(10,2)  NOT NULL ,
	impcuota             numeric(10,2)  NOT NULL ,
	CONSTRAINT XPKanio_lectivo PRIMARY KEY (anio ASC)
)
go



CREATE TABLE persona
( 
	idpersona            integer IDENTITY ( 1,1 ) ,
	nombre               varchar(100)  NOT NULL ,
	apellido             varchar(100)  NOT NULL ,
	dni                  varchar(10)  NOT NULL ,
	profesion            varchar(100)  NOT NULL ,
	telefono             varchar(20)  NOT NULL ,
	celular              varchar(20)  NOT NULL ,
	direccion            varchar(200)  NOT NULL ,
	correo               varchar(200)  NOT NULL ,
	CONSTRAINT XPKpadres PRIMARY KEY (idpersona ASC)
)
go



CREATE TABLE relacion
( 
	idpersona            integer  NOT NULL ,
	idalumno             integer  NOT NULL ,
	idparentesco         integer  NULL ,
	representante        integer  NOT NULL ,
	responsable          integer  NOT NULL ,
	CONSTRAINT XPKrelacion PRIMARY KEY (idpersona ASC,idalumno ASC)
)
go



CREATE TABLE rol
( 
	idrol                integer  NOT NULL ,
	descripcion          varchar(100)  NOT NULL ,
	CONSTRAINT XPKrol PRIMARY KEY (idrol ASC)
)
go



CREATE TABLE tipoobligacion
( 
	idtipoobligacion     integer  NOT NULL ,
	descripcion          varchar(100)  NULL ,
	mora                 numeric(10,2)  NOT NULL ,
	CONSTRAINT XPKtipo_pensiones PRIMARY KEY (idtipoobligacion ASC)
)
go



CREATE TABLE usuario
( 
	idusuario            integer IDENTITY ( 1,1 ) ,
	nombre               varchar(100)  NOT NULL ,
	apellido             varchar(20)  NULL ,
	idrol                integer  NOT NULL ,
	usuario              varchar(20)  NULL ,
	password             varchar(20)  NULL ,
	CONSTRAINT XPKusuarios PRIMARY KEY (idusuario ASC)
)
go




ALTER TABLE relacion
	ADD CONSTRAINT FK_RELACION_PERSONA FOREIGN KEY (idpersona) REFERENCES persona(idpersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE relacion
	ADD CONSTRAINT FK_RELACION_ALUMNO FOREIGN KEY (idalumno) REFERENCES alumno(idalumno)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE relacion
	ADD CONSTRAINT R_24 FOREIGN KEY (idparentesco) REFERENCES parentesco(idparentesco)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE usuario
	ADD CONSTRAINT FK_USUARIO_ROL FOREIGN KEY (idrol) REFERENCES rol(idrol)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


