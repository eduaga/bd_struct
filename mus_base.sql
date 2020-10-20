create table if not exists Musician (
perf_id serial primary key,
perf_name varchar(50)
);

create table if not exists Album (
album_id serial primary key,
album_title varchar(100),
album_date integer
);

create table if not exists MusicianAlbum (
mus_id integer references Musician(perf_id),
album_id integer references Album(album_id),
constraint ma primary key (mus_id, album_id)
);

create table if not exists Genre (
genre_id serial primary key,
genre_name varchar(40) unique
);

create table if not exists MusicianGenre (
mus_id integer references Musician(perf_id),
genre_id integer references Genre(genre_id),
constraint mg primary key (mus_id, genre_id)
);

create table if not exists Track (
track_id serial primary key,
track_title varchar(100),
track_duration varchar(5),
track_album integer,
foreign key(track_album) references Album(album_id)
);

create table if not exists Collection (
collect_id serial primary key,
collect_name varchar(100),
collect_date integer
);

create table if not exists TrackCollection (
track_id integer references Track(track_id),
collect_id integer references Collection(collect_id),
constraint tc primary key (track_id, collect_id)
);
