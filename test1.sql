/* Crear tablespace para el proyecto */
CREATE TABLESPACE TBSTEST
DATAFILE 'tbstest.dbf'
SIZE 300M;

/* PERMITE EJECUCION DE SCRIPTS DENTRO DEL TABLESPACE CREADO */
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

/* Crear usuario */
CREATE USER user_desarrollador IDENTIFIED BY vallegrande
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;
/* Asignar los permisos al usuario */
GRANT CREATE SESSION TO user_desarrollador;
GRANT CREATE TABLE TO user_desarrollador;
GRANT CREATE VIEW TO user_desarrollador;
GRANT CREATE PROCEDURE TO user_desarrollador;
GRANT CREATE TRIGGER TO user_desarrollador;
GRANT CREATE SEQUENCE TO user_desarrollador;
GRANT CREATE JOB TO user_desarrollador;

-- Table: CLIENTE
CREATE TABLE CLIENTE (
    id int  NOT NULL,
    nombres varchar2(40)  NOT NULL,
    apellido_paterno varchar2(50)  NOT NULL,
    apellido_materno varchar2(50)  NOT NULL,
    dni char(8)  NOT NULL UNIQUE,
    celular char(11)  NOT NULL UNIQUE,
    email varchar2(80)  NOT NULL UNIQUE,
    domicilio varchar2(80)  NOT NULL,
    ubigeo_codigo char(6)  NOT NULL,
    activo CHAR(1) DEFAULT 'A',
    CONSTRAINT CLIENTE_pk PRIMARY KEY (id)
) ;

--ALTER TABLE CLIENTE
--ADD CONSTRAINT pk_CLIENTE PRIMARY KEY (id);

-- Crear secuencia INCREMENTO INC_CLIENTE
       CREATE SEQUENCE INC_CLIENTE
       START WITH 1
       INCREMENT BY 1;

       -- Crear disparador de auntoincrementable TRG_INC_CLIENTE
       CREATE TRIGGER TRG_INC_CLIENTE
       BEFORE INSERT ON CLIENTE
       FOR EACH ROW
       BEGIN
       SELECT INC_CLIENTE.NEXTVAL INTO :NEW.id FROM DUAL;
       END;
       
       -- Insertar registros CLIENTE
INSERT ALL
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alicia','GarcÃ­a','Campos','47812333','929 185 236','agarcia@gmail.com','Av. Paula Sotelo # 423 Dpto. 073','140409')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Juana','Ã?vila','Chumpitaz','15487922','923 568 741','javila@gmail.com','Jr. Ignacio Alicea # 7304','140402')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Oscar','Coronado','VÃ¡squez','15253588','932 615 478','ocoronado@gmail.com','Cl. Axel Aranda # 2 Hab. 133','140403')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Luis','Barrios','Palomino','85213566','932 817 645','lbarrios@outlook.com','Cl. Juan JosÃ© MelÃ©ndez # 5','140409')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('MarÃ­a','Tarazona','Mendoza','15482566','978 400 123','mtarazona@outlook.com','Urb. Isaac Olmos # 4648','140407')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Pedro','SÃ¡nchez','DÃ¡vila','15428211','941 533 268','psanchez@yahoo.com','Av. Juan Diego Rivero # 12','140402')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Aldo','Torres','Zavala','47129533','958 866 221','atorres@yahoo.com','Urb. Juan JosÃ© Portillo # 3 Piso 2','140405')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Fiorella','Monteza','Alzamora','48171533','992 255 441','fmonteza@gmail.com','Cl. Josefina Guillen # 466 Piso 48','140408')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Gloria','Linares','RodrÃ­guez','15429866','954 415 950','glinares@hotmail.com','Cl. Montserrat SÃ¡nchez # 8955 Piso 2','140403')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Esperanza','Stark','Parker','85251592','901 133 258','estark@yahoo.com','Urb. Juan JosÃ© Portillo # 3 Piso 2','140405')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Esmeralda','SÃ¡nchez','LÃ©vano','15437783','918 253 554','Esmesan@gmail.com','Cl. Juan JosÃ© MelÃ©ndez # 5','140409')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alexander','Vicente','Campos','15365377','912 873 460','Alexampos@gmail.com','Urb. Isaac Olmos # 4648','140407')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Maria','Chamorro','Vicente','73467458','913 466 467','Mariachamorro@gmail.com','Av. Paula Sotelo # 423 Dpto. 073','140409')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Daniela','Cuzcano','Luyo','56478936','923 536 576','Daniluyo@yahoo.com','Av. Juan Diego Rivero # 12','140402')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Carmen','SÃ¡nchez','SÃ¡nchez','15385177','926 327 843','Carmen@gmail.com','Cl. Juan JosÃ© MelÃ©ndez # 5','140409')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Miguel','SÃ¡nchez','De la cruz','87214363','907 547 644','Miguelcruz@outlook.com','Cl. Josefina Guillen # 466 Piso 48','140408')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Yulissa','Vicente','Luyo','18923737','957 672 146','Yulissaluyo@hotmail.com','Cl. Axel Aranda # 2 Hab. 133','140403')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Raul','Vicente','Rojas','14564367','956 465 890','Raulrojas@gmail.com','Jr. Ignacio Alicea # 73034','140402')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Ruben','Ruiz','Quispe','15745889','918 746 334','rubenquispe@yahoo.com','Urb. Juan JosÃ© Portillo # 1 Piso 1','140405')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alvaro','Alcala','Quispe','15545889','918 746 367','Alvaroalcala@outlook.es','Urb. Juan JosÃ© Portillo # 3 Piso 2','140405')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Ruben','Ruiz','Mesa','15744588','918 747 654','rubenruiz@yahoo.com','Urb. Vicente Lote1 Numero12','140405')
       INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Cristhian','Contreras','Barrios','15438799','915 112 334','cristhianbarrios@yahoo.com','Urb. Juan JosÃ© Portillo # 1 Piso 4','140405')
       SELECT * FROM DUAL
COMMIT;

-- Table: PRODUCTO
CREATE TABLE PRODUCTO (
    id int NOT NULL,
    nombre varchar2(50) NOT NULL,
    descripcion varchar2(200) NOT NULL,
    precio decimal(8,2) NOT NULL,
    categoria char(1)  NOT NULL,
    stock int  NOT NULL,
    activo char(1) DEFAULT 'A',
    CONSTRAINT PRODUCTO_pk PRIMARY KEY (id)
) ;

ALTER TABLE producto
ADD CONSTRAINT pk_producto PRIMARY KEY (id);

-- Crear secuencia INCREMENTO INC_PRO
       CREATE SEQUENCE INC_PRODUCTO
       START WITH 1
       INCREMENT BY 1;

       -- Crear disparador de auntoincrementable TRG_INC_PRO
       CREATE TRIGGER TRG_INC_PRODUCTO
       BEFORE INSERT ON PRODUCTO
       FOR EACH ROW
       BEGIN
       SELECT INC_PRODUCTO.NEXTVAL INTO :NEW.id FROM DUAL;
       END;


-- Insertar registros PRODUCTO
INSERT ALL
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Papa a la huancaina','Rica entrada tradicional',10.00,'E','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Pollo al cilindro','El rico pollo al cilindro',20.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Chancho al cilindro','El rico chancho al cilindro',30.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Sopa seca de CamarÃ³n','La tipica comida sopa seca de Lunahuana con el rico camaron',40.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Picante de CamarÃ³n','El rico camaron con el toque picante que nos gusta',40.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Caldo de gallina','Rica sopa para empezar la comida',12.00,'E','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Ceviche de CamarÃ³n','El rico camaron sin cascara con el toque de ceviche',40.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Porcion de yuca','Porcion de 12 yuquitas fritas',10.00,'E','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Chupe de CamarÃ³n','Un rico caldo de camarones',40.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Lomo saltado Fino','La rica carne en un lomo saltado',35.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Bisteck a lo pobre','El clasico y sabroso plato a lo pobre',35.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Trucha frita','La trucha de agua dulce con su toque frito dorado',25.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Trucha al ajo','La trucha sasonada con el toque de ajo',25.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Ensalada mixta','Combinacion de verduras',10.00,'E','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Cuy frito','El rico rodeedor del Peru frito con toque lunahuanense',50.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Picante de cuy','El rico cuy con el toque picante',50.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Porcion de tequeÃ±os','TequeÃ±os con cremas',10.00,'E','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Chicharron de cuy','El rico cuy ahora como chicharron',50.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Causa Rellena','Rica causa de pollo',10.00,'E','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Chaufa de Pollo','El clasico y rico chaufa de pollo',25.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Milanesa','La rica milanesa de casa',25.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Chicharron de Pollo','EL delicioso chicharron de pollo',25.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Pollo frito','El delicio pollo frito',25.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Apanado','El rico pollo apanado',35.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Trucha a la plancha','La rica trucha mas saludable a la plancha',30.00,'S','10')
       INTO PRODUCTO (nombre, descripcion, precio, categoria, stock) VALUES('Suprema','Un plato misterioso',25.00,'S','10')
       SELECT * FROM DUAL
COMMIT;


ALTER TABLE cliente ADD CONSTRAINT cliente_producto_id_fk FOREIGN
KEY (id)
REFERENCES producto (id) ON DELETE CASCADE;

SELECT constraint_name, constraint_type, table_name
FROM user_constraints
WHERE table_name = 'CLIENTE';


SELECT COUNT(*) FROM cliente;
DELETE FROM PRODUCTO WHERE id = 10;

/*BASE DE DATOS HR
CREATE OR REPLACE VIEW v2 ("highest salary", "lowest salary", "average salary","Department Name") AS
SELECT
TO_CHAR(ROUND(MAX(NVL(emp.salary,0)),2),'$999999.99'),
TO_CHAR(ROUND(MIN(NVL(emp.salary,0)),2),'$999999.99'),
TO_CHAR(ROUND(AVG(NVL(emp.salary,0)),2),'$999999.99'), dpt.department_name
FROM departments dpt LEFT OUTER JOIN employees emp ON dpt.department_id =
emp.department_id
GROUP BY (dpt.department_id, dpt.department_name);
select * from v2;

/*SELECT *
FROM user_tab_privs
WHERE table_name = 'EMP';
GRANT SELECT ON emp to PUBLIC;

SELECT em.employee_id, dp.department_name 
FROM employees em, departments dp; */


