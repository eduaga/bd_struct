create table Genre (
genre_id serial primary key,
genre_name varchar(40) unique
);

create table Musician (
perf_id serial primary key,
perf_name varchar(50),
perf_genre integer,
foreign key(perf_genre) references Genre(genre_id)
);

create table Album (
album_id serial primary key,
album_title varchar(100),
album_date integer,
album_perf integer,
foreign key(album_perf) references Musician(perf_id)
);

create table Track (
track_id serial primary key,
track_title varchar(100),
track_duration varchar(5),
track_album integer,
foreign key(track_album) references Album(album_id)
);
