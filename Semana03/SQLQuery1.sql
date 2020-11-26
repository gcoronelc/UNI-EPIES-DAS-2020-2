
-- Campos calculados
/*
- Son solumnas que no estan en la BD, solo en la consulta.
- Su valor se calcula en el momento de ejecutar la consulta.
*/


-- Ejercicio 3
/*
Desarrollar una sentencia SELECT que permita obtener el importe que 
se obtendría si se logra vender todas las vacantes por cada curso. 
Base de datos EDUCA.
*/

select c.*, cur_vacantes * cur_precio [importe esperado]
from educa.dbo.CURSO c;
go

-- Ejercicio 4
/*
Desarrollar una sentencia SELECT que permita obtener el importe de lo 
recaudado hasta el momento de los cursos vendidos. 
Base de datos EDUCA.
*/

-- Thalía Cano

select c.*, cur_matriculados*cur_precio[importe recaudado]
from EDUCA.dbo.CURSO c;
go

-- Profesor

select sum(pag_importe) [recaudado] from EDUCA.dbo.PAGO;
go


-- Ejercicio 5
/*
Desarrollar una sentencia SELECT que permita consultar el importe de lo 
que se tiene comprometido (cobrado y no cobrado) por los cursos vendidos 
hasta el momento. 
Base de datos EDUCA.
*/

-- Aspajo

select cur_vacantes*cur_precio [Comprometido],cur_matriculados*cur_precio [Vendido]
from educa.dbo.curso;
go

-- Profesor

select sum(mat_precio) [importe comprometido] from EDUCA.dbo.MATRICULA;
go



-- Operadores aritméticos y de concatenación

-- Ejercicio 6
/*
Desarrollar una sentencia SELECT para consultar el nombre y apellido de un 
empleado en una sola columna. 
Base de datos RH.
*/

select * from RH.dbo.empleado;
go

select apellido + ', ' + nombre [NOMBRE COMPLETO]
from RH.dbo.empleado;
go


select concat(apellido,', ',nombre) [NOMBRE COMPLETO]
from RH.dbo.empleado;
go


-- Ejercicio 7
/*
Desarrollar una sentencia SELECT para consultar el ingreso total de cada empleado. 
Base de datos RH.
*/

/*
NOTA
----
Toda operación con un valor NULL es otro valor NULL. 
*/

select 70 + null [RESULTADO];
go

select e.*, sueldo + comision [INGRESO TOTAL]
from RH.dbo.empleado e;
go

-- ISNULL(<valor a evaluar>,<valor de remplazo>)

select ISNULL(10,20) [RESULTADO 1], ISNULL(NULL,20) [RESULTADO 2];
go

select e.*, sueldo + ISNULL(comision,0) [INGRESO TOTAL]
from RH.dbo.empleado e;
go


select e.*, sueldo + comision [INGRESO TOTAL]
from RH.dbo.empleado e
where comision is not null
UNION
select e.*, sueldo [INGRESO TOTAL]
from RH.dbo.empleado e
where comision is null;
go


-- Filtro de filas

-- Ejercicio 8
/*
Desarrollar una sentencia SELECT para consultar los empleados del departamento de contabilidad.
Base de datos RH.
*/

-- BENEDICT JIMENA ALVAREZ CANO
-- Problema 8

SELECT * FROM RH.dbo.departamento 
WHERE nombre='contabilidad' 
GO

-- 101

select * from RH.dbo.empleado
where iddepartamento = 101;
go

-- Ejercicio 9
/*
Desarrollar una sentencia SELECT para consultar los empleados que se desempeñan como gerentes. 
Base de datos RH.
*/

-- Jose Luis Junior Miranda Bellido
-- Problema 9

select * from RH.dbo.cargo;
go

-- C01 y C02

select e.* from RH.dbo.empleado e
where idcargo = 'C01' or idcargo = 'C02';
go

select e.* from RH.dbo.empleado e
where idcargo IN ('C01','C02');
go


select e.* from RH.dbo.empleado e
where idcargo IN (select idcargo from RH.dbo.cargo where nombre like '%gerente%');
go


select e.*, v1.nombre [cargo]
from RH.dbo.empleado e
join (select idcargo, nombre from RH.dbo.cargo where nombre like '%gerente%') v1 
on e.idcargo = e.idcargo;
go


with 
v1 as (select idcargo, nombre from RH.dbo.cargo where nombre like '%gerente%')
select e.*, v1.nombre [cargo]
from RH.dbo.empleado e
join v1 on e.idcargo = e.idcargo;
go


-- Operadores relacionales
-- Ejercicio 10. 
/*
Desarrollar una sentencia SELECT para consultar los empleados de contabilidad cuyo sueldo e mayor a 10,000.00. 
Base de datos RH.
*/
-- ALYTZA THALÍA CANO RODRIGUEZ
-- P.10

select * from RH.dbo.empleado
where iddepartamento = 101 and sueldo > 10000
go

-- Jose Luis Junior Miranda Bellido15:26
-- solucion 10

select e.* from RH.dbo.empleado e
where idcargo IN (select idcargo from RH.dbo.cargo where sueldo_min>10000);
go

-- Ejercicio 11. 
/*
Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen profesor. 
Base de datos EDUCA.
*/

-- Jose Luis Junior Miranda Bellido
-- solucion 11

select  c.*  from EDUCA.dbo.curso c
where cur_profesor is null;
go

-- ADRIAN MAXIMO HUACCHO ZAPATA15
-- Problema 11

Select * from educa.dbo.Curso 
where cur_profesor is NULL;
go

-- WILMER ASPAJO QUINONES15
-- Problema 11

select * from educa.dbo.curso 
where cur_profesor IS NULL or cur_profesor = '';
go


-- LEFT

SELECT LEFT('PERU', 2) [RESULTADO];
GO

-- BETWEEN

select * from rh.dbo.empleado
where LEFT(apellido,1) between 'C' and 'M'
order by apellido;
go

select * from rh.dbo.empleado
where apellido LIKE '[C-M]%' 
order by apellido;
go


-- Operadores LIKE, BETWEEN, IN
-- Ejercicio 14. 
/*
Desarrollar una sentencia SELECT que permita consultar los empleados 
que su apellido tiene en la segunda posición la letra "A" ó "O". 
Base de datos RH.
*/

-- BENEDICT JIMENA ALVAREZ CANO

SELECT * FROM RH.[dbo].[empleado] 
WHERE [apellido] LIKE '_[AO]%' 
GO


-- Ejercicio 15. 
/*
Desarrollar una sentencia SELECT que permita averiguar que empleados 
tienen un sueldo mayor de 3,000.0 y menor de 10,000.0. 
Base de datos RH.
*/

-- Julio Jesus Saavedra Mendoza
SELECT * FROM RH.DBO.EMPLEADO
WHERE sueldo > 3000 AND sueldo < 10000

-- ANGEL RONALD HUAYLLA ARIAS15:43
-- Problema 15
Select * from RH.dbo.empleado
where sueldo > 3000 and sueldo < 10000
go

-- Jose Luis Junior Miranda Bellido
-- sol 15
-- Revisarlo
SELECT e.* from RH.DBO.empleado e
where idcargo in (select idcargo from RH.DBO.cargo where  sueldo_min>3000 and sueldo_max<10000);
go

