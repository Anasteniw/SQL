INSERT INTO genre(genre_name)
VALUES ('Rock'), ('Classic'), ('Pop'), ('Heavy metal'), ('Folk');

INSERT INTO artist_list(name_of_artist)
VALUES ('The Beatles'), ('Hurts'), ('Vivaldi A.'), ('Brainstorm'), ('Sting'), ('Cohen L.'), ('Ozzy Osbourne'), ('Placebo');

INSERT INTO album_list(name_of_album, album_release)
VALUES ('Yellow Submarine', '1969/01/01'), 
		('Desire', '2017/01/01'), 
		('The Four Seasons', '2020/01/01'), 
		('A Day Before Tomorrow', '2018/01/01'), 
		('The Edge of Reason', '2019/01/01'),
		('Songs of Love and Hate', '1971/01/01'),
		('Dreamer', '2014/01/01'),
		('Never Let Me Go', '2022/01/01');
		
INSERT INTO tracks (name_of_track, duration, album_id)
VALUES ('All You Need Is My Love', '00:03:50', 1), ('Sea of Time', '00:03:00', 1), 
		('Beautiful Ones', '00:02:44', 2), ('Ready to Go', '00:03:02', 2),
		('Summer', '00:05:55', 3), ('Winter', '00:03:33', 3),
		('Colder', '00:02:57', 4), ('My Passion', '00:02:24', 4),
		('River', '00:03:57', 5), ('Paradox', '00:02:17', 5),
		('Dress Rehearsal Rag', '00:03:05', 6), ('Last Years Man', '00:04:25', 6),
		('Changes', '00:06:11', 7), ('Shes Gone', '00:06:48', 7),
		('Hugz', '00:02:11', 8), ('Happy Birthday In The Sky', '00:04:51', 8);

INSERT INTO collection (collection_name, collection_release)
VALUES ('First', '1999/01/01'), 
		('Second', '2017/01/01'), 
		('Third', '2021/01/01'), 
		('Fourth', '2019/01/01'), 
		('Fifth', '1990/01/01'),
		('Sixth', '2004/01/01'),
		('Seventh', '2010/01/01'),
		('Eighth', '2014/01/01');

INSERT INTO genre_artist(genre_id, artist_id)
VALUES (1, 1),
	   (1, 4),
       (1, 8),
       (2, 3),
       (3, 2),
       (3, 4),
       (3, 5),
       (4, 7),
       (5, 1),
       (5, 6);
       
INSERT INTO artist_album(artist_id, album_id)
VALUES (1, 1),
	   (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8);
       
INSERT INTO tracks_collection (track_id, collection_id)
VALUES (1, 8),
	   (2, 7),
       (3, 6),
       (4, 5),
       (5, 4),
       (6, 3),
       (7, 2),
       (8, 1),
       (8, 8),
       (9, 1),
       (10, 2),
       (11, 3),
       (12, 4),
       (13, 5),
       (14, 6),
       (15, 7),
       (16, 8);