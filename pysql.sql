create table if not exists genre (
	id serial primary key,
	name varchar(40) not null
	);
	
create table if not exists artist (
	id serial primary key,
	genre_id integer references genre(id),
	name varchar(40) not null
	);
	
create table if not exists album (
	id serial primary key,
	artist_id integer references artist(id),
	name varchar(40) not null,
	release_year date not null
	);
	
create table if not exists song (
	id serial primary key,
	album_id integer references album(id),
	name varchar(40) not null,
	duration real check(duration > 0)
	);