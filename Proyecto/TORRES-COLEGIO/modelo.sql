
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



CREATE TABLE alumno
( 
	idalumno             integer  NOT NULL ,
	nombre               varchar(50)  NULL ,
	apellido             varchar(50)  NULL ,
	dni                  char(8)  NOT NULL ,
	fecnac               varchar(20)  NOT NULL ,
	paisOrigen           varchar(20)  NOT NULL ,
	ciudad               varchar(20)  NOT NULL ,
	provincia            varchar(20)  NOT NULL ,
	celular              char(9)  NULL ,
	direccion            varchar(200)  NOT NULL ,
	institucion_previa   varchar(3000)  NULL ,
	sexo                 varchar(1)  NOT NULL ,
	estado               varchar(1)  NOT NULL ,
	emergencia           varchar(200)  NOT NULL ,
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



CREATE TABLE relacion
( 
	idpersona            integer  NOT NULL ,
	idalumno             integer  NOT NULL ,
	idparentesco         integer  NULL ,
	representante        integer  NOT NULL ,
	responsable          integer  NOT NULL ,
	CONSTRAINT XPKrelacion PRIMARY KEY (idpersona ASC,idalumno ASC),
	CONSTRAINT FK_RELACION_PERSONA FOREIGN KEY (idpersona) REFERENCES persona(idpersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT FK_RELACION_ALUMNO FOREIGN KEY (idalumno) REFERENCES alumno(idalumno)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_24 FOREIGN KEY (idparentesco) REFERENCES parentesco(idparentesco)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
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



CREATE TABLE tipoobligacion
( 
	idtipoobligacion     integer  NOT NULL ,
	descripcion          varchar(100)  NULL ,
	mora                 numeric(10,2)  NOT NULL ,
	CONSTRAINT XPKtipo_pensiones PRIMARY KEY (idtipoobligacion ASC)
)
go



CREATE TABLE nivel
( 
	idnivel              integer  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	CONSTRAINT XPKnivel PRIMARY KEY (idnivel ASC)
)
go



CREATE TABLE grado
( 
	idgrado              integer  NOT NULL ,
	idnivel              integer  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	CONSTRAINT XPKgrado PRIMARY KEY (idgrado ASC),
	CONSTRAINT R_25 FOREIGN KEY (idnivel) REFERENCES nivel(idnivel)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE seccion
( 
	idseccion            integer IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	idgrado              integer  NULL ,
	aula                 varchar(100)  NOT NULL ,
	vacantes             integer  NOT NULL ,
	matriculados         integer  NOT NULL ,
	estado               integer  NOT NULL ,
	CONSTRAINT XPKprogramacion PRIMARY KEY (idseccion ASC),
	CONSTRAINT R_26 FOREIGN KEY (anio) REFERENCES periodo(anio)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_28 FOREIGN KEY (idgrado) REFERENCES grado(idgrado)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE matricula
( 
	idmatricula          integer  NOT NULL ,
	idseccion            integer  NOT NULL ,
	idalumno             integer  NOT NULL ,
	fecha                datetime  NOT NULL ,
	estado               integer  NULL ,
	CONSTRAINT XPKmatricula PRIMARY KEY (idmatricula ASC),
	CONSTRAINT R_29 FOREIGN KEY (idseccion) REFERENCES seccion(idseccion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_30 FOREIGN KEY (idalumno) REFERENCES alumno(idalumno)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE obligacion
( 
	idobligacion         integer  NOT NULL ,
	idtipoobligacion     integer  NULL ,
	idalumno             integer  NULL ,
	anio                 integer  NULL ,
	idmatricula          integer  NULL ,
	nrocuota             int  NOT NULL ,
	descripcion          varchar(200)  NULL ,
	importe              numeric(10,2)  NOT NULL ,
	fecvencimiento       datetime  NOT NULL ,
	estado               integer  NULL ,
	CONSTRAINT XPKpension PRIMARY KEY (idobligacion ASC),
	CONSTRAINT R_6 FOREIGN KEY (anio) REFERENCES periodo(anio)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_7 FOREIGN KEY (idalumno) REFERENCES alumno(idalumno)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_16 FOREIGN KEY (idtipoobligacion) REFERENCES tipoobligacion(idtipoobligacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_21 FOREIGN KEY (idmatricula) REFERENCES matricula(idmatricula)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE pago
( 
	idpago               integer  NOT NULL ,
	idobligacion         integer  NULL ,
	descripcion          varchar(200)  NOT NULL ,
	importe              decimal(18,2)  NOT NULL ,
	fecha                datetime  NOT NULL ,
	CONSTRAINT XPKpagos PRIMARY KEY (idpago ASC),
	CONSTRAINT R_31 FOREIGN KEY (idobligacion) REFERENCES obligacion(idobligacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE rol
( 
	idrol                integer  NOT NULL ,
	descripcion          varchar(100)  NOT NULL ,
	CONSTRAINT XPKrol PRIMARY KEY (idrol ASC)
)
go



CREATE TABLE usuario
( 
	idusuario            varchar(10)  NOT NULL ,
	idrol                integer  NOT NULL ,
	usuario              varchar(100)  NOT NULL ,
	password             varchar(5)  NOT NULL ,
	CONSTRAINT XPKusuarios PRIMARY KEY (idusuario ASC),
	CONSTRAINT FK_USUARIO_ROL FOREIGN KEY (idrol) REFERENCES rol(idrol)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go


