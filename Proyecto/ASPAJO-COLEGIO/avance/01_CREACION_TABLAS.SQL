
CREATE TABLE periodo
( 
	anio                 integer  NOT NULL ,
	fecinicio            datetime  NULL ,
	anio_fin             datetime  NULL ,
	estado               integer  NOT NULL ,
	CONSTRAINT XPKanio_lectivo PRIMARY KEY (anio ASC)
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
	nombre               varchar(50)  NOT NULL ,
	idnivel              integer  NOT NULL ,
	abreviatura          varchar(5)  NULL ,
	CONSTRAINT XPKgrado PRIMARY KEY (idgrado ASC),
	CONSTRAINT R_39 FOREIGN KEY (idnivel) REFERENCES nivel(idnivel)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE seccion
( 
	anio                 integer  NOT NULL ,
	idseccion            integer IDENTITY ( 1,1 ) ,
	aula                 varchar(100)  NOT NULL ,
	vacantes             integer  NOT NULL ,
	matriculados         integer  NOT NULL ,
	estado               integer  NOT NULL ,
	idgrado              integer  NOT NULL ,
	CONSTRAINT XPKprogramacion PRIMARY KEY (idseccion ASC),
	CONSTRAINT R_26 FOREIGN KEY (anio) REFERENCES periodo(anio)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_38 FOREIGN KEY (idgrado) REFERENCES grado(idgrado)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE alumno
( 
	idalumno             integer IDENTITY ( 1,1 ) ,
	paterno              varchar(50)  NULL ,
	dni                  char(8)  NULL ,
	fecnac               datetime  NULL ,
	celular              char(9)  NULL ,
	direccion            varchar(100)  NULL ,
	sexo                 char(1)  NULL ,
	estado               integer  NULL ,
	nombre               varchar(50)  NULL ,
	materno              varchar(50)  NULL ,
	correo               varchar(30)  NULL ,
	CONSTRAINT XPKalumnos PRIMARY KEY (idalumno ASC)
)
go



CREATE TABLE matricula
( 
	idmatricula          integer IDENTITY ( 1,1 ) ,
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



CREATE TABLE curso
( 
	idcurso              integer IDENTITY ( 1,1 ) ,
	nombre               varchar(100)  NOT NULL ,
	estado               integer  NOT NULL ,
	CONSTRAINT XPKCURSO PRIMARY KEY (idcurso ASC)
)
go



CREATE TABLE nota
( 
	idnota               integer IDENTITY ( 1,1 ) ,
	idmatricula          integer  NOT NULL ,
	idcurso              integer  NOT NULL ,
	nota1                integer  NOT NULL ,
	nota2                integer  NOT NULL ,
	nota3                integer  NOT NULL ,
	nota4                integer  NOT NULL ,
	prom                 numeric(5,2)  NOT NULL ,
	CONSTRAINT XPKnota PRIMARY KEY (idnota ASC),
	CONSTRAINT R_36 FOREIGN KEY (idmatricula) REFERENCES matricula(idmatricula)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_37 FOREIGN KEY (idcurso) REFERENCES curso(idcurso)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE profesor
( 
	idprofesor           integer IDENTITY ( 1,1 ) ,
	nombre               varchar(100)  NOT NULL ,
	paterno              varchar(100)  NOT NULL ,
	materno              varchar(100)  NULL ,
	dni                  char(8)  NULL ,
	celular              char(9)  NULL ,
	direccion            varchar(100)  NULL ,
	sexo                 char(1)  NULL ,
	estado               integer  NULL ,
	fec_nac              datetime  NULL ,
	telefono             varchar(10)  NULL ,
	CONSTRAINT XPKPROFESOR PRIMARY KEY (idprofesor ASC)
)
go



CREATE TABLE detalle
( 
	iddetalle            integer IDENTITY ( 1,1 ) ,
	idseccion            integer  NOT NULL ,
	idcurso              integer  NOT NULL ,
	idprofesor           integer  NOT NULL ,
	CONSTRAINT XPKdetalle PRIMARY KEY (iddetalle ASC),
	CONSTRAINT R_33 FOREIGN KEY (idseccion) REFERENCES seccion(idseccion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_34 FOREIGN KEY (idcurso) REFERENCES curso(idcurso)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_35 FOREIGN KEY (idprofesor) REFERENCES profesor(idprofesor)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE persona
( 
	idpersona            integer IDENTITY ( 1,1 ) ,
	nombre               varchar(100)  NOT NULL ,
	paterno              varchar(50)  NOT NULL ,
	dni                  varchar(10)  NOT NULL ,
	profesion            varchar(100)  NOT NULL ,
	telefono             varchar(20)  NOT NULL ,
	celular              varchar(20)  NOT NULL ,
	direccion            varchar(200)  NOT NULL ,
	correo               varchar(200)  NOT NULL ,
	materno              varchar(50)  NULL ,
	CONSTRAINT XPKpadres PRIMARY KEY (idpersona ASC)
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
	representante        varchar(35)  NULL ,
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



CREATE TABLE rol
( 
	idrol                integer  NOT NULL ,
	descripcion          varchar(100)  NOT NULL ,
	CONSTRAINT XPKrol PRIMARY KEY (idrol ASC)
)
go



CREATE TABLE usuario
( 
	idusuario            integer  NOT NULL ,
	idrol                integer  NOT NULL ,
	usuario              varchar(100)  NOT NULL ,
	password             varchar(10)  NOT NULL ,
	CONSTRAINT XPKusuarios PRIMARY KEY (idusuario ASC),
	CONSTRAINT FK_USUARIO_ROL FOREIGN KEY (idrol) REFERENCES rol(idrol)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go


