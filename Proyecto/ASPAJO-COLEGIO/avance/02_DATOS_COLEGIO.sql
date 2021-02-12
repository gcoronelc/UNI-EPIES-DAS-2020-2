use COLEGIO
go




--Tabla rol

insert into rol values (1,'Docente');
insert into rol values (2,'Administrador');
GO


--Tabla NIVEL

insert into nivel (idnivel,nombre)
values (100,'inicial'),
       (200,'primaria'),
	   (300,'secundaria')
GO

--Tabla USUARIO

insert into usuario(idusuario,idrol,usuario,password)
values (100,1,'valenciapedro','73102182'),
       (101,1,'coroneleric','1234'),
	   (102,1,'diazpedro','@@@@'),
	   (103,1,'bustamantecesar','987'),
	   (104,1,'henostrozaguino','456'),
	   (105,1,'floresjulio','3485'),
	   (106,1,'bardonjulio','4895'),
	   (107,1,'allaucajuan','8111'),
	   (108,1,'sernajose','3653'),
	   (109,1,'chuco','5964'),
	   (110,1,'alegrejose','5698'),
	   (200,1,'romerocarlos','1983'),
	   (201,1,'arandaalan','5611');
GO


--Tabla GRADO

insert into grado(idgrado,idnivel,nombre,abreviatura)
values (103,100,'Inicial de 3 años','I3A'),
       (104,100,'Inicial de 4 años','I4A'),
	   (105,100,'Inicial de 5 años','I5A'),
	   (201,200,'Primer grado de Ed. primaria','P1G'),
	   (202,200,'Segundo grado de Ed. primaria','P2G'),
	   (203,200,'Tercer grado de Ed. primaria','P3G'),
	   (204,200,'Cuarto grado de Ed. primaria','P4G'),
	   (205,200,'Quinto grado de Ed. primaria','P5G'),
	   (206,200,'Sexto grado de Ed. primaria','P6G'),
	   (301,300,'Primer grado de Ed. secundaria','S1G'),
	   (302,300,'Segundo grado de Ed. secundaria','S2G'),
	   (303,300,'Tercer grado de Ed. secundaria','S3G'),
	   (304,300,'Cuarto grado de Ed. secundaria','S4G'),
	   (305,300,'Quinto grado de Ed. secundaria','S5G');
GO



--Tabla PARENTESCO
insert into parentesco(idparentesco,nombre)
values (10,'Padre'),
       (20,'Abuelo'),
	   (30,'Tio'),
	   (40,'Bisabuelo'),
	   (50,'Tio abuelo')
go



--Tabla PERSONA
insert into [dbo].[persona](idpersona,nombre,paterno,materno,dni,telefono,celular,direccion,correo)
values (1,'ERIC GUSTAVO','CORONEL','CASTILLO','06914897','9666-4457','956874253','JR.CABANA 258-LOS OLIVOS','gcoronel@viabcp.com'),
       (2,'PEDRO HUGO','VALENCIA ','MORALES','01576173','924-7834','968325678','JR.BRASIL 157- MAGDALENA','pvalencia@terra.com.pe'),
	   (3,'RICARDO','MARCELO','VILLALOBOS','10762367','993-62966','978369824','CALLE 19-LINCE','ricardomarcelo@hotmail.com'),
	   (4,'CARLOS ALBERTO','ROMERO','CASTILLO','06531983','865-84762','940514238','AV.UNIVERSITARIA 721-LOS OLIVOS','c.romero@hotmail.com'),
	   (5,'ALAN ALBERTO','ARANDA','LUNA','10875611','834-67125','978223626','AV. ARMANDO BLONDERT 35 -SAN ISIDRO','a.aranda@hotmail.com'),
	   (6,'JORGE LUIS','AYALA','PAZ','10679245','963-34769','952145235','Obere Str.57 -SAN BORJA','j.ayala@yahoo.com'),
	   (7,'EDGAR RAFAEL','CHAVEZ','CANALES','10145693','999-96673','940333578','ABEL ZELA 68- MIRAFLORES','e.chavez@gmail.com'),
	   (8,'ROSA LIZET','FLORES','CHAFLOQUE','10773456','966-87567','943044333','AV.SANTA ROSA 84- LOS OLIVOS','r.florez@hotmail.com'),
	   (9,'CRISTIAN RAFAEL','FLORES','CASTILLO','10346723','978-43768','987123565','AV. ALFREDO MENDIOLA 64 - LOS OLIVOS','c.flores@hotmail.com'),
	   (10,'GABRIEL ALEJANDRO','GONZALES','GARCIA','10192376','945-56782','932556562','ABEL ZELA 58 - SAN MIGUEL','g.gonzales@yahoo.es'),
	   (11,'JUAN CARLOS','LAY','VALLEJOS','10942287','956-12657','901546258','JR. EMILIO DE LOS RIOS 13- LINCE' ,'j.lay@peru.com'),
	   (12,'DEYSI LIDIA','MONTALVO','SOTO','10612376','965-67235','904655232','JR. MANUEL DE LARA-LOS OLIVOS','d.montalvo@hotmail.com'),
	   (13,'ROSARIO ESMERALDA','RAMIREZ','RICALDE','10761324','991-23546','987356842','AV.CENTRAL 125 - LOS OLIVOS','r.ricalde@gmail.com'),
	   (14,'ENRIQUE MANUEL','RODRIGUEZ','FLORES','10773345','976-82838','974368236','SAN RODOLFO 34 -LINCE','e.rodriguez@gmail.com'),
	   (15,'FELIX NINO','ROJAS','OSCANOA','10238943','962-32158','992545255','SAN ANDRES 695- LIMA','f.rojas@yahoo.com'),
	   (16,'TANIA LORENA','TEJADA','DEL AGUILA','10446791','966-23854','924586253','AV.ROSA DE AMERICA 62','t.tejada@hotmail.com'),
	   (17,'LIDIA ROXANA','VALDEVIESO','LEYVA','10452682','956-78951','932566298','CALLE 25 -SURCO','r.valdivieso@terra.com.pe'),
	   (18,'JUAN DIEGO','VALENTIN','COTRINA','10398247','921-12456','932562999','JR. SAN LINO 17 - LA MOLINA','j.valentin@terra.com.pe'),
	   (19,'YESABETH','YAURICASA','BAUTISTA','10934584','977-75777','999325236','AV.SAN BERNARDO 54 - MAGDALENA','y.yauricasa@terra.com.pe'),
	   (20,'FERNANDO MOISES','ZEGARRA','GARCIA','10772365','936-45876','987423564','JR. ANGULO 12- SAN ISIDRO','f.zegarra@hotmail.com'),
	   (21,'ROSA','LOPES','DIAZ','10882365','936-88876','982323564','JR CANTA 245 -LA VICTORIA','Rosa@hotmail.com'),                     --
	   (22,'LUIS','GARCIA','JIMENEZ','10584682','956-78978','937766298','AV, UNIVERSITARIA 70 - LOS OLIVOS','lucho@terra.com.pe'),
	   (23,' DIEGO','FLORES','CARBAJAL','10392227','907-12456','932562911','CALLE 14 - CHORILLOS','diego.rr@terra.com.pe'),
	   (24,'FRANCISCO','GARCIA','BAUTISTA','10934444','907-75657','924325236','AV,AVIACION 450 - SAN BORJA','francisco@terra.com.pe'),
	   (25,'MAICOL','GALLARDO','MEZA','10953365','936-74276','987952564','JR LAS LOMAS 232-COMAS','maicol@hotmail.com'),
	   (26,'HEBER','AGUILAR','DIAZ','10567465','936-07376','982394733','JR CANTA 245 -CALLE 15-LOS OLIVOS','heber@hotmail.com'),
	   (27,'ROBERTO','VARGAS','CHUMBE','10095465','936-22276','982323073','CALLE 15-LOS OLIVOS','rober@hotmail.com'),
	   (28,'ROLANDO','HURTADO','MENDOZA','10852465','936-07376','982320749','AV,UNIVERSITARIA 730-LOS OLIVOS','roland@hotmail.com'),
	   (29,'JAMES','CORTIJO','PEÑA','10853965','936-42876','982323542','AV TUPAC AMARU 403-COMAS','james@hotmail.com'),
	   (30,'WILMER','LOPEZ','RAMIREZ','10134565','936-44215','982343251','AV, UNIVERSITARIA 50 - LOS OLIVOS','wilmer@hotmail.com');
go




--Tabla ALUMNO

insert into alumno(idalumno,nombre,paterno,materno,dni,sexo,fecnac,celular,direccion,estado,correo)
values (1,'NIJSON','MARCELO','MORALES','73105846','M','02/05/2017',' ','CALLE 19- LINCE',1,''),
       (2,'AVRILLE','ROMERO','LOAYZA','60216588','F','03/07/2017','','AV, UNIVERSITARIA 721 - LOS OLIVOS',1,''),
	   (3,'DANIEL','ARANDA','MARCO','84532266','M','21/07/2017','','AV.ARMANDO BLONDERT 35 - SAN ISIDRO',1,' '),
	   (4,'CIELO','AYALA','OLIVITOS','84225655','F','15/08/2017','','OBERE STR.57- SAN BORJA',1,''),
	   (5,'MARIANO','CHAVEZ','SUAREZ','32256211','M','28/05/2017','','ABEL ZELA 68 - MIRAFLORES',1,''),
	   (6,'NEYMAR','FLORES','MALMA','92356263','M','12/11/2017','','AV. SANTA ROSA 84 - LOS OLIVOS',1,''),
	   (7,'MIKAELA','FLORES','LAYA','10003456','F','10/10/2017','','AV. ALFREDO MENDIOLA 64 - LOS OLIVOS',1,''),
	   (8,'GIAN','GONZALES','SANCHEZ','78624523','M','07/05/2017','','ABEL ZELA 58 - SAN MIGUEL',1,''),
	   (9,'MARIA','GONZALES','SANCHEZ','78136952','F','05/01/2016','','ABEL ZELA 58 - SAN MIGUEL',1,''),
	   (10,'BRUNO','LAY','RUIZ','73156056','M','08/02/2016','','JR.EMILIO DE LOS RIOS 13 - LINCE',1,''),
	   (11,'ERICK','MONTALVO','PRADO','97853130','M','09/01/2016','','JR. MANUEL DE LARA -LOS OLIVOS',1,''),
	   (12,'GABRIEL','RAMIREZ','QUISPE','93202100','M','17/03/2016','','AV. CENTRAL 125- LOS OLIVOS',1,''),
	   (13,'THAIS','RODRIGUEZ','ALEGRIA','74520133','F','28/06/2016','','SAN RODOLFO 34 - LINCE',1,''),
	   (14,'ALONSO','ROJAS','GARCIA','65412354','M','13/08/2016','','SAN ANDRES 695 - LIMA',1,''),
	   (15,'FABRIZIO','TEJADA','BARRIGA','01505828','M','05/06/2016','','AV. ROSA DE AMERICA 62',1,''),
	   (16,'DWAYNE','VALDEVIESO','MONTENEGRO','73011282','M','04/07/2016','','CALLE 25 - SURCO',1,''),
	   (17,'ANGIE','VALENTIN','VALENZUELA','30253016','F','17/10/2015','','JR. SAN LINO 17 - LA MOLINA',1,''),
	   (18,'SERGIO','YAURICASA','TORRES','10218282','M','07/11/2015','','AV. SAN BERNARDO 54 - MAGDALENA',1,''),
	   (19,'FABRICIO','ZEGARRA','VELIZ','87566298','M','11/09/2015','','J ANGULO 12- SAN ISIDRO',1,''),
	   (20,'JUAN','PACHECO','LOPEZ','70084506','M','02/08/2013',' ','JR CANTA 245 -LA VICTORIA',1,''),
       (21,'ABRIL','GARCIA','LOAYZA','60278588','F','03/07/2013','','AV, UNIVERSITARIA 70 - LOS OLIVOS',1,''),
	   (22,'CARLA','FLORES','JIMENEZ','70084305','F','06/08/2013','','CALLE 14 - CHORILLOS',1,' '),
	   (23,'JIMENA','GARCIA','GOMEZ','70014304','F','15/09/2013','','AV,AVIACION 450 - SAN BORJA',1,''),
	   (24,'ANDREA','GALLADO','CHUMBE','73105444','F','02/09/2013',' ','JR LAS LOMAS 232-COMAS',1,''),
       (25,'HECTOR','AGUILAR','TORRES','80216522','M','12/06/2013','','CALLE 15-LOS OLIVOS',1,''),
	   (26,'JESUS','VARGAS','LLANTERHUAY','84536566','M','23/09/2014','','JR LOSOLIVOS 234-COMAS',1,' '),
	   (27,'LISETH','HURTADO','SESINARDO','75284255','F','02/05/2014','','AV,UNIVERSITARIA 730-LOS OLIVOS',1,''),
	   (28,'YAMELI','CORTIJO','PEREIRA','89084506','F','02/08/2014',' ','AV TUPAC AMARU 403-COMAS',1,''),
       (29,'SUJEY','LOPEZ','LLANOS','60278588','F','23/07/2014','','AV, UNIVERSITARIA 50 - LOS OLIVOS',1,'')
GO





--Tabla PROFESOR 

insert into profesor(idprofesor,paterno,materno,nombre,direccion,dni,correo,sexo,celular,estado)
Values (1,'Valencia','Morales','Pedro Hugo','Magdalena','73102182','hugovm@terra.com.pe','M','943044335',1),
      (2,'Coronel','Castro','Eric Gustavo','Los Olivos','16355649','gcoronel@uni.edu.pe','M','978236588',1),
      (3,'Diaz','Vilela','Pedro Pablo','Rimac','45236598','pdiaz@edutec.pe','M','982253258',1),
      (4,'Matsukawa','Maeda','Sergio','Bella Vista','89547138','smatsukawa@isil.edu.pe','M','943015588',0),
      (5,'Bustamante','Gutierrez','Cesar Augusto','Lince','41578966','cbustamente@ipeci.pe','M','985336888',1),
      (6,'Henostroza','Macedo','Guino','Los Olivos','23684755','guinoh@hotmail.com','M','922546336',1),
      (7,'Flores','Manco','Julio Enrrique','Los Olivos','74563485','jflores@edutec.pe','M','936582311',1),
      (8,'Bardon','Mayta','Julio Cesar','SMP','68524895','jbardon@edutec.pe','M','924587111',1),
      (9,'Allauca','Paucar','Juan Jose','Los Olivos','32566544','jallauca@edutec.pe','M','987468111',1),
      (10,'Serna','Jherry','Jose Luis','SMP','78233653','jserna@edutec.pe','M','964852114',1),
      (11,'Chuco','Barrera','Raul','Rimac','74325964','rchuco@edutec.pe','M','962123456',1),
      (12,'Alegre','Mendoza','Jose','SMP','95235698','jalegre@edutec.pe','M','997365129',1),
      (13,'Quispe ','Tineo','Cesar','SMP','12355399','cquispe@edutec.pe','M','966324522',1),
      (14,'Ramirez','Salvador','Julio','SMP','24696822','jramirez@edutec.pe','M','930215222',1),
      (15,'Chuquin','Espinoza','Willian','Lince','31145827','wchuquin@edutec.pe','M','962214464',1),
      (16,'Rosas ','Ayala','Dario','Rimac','30122654','drosas@edutec.pe','M','900221653',1),
      (17,'Rodriguez','Villacorta','Manuel','Lima','91024354','mrodriguez@edutec.pe','M','967103554',1),
      (18,'Zegarra','Zavaleta','Tereza','SMP','96201485','tzegarra@edutec.pe','F','930015658',1),
      (19,'Guzman','Azcurra','Manuel','Rimac','10365456','mguzman@edutec.pe','M','963514210',1),
      (20,'Zegarra ','Zavaleta','Daniel','SMP','23015000','dzagarra@edutec.pe','M','950365077',1),
      (21,'Cueva ','Contreras','Martin','Rimac','10035238','mcueva@edutec.pe','M','957400255',1),
      (22,'Lostaunau',' Navarro','Alberto','Lima','34106655','alostaunau@edutec.pe','M','907813556',0),
      (23,'Condor ','Ortiz','Saul','SMP','50156544','scondor@edutec.pe','M','947012345',1),
      (24,'Ganoza ','Zelada','David','Comas','80453100','dganoza@edutec.pe','M','930014527',1),
      (25,'Fabian ','Avila','Dionicio','Comas','63071045','dfabian@edutec.pe','M','936668415',1),
      (26,'Quintana',' Saenz','Jorge','Rimac','99015273','jquintana@edutec.pe','M','901782489',1),
      (27,'Yupanqui ','Villegas','Juan','SMP','91000251','juan.yupanqui@edutec.pe','M','951238444',1),
      (28,'Yupanqui',' Villegas','Julio','SMP','10035235','julio.yupanqui@edutec.pe','M','956235492',0),
      (29,'Alcantara ','Cerna','Violeta','SMP','22021355','valcantara@edutec.pe','F','950352154',1),
      (30,'Oceda',' Samaniego','Cesar Miguel','San Miguel','96221405','coceda@edutec.pe','M','931401400',1),
      (31,'Becerra ','Flores','Ursula','San Miguel','84556800','ubecerra@edutec.pe','F','930001452',1),
      (32,'Marcelo ','Villalobos','Marvin','Lince','01202584','mmarcelo@edutec.pe','M','955248054',1),
      (33,'Narvaez ','Garcia','Victor','Lima','70100056','vnarcaez@edutec.pe','M','997230688',1),
      (34,'Reynoso ','Zarate','Jose','Los Olivos','98221521','jreynoso@edutec.pe','M','945785550',1),
      (35,'Suarez ','Valenzuela','Misael','Lima','93014250','msuarez@edutec.pe','M','910111888',1),
      (36,'Carrasco',' Muñoz','Joel','Rimac','00351655','jcarrasco@edutec.pe','M','933345572',1),
      (37,'Salcedo ','Martinez','Percy','Lima','07123569','psalcedo@edutec.pe','M','980014568',1),
      (38,'Vasquez',' Valenzuela','Javier','Comas','60015626','jvasquez@edutec.pe','M','996248211',1),
      (39,'Herrera',' Huanca','Javier','Comas','93001534','jherrera@edutec.pe','M','965844444',1),
      (40,'Marcelo ','Villalobos','Ricardo','SMP','42300158','rmarcelo@edutec.pe','M','999123456',1),
      (41,'Quiroz',' Villon','Edgar','Rimac','98221422','equiroz@edutec.pe','M','922288840',1),
      (42,'Veliz','Fortumato','Maria','La Molina','73108924','fveliz@edutec.pe','F','956200145',1);
go




--Tabla CURSO

insert into curso(idcurso,nombre,estado)
values (1,'MATEMÁTICA',1),
       (2,'COMUNICACION',1),
	   (3,'ARTE',1),
	   (4,'INGLES',1),
	   (5,'CIENCIA NATURALES',1),
	   (6,'RELIGION',1),
	   (7,'COMPUTACION',1),
	   (8,'PERSONAL SOCIAL',1),
	   (9,'EDUCACION FISICA',1),
	   (10,'CIENCIA, TECNOLOGIA Y AMBIENTE',1);
GO

