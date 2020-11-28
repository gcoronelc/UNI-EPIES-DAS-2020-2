-- DATEPART

SELECT 
	DATEPART(MONTH, GETDATE()) MES1,
	DATEPART(M, GETDATE()) MES2,
	DATEPART(MM, GETDATE()) MES3,
	MONTH(GETDATE()) MES4;
GO


-- Ejercicio 19
/*
Desarrollar una sentencia SELECT para consultar los empleados que 
ingresaron a la empresa un mes de Enero. Base de datos RH.
*/

SELECT * 
FROM RH.DBO.empleado
WHERE MONTH(FECINGRESO) = 1;
GO


-- Ejercicio 20
/*
Desarrollar una sentencia SELECT para consultar las matriculas del último mes. 
Base de datos EDUCA.
*/

/*
¿ULTIMO MES?
------------------------------------------------------------------------------
- (Alisson) El último mes finalizado según la fecha actual. 
- (Adrian) El mes anterior al actual.
- (YESSICA, HECTOR) Es el mes actual.
- (JULIO JESUS) Es diciembre.
- (ASPAJO) El mes de la última matricula.
*/
/*
Conclusión:
------------------------------------------------------------------------------
(Cristopher) El requerimiento no esta debidamente especificado.
Aclarando: El último mes, es el mes actual.
*/

select * from educa.dbo.MATRICULA
where month(mat_fecha) = month(getdate())
and year(mat_fecha) = year(getdate());
go


/*
El cambio:
Considerar el mes de la última matricula.
*/

with
v1 as (select max(mat_fecha) ult_mat from educa.dbo.MATRICULA)
select x.*
from educa.dbo.MATRICULA x join v1 
on month(x.mat_fecha) = month(v1.ult_mat)
and year(x.mat_fecha) = year(v1.ult_mat);
go


-- Ejercicio 21
/*
Desarrolle una sentencia SELECT para calcular el importe de la planilla 
del departamento de ventas. Debe incluir el sueldo y la comisión.
Base de datos RH.
*/

select * from rh.dbo.departamento;
go

-- 103

select sum(sueldo + isnull(comision,0)) planilla
from rh.dbo.empleado
where iddepartamento = 103;
go

-- 39400.00


-- Ejercicio 22
-- Thalia
-- Prob. 22
/*
Desarrolle una sentencia SELECT para encontrar el mayor y menor 
sueldo en el departamento de ventas. Base de datos RH.
*/

Select max(sueldo)[sueldo máximo] , min(sueldo)[sueldo mínimo]
from RH.dbo.empleado
where iddepartamento = 103;
go

-- Ejercicio 23
/*
Desarrolle una sentencia SELECT para encontrar el salario promedio en la empresa. 
Base de datos RH.
*/
-- Adrian

Select avg(Sueldo) from RH.dbo.empleado
go

-- YESSICA CARINA MAYHUA CASSA16
select AVG(sueldo) [sueldo promedio] from rh.dbo.empleado;
go

select * from rh.dbo.empleado;
go

-- Ejercicio 24
/*
Desarrolle una sentencia SELECT para encontrar los departamentos que tienen 
por lo menos un trabajador. Base de datos RH.
*/



-- GROUP BY

select 
	iddepartamento, 
	count(1) empleados,
	sum(sueldo + isnull(comision,0)) planilla
from rh.dbo.empleado
group by iddepartamento;
go

select 
	iddepartamento, 
	sum(1) empleados,
	sum(sueldo + isnull(comision,0)) planilla
from rh.dbo.empleado
group by iddepartamento;
go


-- HAVING

select 
	iddepartamento, 
	sum(1) empleados,
	sum(sueldo + isnull(comision,0)) planilla
from rh.dbo.empleado
group by iddepartamento
having sum(1) > 5;
go


-- Ejercicio 25
/*
Desarrolle una sentencia SELECT para encontrar el salario promedio por departamento. 
Base de datos RH.
*/

-- RENZO FRANCISCO CCOCHACHE LLANOS 17:21

select [iddepartamento], avg([sueldo]) as[PROMEDIO DEL SALARIO] 
from RH.[dbo].[empleado]
group by [iddepartamento];
go


-- ALYTZA THALÍA CANO RODRIGUEZ 17:23
-- prob. 25

select iddepartamento, AVG(sueldo)[sueldo promedio]
from RH.dbo.empleado
group by iddepartamento;
go


-- Ejercicio 26
/*
Desarrolle una sentencia SELECT para encontrar la cantidad de trabajadores por departamento. 
Base de datos RH.
*/

-- YESSICA CARINA MAYHUA CASSA 17:30
-- prob 26

select iddepartamento, sum(1) empleados 
from RH.dbo.empleado
group by iddepartamento;
go



-- Ejercicio 27
/*
Desarrolle una sentencia SELECT para encontrar los departamentos que tienen más de 5 trabajadores. 
Base de datos RH.
*/

-- SERGIO GREGORIO QUISPE ALVAREZ17:31
-- prob 27
select 
	iddepartamento, 
	sum(1) empleados
from rh.dbo.empleado
group by iddepartamento
having sum(1) > 5;
go



