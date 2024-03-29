--@AUTOR: CHAVEZ HERNANEZ, GUTIERREZ SILVESTRE, MARCELINO CISNEROS
--@FECHA CREACION: 10/04/23
--@DESCRIPCION: CREACION DE TABLAS DE LA PDB RESTAURANTE_S3: CLIENTES Y CUENTAS

PROMPT CREANDO TABLA CLIENTE
CREATE TABLE CLIENTE(
  CLIENTE_ID        NUMBER(10,0)  CONSTRAINT CLIENTE_ID_PK PRIMARY KEY,
  NOMBRE            VARCHAR2(40)  NOT NULL,
  APE_PATERNO       VARCHAR2(40)  NOT NULL,   
  APE_MATERNO       VARCHAR2(40)      NULL,
  NIVEL_ESTUDIOS    VARCHAR2(40)  NOT NULL,
  EDAD              NUMBER(5,0)   NOT NULL,
  GENERO            VARCHAR2(40)  NOT NULL,
  RFC               VARCHAR2(40)  NOT NULL
);

PROMPT CREANDO TABLA MESA
CREATE TABLE MESA(
  MESA_ID     NUMBER(5,0)     CONSTRAINT MESA_ID_PK PRIMARY KEY,
  MESA        VARCHAR2(40)    NOT NULL,
  CAPACIDAD   NUMBER(5,0)     NOT NULL
);

PROMPT CREANDO TABLA CUENTA
CREATE TABLE CUENTA(
  CUENTA_ID         NUMBER(5,0)   CONSTRAINT CUENTA_ID_PK PRIMARY KEY,
  FECHA             DATE          NOT NULL,
  DESCUENTO         NUMBER(10,0)  NOT NULL,      
  COSTO_TOTAL       NUMBER(10,0)  NOT NULL,
  CLIENTE_ID        NUMBER(10,0)      NULL,
  MESA_ID           NUMBER(5,0)   NOT NULL,
  EMPLEADO_RID      NUMBER(10,0)  NOT NULL,
  CONSTRAINT CUENTA_CLIENTE_ID_FK FOREIGN KEY (CLIENTE_ID)
  REFERENCES CLIENTE(CLIENTE_ID),
  CONSTRAINT CUENTA_MESA_ID_FK FOREIGN KEY (MESA_ID)
  REFERENCES MESA(MESA_ID)
);

PROMPT CREANDO INDICES
CREATE INDEX CUENTA_COSTO_TOTAL_IX ON CUENTA(COSTO_TOTAL);
CREATE INDEX CLIENTE_RFC_IX ON CLIENTE(RFC);
CREATE INDEX CLIENTE_EDAD_IX ON CLIENTE(EDAD);