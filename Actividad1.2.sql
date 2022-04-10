

-- PUNTO 1:
/*
Relacion 1:1
Una tabla que registre informacion de los Alumnos, relacionandolo con una tabla que contenga su Promedio general y Observaciones sobre el alumno.

Relacion 1:N
Una tabla de Sedes que se relaciona con una tabla de Profesores, donde puede haber mas de un registro de la tabla de profesores por Sede, pero no mas de una sede por profesor.

Relacion N:N
La tabla de informacion de los Alumnos se relaciona con la tabla de Materias, donde un alumno puede cursar mas de una materia y una materia puede ser relacionada con varios registro de la tabla de alumnos.

*/

-- SCRIPT
CREATE DATABASE ACTIVIDAD_2
GO
USE ACTIVIDAD_2
GO
CREATE TABLE MATERIA(
	ID_MATERIA INT NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(15) NOT NULL,
	HORARIO VARCHAR(10) NOT NULL, 
	TITULAR VARCHAR(50) NOT NULL
)
GO
CREATE TABLE ALUMNOS(
	ID_ALUMNO INT NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	APELLIDO VARCHAR(50) NOT NULL
)
GO
CREATE TABLE MATERIAS_X_ALUMNO(
	ID_ALUMNO INT NOT NULL,
	ID_MATERIA INT NOT NULL,
	PRIMARY KEY (ID_MATERIA, ID_ALUMNO),
	FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNOS (ID_ALUMNO),
	FOREIGN KEY (ID_MATERIA) REFERENCES MATERIA (ID_MATERIA)
)
GO
CREATE TABLE PROMEDIOS_Y_OBS(
	ID_PROMEDIO INT NOT NULL PRIMARY KEY,
	ID_ALUMNO INT NOT NULL FOREIGN KEY REFERENCES ALUMNOS(ID_ALUMNO),
	PROMEDIO_GENERAL FLOAT NOT NULL DEFAULT (0),
	OBS VARCHAR(100) NULL DEFAULT ('Sin comentarios')
)
GO
CREATE TABLE SEDES(
	ID_SEDE INT NOT NULL PRIMARY KEY,
	DIRECCION VARCHAR(30) NOT NULL,
	LOCALIDAD VARCHAR(35) NOT NULL,
	CP VARCHAR(4) NOT NULL
)
GO
CREATE TABLE PROFESORES(
	ID_PROFESOR INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	SEDE INT NOT NULL FOREIGN KEY REFERENCES SEDES (ID_SEDE),
	NOMBRE VARCHAR(50) NOT NULL, 
	APELLIDO VARCHAR(50) NOT NULL
)

