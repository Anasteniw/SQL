CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_list (
	artist_id SERIAL PRIMARY KEY,
	name_of_artist VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_Artist (
	artist_id INTEGER REFERENCES artist_list(artist_id),
	genre_id INTEGER REFERENCES genre(genre_id),
	CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album_list (
	album_id SERIAL PRIMARY KEY,
	name_of_album VARCHAR(40) NOT NULL,
	album_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist_Album (
	artist_id INTEGER REFERENCES artist_list(artist_id),
	album_id INTEGER REFERENCES album_list(album_id),
	CONSTRAINT zk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	name_of_track VARCHAR(40) NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album_list(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(40) NOT NULL,
	collection_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks_Collection (
	track_id INTEGER REFERENCES Tracks(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id),
	CONSTRAINT dk PRIMARY KEY (track_id, collection_id)
);