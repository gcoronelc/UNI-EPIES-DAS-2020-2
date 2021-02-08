

SELECT * FROM SERVICIO;
GO

SELECT * FROM DEMO01.DBO.ORGANIGRAMA2;
GO

INSERT INTO SERVICIO 
SELECT DISTINCT DEP_OFI_COD, DEP_OFI_DESC
FROM DEMO01.DBO.ORGANIGRAMA2;
GO

INSERT INTO SERVICIO 
SELECT  SERV_UNI_COD, SERV_UNI_DESC
FROM DEMO01.DBO.ORGANIGRAMA2;
GO

DROP VIEW V_DEPARTAMENTO;
GO

CREATE VIEW V_DEPARTAMENTO
AS
SELECT IDSERVICIO CODIGO, NOMBRE 
FROM SERVICIO
WHERE LEN(IDSERVICIO) = 2;
GO

SELECT * FROM V_DEPARTAMENTO;
GO


DROP VIEW V_SERVICIO;
GO

CREATE VIEW V_SERVICIO
AS
SELECT IDSERVICIO CODIGO, NOMBRE 
FROM SERVICIO
WHERE LEN(IDSERVICIO) = 4;
GO


SELECT * FROM V_SERVICIO;
GO


