create table facultad(
    codigo int auto_increment,
    nombre varchar(100),
    primary key (codigo)
);

create table investigador(
    dni varchar(8),
    nomapels varchar(255),
    facultad int,
    primary key (dni),
    foreign key (facultad) references facultad(codigo)
    on delete cascade on update cascade
);

create table equipo(
    num_serie char(4),
    nombre varchar(100),
    facultad int,
    primary key (num_serie)
);

create table reserva(
    id int auto_increment
    dni_investigador varchar(8),
    num_serie_equipo char(4),
    comienzo date,
    fin date,
    primary key (id),
    foreign key (dni_investigador) references investigador(dni)
    on delete cascade on update cascade,
    foreign key (num_serie_equipo) references equipo(num_serie)
    on delete cascade on update cascade
);