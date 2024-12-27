-- Crear las restricciones DEFAULT
CREATE DEFAULT FechaActual
    AS GETDATE();
GO

CREATE DEFAULT LetraN
    AS 'N';
GO

CREATE DEFAULT NumeroCero
    AS 0;
GO

CREATE DEFAULT NumeroUno
    AS 1;
GO

-- Crear la tabla NMAIL
CREATE TABLE NDAM
(
    nCodigoDam  int IDENTITY (1,1),
    nDAM varchar(20) NOT NULL,
    sNumerobk varchar(20) NOT NULL,
    dFechaCreacion  datetime NOT NULL
);
GO

-- A�adir la clave primaria
ALTER TABLE NDAM 
    ADD CONSTRAINT pk_NDAM PRIMARY KEY (nCodigoDam ASC);
GO

-- Crear el �ndice �nico
CREATE UNIQUE INDEX uk_nDAM ON NDAM
(
    nDAM ASC
);
GO

-- Asociar el valor por defecto para dFechaCreacion
EXEC sp_bindefault FechaActual, 'NDAM.dFechaCreacion';
GO
