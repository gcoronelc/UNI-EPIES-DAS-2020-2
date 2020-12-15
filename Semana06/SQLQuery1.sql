-- WITH
/*
Encontrar el empleado que tiene el menor salario por departamento.
Base de datos RH.

Formato:

CODIGO         NOMBRE            NOMBRE                SUELDO
Departamento   Departamento      Empleado              Empleado
----------------------------------------------------------------------
100	           Gerencia          Claudia Fernandez     8000.00
101	           Contabilidad      Lucy Cuellar          2000.00
102	           Investigacion
103	           Ventas
104	           Operaciones
105	           Sistemas
106	           Recursos Humanos
107	           Finanzas

*/

select * from departamento;
go

select * from empleado 
where iddepartamento = 108
order by sueldo asc;
go

with
v1 as (
	select iddepartamento, min(sueldo) sueldo_min 
	from dbo.empleado
	group by iddepartamento ),
v2 as (
	select e.iddepartamento, e.apellido, e.nombre, e.sueldo
	from dbo.empleado e
	join v1 on (e.iddepartamento = v1.iddepartamento) 
	and (e.sueldo = v1.sueldo_min) )
select 
	d.iddepartamento, d.nombre "Nombre Departamento",
	concat(v2.nombre,', ',v2.apellido) "Nombre Empleado", v2.sueldo
from dbo.departamento d 
join v2 on d.iddepartamento = v2.iddepartamento;
go


drop procedure dbo.usp_consulta1;
go

create procedure dbo.usp_consulta1
as
begin
	create table #resultado(
		id integer identity(1,1) primary key,
		depcod integer,
		depnom varchar(100),
		empnom varchar(200),
		empsue numeric(10,2)
	);
	declare @idmin integer, @idmax integer, @idactual int;
	declare @coddep integer;
	declare @sueldomin numeric(10,2), @nombre varchar(200);

	-- Paso 1: Valores iniciales
	insert into #resultado(depcod,depnom)
	select iddepartamento, nombre from dbo.departamento;

	-- Paso 2: Valores para el bucle
	select @idmax = max(id), @idmin = min(id) 
	from #resultado;

	-- Paso 3: El bucle
	set @idactual = @idmin;
	while( @idactual <= @idmax )
	begin
		-- Codigo del departamento
		select @coddep = depcod from #resultado where id = @idactual;
		-- El sueldo minimo
		select @sueldomin = min(sueldo) from dbo.empleado where iddepartamento = @coddep;
		-- Nombre del empleado
		select top 1 @nombre = concat(nombre,', ',apellido) 
		from dbo.empleado 
		where iddepartamento = @coddep and sueldo = @sueldomin;
		-- Actualizar resultado
		update #resultado
		set empsue = @sueldomin, empnom = @nombre
		where id = @idactual;
		-- Incrementar @idactual
		set @idactual = @idactual + 1
	end;

	-- Paso 4: Paso n: Consulta final
	select * from #resultado where empsue is not null;
end;
go

exec dbo.usp_consulta1;
go


-- CASE
/*
Ingreso por curso de los ultimo 5 años.
BD EDUTEC.

COD.CURSO NOM.CURSO    2016     2017    2018    2019    2020     total
--------------------------------------------------------------------------
C001      abc          1234	    4323    43456   2345    2345     999999
C002      xyz          2432     6789    23456   6553    2345     999999
...
...
--------------------------------------------------------------------------

*/


select 
	cp.idcurso, c.NomCurso, 
	sum(case left(idciclo,4) when '2016'then cp.Matriculados*cp.PreCursoProg else 0.0 end) "Año 2016",
	sum(case left(idciclo,4) when '2017'then cp.Matriculados*cp.PreCursoProg else 0.0 end) "Año 2017",
	sum(case left(idciclo,4) when '2018'then cp.Matriculados*cp.PreCursoProg else 0.0 end) "Año 2018",
	sum(case left(idciclo,4) when '2019'then cp.Matriculados*cp.PreCursoProg else 0.0 end) "Año 2019",
	sum(case left(idciclo,4) when '2020'then cp.Matriculados*cp.PreCursoProg else 0.0 end) "Año 2020",
	sum(cp.Matriculados*cp.PreCursoProg) [Total]
from edutec.dbo.CursoProgramado cp
join edutec.dbo.curso c on cp.IdCurso = c.idcurso
where left(idciclo,4) in ('2016','2017','2018','2019','2020')
group by cp.idcurso, c.NomCurso;
go

use edutec;
go

drop procedure dbo.usp_consulta2;
go

create procedure dbo.usp_consulta2
as
begin
	create table #resultado(
		id integer identity(1,1) primary key,
		idcurso char(4),
		nombre varchar(100),
		anio2016 numeric(10,2),
		anio2017 numeric(10,2),
		anio2018 numeric(10,2),
		anio2019 numeric(10,2),
		anio2020 numeric(10,2),
		total numeric(10,2),
	);
	declare @idmin integer, @idmax integer, @idactual int;
	declare @anio2016 numeric(10,2), @anio2017 numeric(10,2);
	declare @anio2018 numeric(10,2), @anio2019 numeric(10,2);
	declare @anio2020 numeric(10,2), @total numeric(10,2);
	declare @curso char(4);

	insert into #resultado(idcurso,nombre)
	select IdCurso, NomCurso from edutec.dbo.curso;

	select @idmax = max(id), @idmin = min(id) from #resultado;
	set @idactual = @idmin;
	while ( @idactual <= @idmax )
	begin
		-- Curso
		select @curso = idcurso from #resultado where id = @idactual;
		-- 2016
		select @anio2016 = sum(Matriculados*PreCursoProg) 
		from dbo.CursoProgramado where left(idciclo,4) = '2016' and IdCurso = @curso;
		-- 2017
		select @anio2017 = sum(Matriculados*PreCursoProg) 
		from dbo.CursoProgramado where left(idciclo,4) = '2017' and IdCurso = @curso;
		-- 2018
		select @anio2018 = sum(Matriculados*PreCursoProg) 
		from dbo.CursoProgramado where left(idciclo,4) = '2018' and IdCurso = @curso;
		-- 2019
		select @anio2019 = sum(Matriculados*PreCursoProg) 
		from dbo.CursoProgramado where left(idciclo,4) = '2019' and IdCurso = @curso;
		-- 2020
		select @anio2020 = sum(Matriculados*PreCursoProg) 
		from dbo.CursoProgramado where left(idciclo,4) = '2020' and IdCurso = @curso;
		-- total
		set @total = @anio2016 + @anio2017 + @anio2018 + @anio2019 + @anio2020;
		-- Actualizar tabla temporal
		update #resultado
		set anio2016 = @anio2016, anio2017 = @anio2017,
			anio2018 = @anio2018, anio2019 = @anio2019,
			anio2020 = @anio2020, total = @total
		where id = @idactual;
		-- Incrementar contador
		set @idactual = @idactual + 1;
	end;

	select * from #resultado;
end;
go


exec dbo.usp_consulta2;
go

