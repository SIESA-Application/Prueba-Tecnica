/* 5- La empresa “Mascotas y Mascotas”, rescata animales que han sido abandonados, los
rehabilitan y cuando están totalmente sanos, los ponen a disposición para que estos sean
adoptados, se tienen las siguientes entidades:



Construya el modelo entidad relación en la base de datos de su elección (relaciones, tipos
de datos, llaves primarias y foráneas, etc…), si ud. lo considera necesario, puede adicionar
más entidades o tablas.
De acuerdo al modelo ER que Ud. acaba de transcribir, escriba las siguientes instrucciones
SQL:
● Listar todas las mascotas.
● Listar las mascotas que no han sido adoptadas.
● Listar el número de mascotas por cada tipo de mascota.
● Listar los propietarios que tengan más de una mascota.
● Listar el número de mascotas por cada tipo de mascota y por cada propietario.
● Listas los propietarios que no tienen mascotas.
Se debe entregar este punto con un archivo sql donde se encuentre el script de la creación
de las tablas y las consultas ejecutadas */




/* 
 
 SQL SCRIPTS:
************************
Creación de Tablas

Sentencias DDL
**************************

CREATE TABLE tipo_mascota (
    idtipo_mascota INTEGER      PRIMARY KEY AUTOINCREMENT,
    descripcion    VARCHAR (45) 
);

CREATE TABLE propietario (
    idpropietario INTEGER      PRIMARY KEY AUTOINCREMENT,
    nombre        VARCHAR (45),
    direccion     VARCHAR (45),
    telefono      VARCHAR (10),
    correo        VARCHAR (60),
    comentarios   TEXT
);

CREATE TABLE mascota (
    idmascota    INTEGER      PRIMARY KEY AUTOINCREMENT,
    nombre       VARCHAR (45),
    tipo_mascota INT          REFERENCES tipo_mascota (idtipo_mascota),
    propietario  INT          REFERENCES propietario (idpropietario) 
);
 */




-- SQLite
/*Visualizar todas las tablas*/

select * from mascota;
select * from tipo_mascota;
select * from propietario;


/* 1 ● Listar todas las mascotas.
Se listan las mascotas con su ID, su nombre, tipo de mascota y nombre del propietario.
 */
select t.idmascota, t.nombre as nombre_mascota, t.descripcion as descripcion_tipo_mascota, p.nombre as nombre_propietario from propietario as p inner join (select m.idmascota, m.nombre, tm.descripcion,  m.propietario  from mascota as m inner join tipo_mascota as tm on m.tipo_mascota==tm.idtipo_mascota) as t on t.propietario==p.idpropietario;



/* 2 ● Listar las mascotas que no han sido adoptadas.

Para esta Base de Datos, las mascotas no adoptadas, pertenecen al albergue Mascotas&Mascotas.
 */


select * from (select t.idmascota, t.nombre as nombre_mascota, t.descripcion as descripcion_tipo_mascota, p.nombre as nombre_propietario from propietario as p inner join (select m.idmascota, m.nombre, tm.descripcion,  m.propietario  from mascota as m inner join tipo_mascota as tm on m.tipo_mascota==tm.idtipo_mascota) as t on t.propietario==p.idpropietario
) as t2 where t2.nombre_propietario=="Mascotas&Mascotas";





/* 3 ● Listar el número de mascotas por cada tipo de mascota.*/


select * from (select t.idmascota, t.nombre as nombre_mascota, t.descripcion as descripcion_tipo_mascota, p.nombre as nombre_propietario from propietario as p inner join (select m.idmascota, m.nombre, tm.descripcion,  m.propietario  from mascota as m inner join tipo_mascota as tm on m.tipo_mascota==tm.idtipo_mascota) as t on t.propietario==p.idpropietario
) as t3 group by t3.descripcion_tipo_mascota;


/* 4 ● Listar los propietarios que tengan más de una mascota.
 */



/* 5 ● Listar el número de mascotas por cada tipo de mascota y por cada propietario.
 */


/* 6 ● Listas los propietarios que no tienen mascotas. */
