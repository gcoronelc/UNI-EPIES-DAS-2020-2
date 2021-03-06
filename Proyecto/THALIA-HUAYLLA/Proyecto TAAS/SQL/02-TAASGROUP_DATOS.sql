
USE TAASGROUP;
GO

-- CATEGORIAS

INSERT INTO CATEGORIA(IDCATEGORIA,NOMBRE) VALUES(1,'LINEA BLANCA');
INSERT INTO CATEGORIA(IDCATEGORIA,NOMBRE) VALUES(2,'MENAJE');
INSERT INTO CATEGORIA(IDCATEGORIA,NOMBRE) VALUES(3,'MUEBLES');
INSERT INTO CATEGORIA(IDCATEGORIA,NOMBRE) VALUES(4,'ROPA MUJER');
INSERT INTO CATEGORIA(IDCATEGORIA,NOMBRE) VALUES(5,'ROPA HOMBRE');
GO

-- PRODUCTOS


SET IDENTITY_INSERT PRODUCTO ON
go

INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(1,4,'Blusa UNIVERSITY',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(2,4,'Pantal�n Jean JHONSON',35,45);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(3,2,'Set de platos decorativos EL PLATITO',50,120);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(4,4,'Bolso Louis Vutton',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(5,4,'Polo HYPNOPTIC',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(6,4,'Casaca AEREAL',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(7,4,'Lentes SKULLCANDY',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(8,4,'Mochila Converse ALL-STARS',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(9,4,'Polo J1NX',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(10,4,'Pantalon VOLCOM',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(11,4,'Zapatillas ADIDAS',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(12,4,'Calcetines UMBRO',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(13,4,'Pulsera KT',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(14,4,'Reloj MFB',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(15,4,'Boxers EL',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(16,4,'Short BILLABONG',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(17,4,'Sandalias TORN',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(18,4,'Collar DMC',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(19,4,'Blusa KDA',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(20,4,'Tacones MOON',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(21,4,'Cartera LV',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(22,4,'Vestido CAVALIERE',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(23,4,'Guantes STR',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(24,4,'Gorra UNDER ARMOUR',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(25,4,'Bividi ROCK',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(26,4,'Chalina RCT',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(27,4,'Cafarena NF',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(28,4,'Bermuda RRC',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(29,4,'Chaleco CJ',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(30,4,'Polera GA',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(31,4,'Abrigo Umbro',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(32,4,'Polo Idakoos',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(33,4,'Casaca AEREAL',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(34,4,'Lentes SKULLCANDY',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(35,4,'Bata',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(36,4,'Jeans Lois',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(37,4,'Pantalon VOLCOM',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(38,4,'Chompa',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(39,4,'Skirt',25,50);
INSERT INTO PRODUCTO(IDPRODUCTO,IDCATEGORIA,NOMBRE,PRECOSTO,PREVENTA) VALUES(40,4,'bufanda',25,50);

SET IDENTITY_INSERT PRODUCTO OFF
go


-- TIPO DE DOCUMENTO

INSERT INTO TIPODOC(IDTIPODOC,NOMBRE) VALUES(1,'RUC');
INSERT INTO TIPODOC(IDTIPODOC,NOMBRE) VALUES(2,'DNI');
GO


-- CLIENTE

SET IDENTITY_INSERT CLIENTE ON
go

INSERT INTO CLIENTE(IDCLIENTE,NOMBRE,IDTIPODOC,NRODOC,DIRRECCION) VALUES(1,'AGR�COLA LA CHACRA S.R.L.',1,20396033731,'Av. Las Palmeras 333 - San Isidro');
INSERT INTO CLIENTE(IDCLIENTE,NOMBRE,IDTIPODOC,NRODOC,DIRRECCION) VALUES(2,'Delfus Delfin',2,87354974,'Jr. Ucayali 222 - Lima');
GO

SET IDENTITY_INSERT CLIENTE OFF
go



-- ROLES


INSERT INTO ROL(IDROL,NOMBRE) VALUES(1,'Vendedor');
INSERT INTO ROL(IDROL,NOMBRE) VALUES(2,'Administrador');
GO



-- EMPLEADO

SET IDENTITY_INSERT EMPLEADO ON
go

INSERT INTO EMPLEADO(IDEMPLEADO,NOMBRE,APELLIDO,IDROL,DIRECCION,CORREO) VALUES(1,'Elfa','Ramirez',1,'Av. Villaran 657 - Surquillo','elfaramirez@taas.pe');
INSERT INTO EMPLEADO(IDEMPLEADO,NOMBRE,APELLIDO,IDROL,DIRECCION,CORREO) VALUES(2,'Angel','Bubu',2,'Av. Tupac Amaru 100 - SMP','angelbubu@taas.pe');
GO

SET IDENTITY_INSERT EMPLEADO OFF
go



-- USUARIOS

INSERT INTO USUARIO(IDEMPLEADO,USUARIO,CLAVE,ESTADO) VALUES(1,'eramirez','12345',1);
INSERT INTO USUARIO(IDEMPLEADO,USUARIO,CLAVE,ESTADO) VALUES(2,'abubu','12345',2);
GO


-- Tipos de venta

INSERT INTO TIPOVENTA(IDTIPOVENTA,NOMBRE) VALUES(1,'En Tienda');
INSERT INTO TIPOVENTA(IDTIPOVENTA,NOMBRE) VALUES(2,'Delivery');
go


-- ESTADOS DE LA VENTA

INSERT INTO ESTADO(IDESTADO,DESCRIPCION) VALUES(1,'En proceso');
INSERT INTO ESTADO(IDESTADO,DESCRIPCION) VALUES(2,'Finalizado');
INSERT INTO ESTADO(IDESTADO,DESCRIPCION) VALUES(3,'Cancelado');
go


-- TIPOS DE COMPROBANTES

INSERT INTO TIPOCOMP(IDTIPOCOMP,NOMBRE,PREFIJO,CONTADOR) VALUES(1,'Factura','FAC-',1);
INSERT INTO TIPOCOMP(IDTIPOCOMP,NOMBRE,PREFIJO,CONTADOR) VALUES(2,'Boleta','BOL-',2);
go 


-- PEDIDOS

SET IDENTITY_INSERT PEDIDO ON
go

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(1,29/01/2020,1,1,1,2,2,'BOL-0001',50,10,60);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(2,29/01/2020,1,1,1,2,2,'BOL-0002',100,10,110);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(3,29/01/2020,1,1,1,2,2,'BOL-0003',150,10,160);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL)  
VALUES(4,29/01/2020,1,1,1,2,2,'BOL-0004',200,10,210);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL)  
VALUES(5,29/01/2020,1,1,1,2,2,'BOL-0005',250,10,260);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(6,29/01/2020,2,1,2,1,1,'FAC-0001',300,10,310);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(7,29/01/2020,2,1,2,2,1,'FAC-0002',350,10,360);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(8,29/01/2020,2,1,2,3,1,'FAC-0003',400,10,410);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(9,29/01/2020,2,1,2,1,1,'FAC-0004',450,10,460);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(10,29/01/2020,2,1,2,2,1,'FAC-0005',500,10,510);

INSERT INTO PEDIDO(IDPEDIDO,FECHA,IDCLIENTE,IDEMPLEADO,IDTIPOVENTA,IDESTADO,IDTIPOCOMP,NROCOMP,IMPORTE,IMPUESTO,TOTAL) 
VALUES(11,29/01/2020,2,1,2,2,1,'FAC-0006',600,10,610);
go

SET IDENTITY_INSERT PEDIDO OFF
go

-- DETALLES DE PEDIDO

SET IDENTITY_INSERT DETALLE ON
go

INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PREVENTA,SUBTOTAL) VALUES(1,1,1,2,50,0);
INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PREVENTA,SUBTOTAL) VALUES(2,1,2,5,90,0);
INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PREVENTA,SUBTOTAL) VALUES(3,1,3,8,70,0);

INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PREVENTA,SUBTOTAL) VALUES(4,2,1,7,120,0);
INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PREVENTA,SUBTOTAL) VALUES(5,2,2,3,230,0);
INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PREVENTA,SUBTOTAL) VALUES(6,2,3,5,167,0);

/*
INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PRECIOVENTA,SUBTOTAL) VALUES(2,2,1,1,45,45);
INSERT INTO DETALLE(IDDETALLE,IDPEDIDO,IDPRODUCTO,CANTIDAD,PRECIOVENTA,SUBTOTAL) VALUES(3,11,1,15,120,1800);
*/
go

SET IDENTITY_INSERT DETALLE Off
GO


-- ACTUALIZAR DATOS


UPDATE DETALLE 
SET PREVENTA = P.PREVENTA
FROM DETALLE D
JOIN PRODUCTO P ON D.IDPRODUCTO = P.IDPRODUCTO;
GO


UPDATE DETALLE SET SUBTOTAL = CANTIDAD * PREVENTA;
GO

UPDATE PEDIDO 
SET TOTAL = T.TOTAL
FROM PEDIDO P
JOIN (
	SELECT IDPEDIDO, SUM(SUBTOTAL) TOTAL
	FROM DETALLE 
	GROUP BY IDPEDIDO ) T ON P.IDPEDIDO = T.IDPEDIDO
GO

UPDATE PEDIDO SET IMPORTE = TOTAL / 1.18;
GO

UPDATE PEDIDO SET IMPUESTO = TOTAL - IMPORTE;
GO

UPDATE TIPOCOMP 
SET CONTADOR = (
	SELECT COUNT(1)	
	FROM PEDIDO A 
	WHERE TIPOCOMP.IDTIPOCOMP = A.IDTIPOCOMP );
GO

