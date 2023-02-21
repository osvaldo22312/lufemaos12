CREATE TABLE CLIENTES(
NOMBRE_CLI VARCHAR(25),
TELEFONO INT (10),
CORREO_CLI VARCHAR(25),
DESCRIPCION_PAG VARCHAR(100));

CREATE TABLE SOCIOS(
NOMBRE_SOC VARCHAR(25),
CONTRASEÑA VARCHAR (20),
CORREO_SOC VARCHAR(25),
ID_SOCIO INT(10));

CREATE TABLE OPINIONES(
NOMBRE VARCHAR(25),
TELEFONO_PERSONAL INT (10),
CORREO_REFERECIA VARCHAR(25),
OPINION VARCHAR(100));


CREATE TABLE AGENDA(
NOMBRE_CLI VARCHAR(25),
DESCRIPCION_PAG VARCHAR(100),
FECHA_ENTREGA VARCHAR(10),
PRECIO INT(10));

INSERT INTO CLIENTES VALUES 

("Omar Dominguez Ortega",7229567856,"Banquetesfinos12@gmail.com","Pagina sobre servicio de comida 
para eventos de empresas dirigida a publicidad "),
("Sebastian Hernandez De la torre ",7229577957,"veterinaria23@gmail.com","Pagina sobre servicio medicos y cuidados 
para mascotas  dirigida a publicidad y contacto del negocio ");

INSERT INTO SOCIOS VALUES
("Osvaldo Martinez Hernandez","Cardozo98$","osvaldomartinezhernandez@gmail.com",2041566090),
("Betzy Marisol","Betzy98$","betzy124@gmail.com",2142576191);

INSERT INTO OPINIONES VALUES
("Omar Dominguez Ortega",7229567856,"Banquetesfinos12@gmail.com","Exelente servicio se entrego a tiempo y buem costo"),
("Sebastian Hernandez De la torre",7229577957,"veterinaria23@gmail.com","Exelente servicio se entrego a tiempo y tengo mas clientes"),

INSERT INTO AGENDA VALUES
("Omar Dominguez Ortega","Pagina sobre servicio de comida 
para eventos de empresas dirigida a publicidad ","12-NOV-2022",3000),
("Sebastian Hernandez De la torre","Pagina sobre servicio medicos y cuidados 
para mascotas  dirigida a publicidad y contacto del negocio","12-DIC-2022",2000);

SELECT NOMBRE_CLI
FROM CLIENTES;

SELECT FROM CLIENTES;

select distinct NOMBRE_CLI from CLIENTES
  order by NOMBRE_CLI,TELEFONO,DESCRIPCION_PAG,CORREO_CLI;

select * from CLIENTES
  where TELEFONO like "%Banquetesfinos12@gmail.com%";


  SELECT * FROM CLIENTES WHERE DESCRIPCION LIKE "P%"; 


SELECT * FROM CLIENTE LIMIT 2;


SELECT NOMBRE_CLI,TELEFONO,CORREO_CLI,DESCRIPCION_PAG
FROM CLIENTES
ORDER BY CORREO_CLI,TELEFONO;

select DESCRIPCION_PAG
  from AGENDA
 where PRECIO > 1000;

 SELECT * FROM SOCIOS
WHERE NOMBRE_SOC
BETWEEN "Osvaldo Martinez Hernandez" AND "Betzy Marisol";

SELECT NOMBRE_CLI,DESCRIPCION_PAG
FROM CLIENTES
UNION
SELECT NOMBRE_CLI,DESCRIPCION_PAG
FROM AGENDA;



