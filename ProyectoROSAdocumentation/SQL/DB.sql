
create database CuadranteSeguro;
'Base de datos para reto Calles sin delincuentes'
use CuadranteSeguro;

create table cities(
id integer,
name varchar(60) not null,
coddane varchar(30) not null,
primary key (id)
);

insert into cities (name,coddane,created_at,updated_at) values ('Bogotá','11001',current_date,current_date);
insert into cities (name,coddane,created_at,updated_at) values ('Medellín','05001',current_date,current_date);
commit;

create table Localities(
id integer,
citys_id integer not null,
name varchar(60) not null,
primary key(id),
constraint LOCALIDAD_idciudad foreign key (idciudad) references CIUDAD(id)
);

create table BARRIO(
idbarrio integer,
idlocalidad integer not null,
nombre varchar(60) not null,
primary key(idbarrio),
constraint BARRIO_idlocalidad foreign key (idlocalidad) references LOCALIDAD(idlocalidad)
);

create table RED(
idred integer,
idbarrio integer not null,
nombre varchar(60) not null,
primary key(idred),
constraint RED_idbarrio foreign key (idbarrio) references BARRIO(idbarrio)
);

create table REDAPOYO(
idredapoyo integer,
idred integer not null,
nombre varchar(60) not null,
primary key(idredapoyo),
constraint REDAPOYO_idred foreign key (idred) references RED(idred)
);

create table TIPOIDENTIFICACION(
idtipoid integer not null,
tipoidentificacion varchar(60) not null,
primary key(idtipoid)
);

create table USUARIO(
userid integer,
nombres varchar(100) not null,
apellidos varchar(100) not null,
idtipoid integer not null,
noidentificacion varchar(20) not null,
nocelular varchar(20),
username  varchar(60),
clave  varchar(20) not null,
idredapoyo integer,
activo integer,
bloqueado integer,
foto bytea,
primary key(userid),
constraint USUARIO_idtipoid foreign key (idtipoid) references TIPOIDENTIFICACION(idtipoid),
constraint USUARIO_idredapoyo foreign key (idredapoyo) references REDAPOYO(idredapoyo)
);

create table NIVELRIESGO(
idnivel integer,
nivel varchar(60) not null,
primary key(idnivel)
);

create table TIPOINCIDENTE(
idtipo integer,
nombre varchar(60) not null,
idnivel integer not null,
primary key(idtipo),
constraint TIPOINCIDENTE_idnivel foreign key (idnivel) references NIVELRIESGO(idnivel)
);


create table INCIDENTE(
idincidente integer,
userid integer not null,
latitud varchar(60) not null,
longitud varchar(60) not null,
fecha timestamp DEFAULT ('now') not null,
idtipo integer not null,
pmuerte integer,
nambulancia integer,
npolicia integer,
prioridad integer,
riesgo integer,
descripcion text,
gnbtnpanico integer not null,
imagen bytea,
primary key(idincidente),
constraint INCIDENTE_userid foreign key (userid) references USUARIO(userid),
constraint INCIDENTE_idtipo foreign key (idtipo) references TIPOINCIDENTE(idtipo)
);