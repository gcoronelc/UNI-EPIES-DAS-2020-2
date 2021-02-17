
-- =============================================
-- Creación de la Base de Datos
-- =============================================

USE master;
go

IF( EXISTS ( SELECT name FROM master.sys.databases WHERE name = 'TAASGROUP' ) )
BEGIN
	DROP DATABASE TAASGROUP;
END;
go

CREATE DATABASE TAASGROUP;
go

-- =============================================
-- Creación de tablas
-- =============================================

USE TAASGROUP;
GO