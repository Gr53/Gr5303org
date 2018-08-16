
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

create table localities(
id integer,
cities_id integer not null,
name varchar(60) not null,
primary key(id),
constraint LOCALIDAD_idciudad foreign key (idciudad) references CIUDAD(id)
);

insert into localities (cities_id,name,created_at,updated_at) values (3,'Fontibón',current_date,current_date);
insert into localities (cities_id,name,created_at,updated_at) values (3,'Engativá',current_date,current_date);
insert into localities (cities_id,name,created_at,updated_at) values (3,'Suba',current_date,current_date);
commit;

create table neighborhoods(
id integer,
localities_id integer not null,
name varchar(60) not null,
primary key(idbarrio),
constraint BARRIO_idlocalidad foreign key (idlocalidad) references LOCALIDAD(idlocalidad)
);

insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Acapulco',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Bellavista Occidental',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La BonanzaBosque Popular',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Cataluña',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Ciudad de Honda',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Dorado-San Joaquín',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Guali',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Laurel',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Paseo',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Estrada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Cabaña',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Estradita',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Europa',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Marcela',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Reliquia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Las Ferias',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Metrópolis',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Palo Blanco',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santo Domingo',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Andalucía',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Ciudad Bachué',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Copetroco La Tropical',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Portal del Río',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Palestina',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Tisquesusa',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Andalucia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Española',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Serena',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Los Cerezos',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Luis Carlos Galán',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Meissen-Sidauto',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Minuto de Dios',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Morisco',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'París Gaitán',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Primavera Norte',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Quirigua',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Boyacá',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Carmelo',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Refugio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Florencia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Florida Blanca',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Almería',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Granja',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Soledad Norte',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Salina',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Los Pinos Florencia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Maratu',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'París',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa Helenita',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa María del Lago',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa Rosita',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Tabora',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Veracruz',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Zarzamora',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Encanto',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Lujan',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Real',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Los Monjes',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Normandía',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Normandía Occidental',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San Ignacio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San Marcos',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa Cecilia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Luz',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Bochica',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Bochica compartir',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Bolivia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Ciudadela Colsubsidio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Cortijo',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Garcés Navas',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Álamos',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Álamos Norte',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Bosques de Mariana',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Cedro',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Garcés Navas',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Los Ángeles',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Molinos de Viento',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Plazuelas del Virrey',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San Basilio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa Mónica',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Amalia',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Sagrario',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villas de Granada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villas del Madrigal',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villas del Dorado-San Antonio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Bosques de Granada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Parques de Granada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Andalucía Parques de Granada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Portal de Granada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Rincón de Granada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Granada Club Residencial',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Rotana',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Mirador de los Cerezos',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Alameda',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Centauros del Danubio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Cedro',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Mirador',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Muelle',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Palmar',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Triángulo',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Verdún',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Engativá-Centro',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Granjas El Dorado',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Cabaña',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Esperanza',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Faena',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Riviera',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'La Torquigua',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa Lucía Norte',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Las Mercedes',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Las Palmas',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Linterama',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Los Laureles',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Los Laureles-Sabanas El Dorado',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Marandú',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Porvenir',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Puerto Amor-Playas del Jaboque',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San Antonio Norte',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San Basilio',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San José Obrero',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Santa Librada',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Claver I y II',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Constanza',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villas del Dorado Norte',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Gladys',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Mary',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Sandra',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Villa Teresita',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'Viña del Mar',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'El Salitre',current_date,current_date);
insert into neighborhoods (localities_id,name,created_at,updated_at) values(8,'San Ignacio',current_date,current_date);


create table n_nets
id integer,
neighborhoods_id integer not null,
name varchar(60) not null,
primary key(idred),
constraint RED_idbarrio foreign key (idbarrio) references BARRIO(idbarrio)
);

insert into n_nets (neighborhoods_id,name,created_at,updated_at) values(167,'Quirigua red1',current_date,current_date);


create table support_nets(
i integer,
n_nets_id integer not null,
name varchar(60) not null,
primary key(idredapoyo),
constraint REDAPOYO_idred foreign key (idred) references RED(idred)
);

insert into support_nets (nets_id,name,created_at,updated_at) values(1,'Red de apoyo motociclistas #1',current_date,current_date);

create table identification_types(
id integer not null,
identification_type varchar(60) not null,
primary key(idtipoid)
);

insert into identification_types (identificationtype,created_at,updated_at) values('Cédula de ciudadania',current_date,current_date);
insert into identification_types (identificationtype,created_at,updated_at) values('Tarjeta de identidad',current_date,current_date);
insert into identification_types (identificationtype,created_at,updated_at) values('Cedula de extranjeria',current_date,current_date);
insert into identification_types (identificationtype,created_at,updated_at) values('Pasaporte',current_date,current_date);


create table users(
id integer,
names varchar(100) not null,
surnames varchar(100) not null,
identification_types_id integer not null,
identificationnumber varchar(20) not null,
cellphonenumber varchar(20),
username  varchar(60),
password  varchar(20) not null,
support_nets_id integer,
active integer,
locked integer,
photo bytea,
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