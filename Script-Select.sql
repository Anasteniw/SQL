SELECT name_of_album, album_release FROM album_list
WHERE album_release = '2018-01-01';

SELECT name_of_track, duration FROM tracks
WHERE duration IN (SELECT max(duration) FROM tracks);

SELECT name_of_track FROM tracks
WHERE duration >= '00:03:30';

SELECT name_of_album, album_release FROM album_list
WHERE album_release BETWEEN '2018-01-01' AND '2020-01-01';

SELECT name_of_artist  FROM artist_list
WHERE LENGTH(name_of_artist)-LENGTH(REPLACE(name_of_artist, ' ',''))+1 = 1;

SELECT name_of_track FROM tracks
WHERE name_of_track LIKE '%My%';
