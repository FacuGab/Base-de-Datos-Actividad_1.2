/*
Relacion 1:1
Una tabla que registre informacion de los Alumnos, relacionandolo con una tabla que contenga su Promedio general y Observaciones sobre el alumno.
*/
CREATE DATABASE ejemplo_bases_1_2
USE ejemplo_bases_1_2
GO
CREATE TABLE ALUMNOS(
	ID_ALUMNO INT NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	APELLIDO VARCHAR(50) NOT NULL
)
GO
CREATE TABLE PROMEDIOS_Y_OBS(
	ID_PROMEDIO INT NOT NULL PRIMARY KEY,
	ID_ALUMNO INT NOT NULL FOREIGN KEY REFERENCES ALUMNOS(ID_ALUMNO),
	PROMEDIO_GENERAL FLOAT NOT NULL DEFAULT (0),
	OBS VARCHAR(100) NULL DEFAULT ('Sin comentarios')
)

