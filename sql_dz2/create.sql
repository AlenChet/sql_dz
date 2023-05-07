create table if not exists Categories (
	categories_id SERIAL primary key,
	name VARCHAR(120) not null, 
	UNIQUE(name)
);

create table if not exists Singer(
	singer_id SERIAL primary key,
	name_singer VARCHAR(120) not null,
	UNIQUE(name)
);


create table if not exists CategoriesSinger(
	categories_id integer not null references Categories(categories_id),
	singer_id integer not null references Singer(singer_id),
	primary key(category_id, singer_id)
);

create table if not exists Album (
	album_id SERIAL primary key,
	name_album VARCHAR(120) not null,
	year integer check (year between 1900 and extract(year from now())) 
);

create table if not exists AlbumSinger (
	album_id integer not null references Album(album_id),
	singer_id integer not null references Singer(singer_id),
	primary key(album_id, singer_id)
);

create table if not exists Track (
	track_id SERIAL primary key,
	name_track VARCHAR(160) not null,
	duration integer,
	album_id integer not null references Album(album_id)
);

create table if not exists Collection (
	collection_id SERIAL primary key,
	name_collection VARCHAR(120) not null,
	year integer check (year between 1900 and extract(year from now()))
);

create table if not exists CollectionTrack (
	collection_id integer not null references Collection(collection_id),
	track_id integer not null references Track(track_id),
	primary key(collection_id, track_id)
);

create table if not exists SingerCollection (
	singer_id integer not null references Singer(singer_id),
	collection_id integer not null references Collection(collection_id),
	primary key(singer_id, collection_id)
);
