
/*
Relacion 1:N
Una tabla de Sedes que se relaciona con una tabla de Profesores, donde puede haber mas de un registro de la tabla de profesores por Sede, 
pero no mas de una sede por profesor.
*/
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
	APELLIDO VARCHAR(50) NOT NULL,
	CHECK (NOMBRE != '' AND APELLIDO != '')
)