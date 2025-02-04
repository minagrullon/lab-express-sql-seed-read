DROP DATABASE IF EXISTS songs_dev;
CREATE DATABASE songs_dev;

\c songs_dev;

DROP TABLE IF EXISTS playlists;

CREATE TABLE playlists (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT
);

DROP TABLE IF EXISTS songs;

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    artist TEXT NOT NULL,
    album TEXT,
    time TEXT,
   is_favorite BOOLEAN,
   playlist_id INTEGER REFERENCES playlists (id) ON DELETE CASCADE
);



-- CREATE TABLE albums (
--     id serial PRIMARY KEY,
--     released_year INTEGER NOT NULL,
--     length INTEGER NOT NULL,
--     genre TEXT NOT NULL,
--     song_id INTEGER REFERENCES songs(id)
-- ON DELETE CASCADE
-- )