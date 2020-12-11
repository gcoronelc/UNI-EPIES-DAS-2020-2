
use educa;
go

select * from curso;
select * from matricula;
go


-- Ejercicio 33
/*
Desarrolle una sentencia SELECT para obtener un listado que incluya 
el nombre del curso con sus respectivos nombres de alumnos. 
Base de datos EDUCA
*/

USE EDUCA;
GO

SELECT C.cur_nombre, A.alu_nombre 
FROM DBO.CURSO C
JOIN DBO.MATRICULA M ON ( C.cur_id = M.cur_id )
JOIN DBO.ALUMNO A ON ( M.alu_id = A.alu_id )
ORDER BY 1, 2
GO


-- Ejercicio 34
/*
Desarrolle una sentencia SELECT que muestre el nombre del alumno y la suma de todos sus pagos. 
Base de datos EDUCA.
*/

-- Julio Jesus
SELECT A.alu_nombre, IMPORTE = SUM(P.pag_importe )
FROM [dbo].[ALUMNO] A
JOIN [dbo].[PAGO] P ON (A.alu_id=P.alu_id)
GROUP BY A.alu_nombre
GO


-- Ejercicio 35
/*
Desarrolle una sentencia SELECT que muestre el nombre del curso y el importe de todos sus pagos. 
Base de datos EDUCA.
*/

-- Angie

select C.CUR_NOMBRE, SUM(p.PAG_IMPORTE) AS 'PAGO TOTAL DEL CURSO'
from dbo.curso c
join dbo.PAGO P on( c.cur_id= P.cur_id)
GROUP BY C.CUR_NOMBRE;
go

select sum(pag_importe) from dbo.PAGO;
go



-- Ejercicio 36
/*
Desarrolle una sentencia SELECT que muestre el nombre del departamento 
y el importe de su planilla. 
Base de datos RH.
*/

-- Angie

USE RH;
go

select D.NOMBRE,SUM(SUELDO) AS 'IMPORTE DE PLANILLA'
from dbo.DEPARTAMENTO D
join dbo.EMPLEADO E on( D.IDDEPARTAMENTO= E.iddepartamento)
GROUP BY D.NOMBRE;
go


-- Ejercicio 37
/*
Desarrolle una sentencia SELECT para encontrar la cantidad de trabajadores en cada ciudad. 
Base de datos RH.
*/

USE RH;
GO

-- Renzo
SELECT U.[ciudad], COUNT(E.[idempleado]) 
FROM [dbo].[empleado] E 
JOIN [dbo].[departamento] D ON (E.[iddepartamento]=D.[iddepartamento])
JOIN [dbo].[ubicacion] U ON (D.[idubicacion]=U.[idubicacion])
GROUP BY U.[ciudad];
go







