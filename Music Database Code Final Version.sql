-- I).Core Requirements
-- 1.Create a relational DB with minimum 5 tables
-- Creating a new database called Music
CREATE DATABASE Music;

-- use the correct DB
USE Music;

-- Create a Weekly Top Artists Global table    [TABLE 1]
CREATE TABLE WeeklyTopArtistsGlobal(
	`Artist` VARCHAR(100) NOT NULL,
	`Artist_ID` VARCHAR(100) NOT NULL,
	`Ranking` INTEGER NOT NULL,
	`Genre` VARCHAR(100) NOT NULL,
	`Peak` INTEGER NOT NULL,
	`Previous` INTEGER NOT NULL,
	`Streak` INTEGER NOT NULL,
     PRIMARY KEY (`Artist`));

-- inserting data
INSERT INTO WeeklyTopArtistsGlobal (Artist,Artist_ID,Ranking, Genre,Peak,Previous,Streak)
VALUES 	('Bad Bunny', 'BB', 1, 'Latin', 1, 1, 33),
		('Harry Styles', 'HS', 2, 'Pop', 1, 1, 33),
		('Ed Sheeran', 'ES', 6, 'Pop', 1, 7, 33),
		('Kendrick Lamar', 'KL', 7, 'Hip Hop', 2, 3, 33),
		('Doja Cat', 'DC', 14, 'R&B', 8, 14, 33),
		('Jack Harlow', 'JH', 25, 'Hip Hop', 4, 18, 33),
		('The Kid LAROI', 'TKL', 49, 'Pop', 22, 49, 33);

-- Create a Weekly Top Songs Global table    [TABLE 2]
CREATE TABLE WeeklyTopSongsGlobal(
	`Track` VARCHAR(100) NOT NULL,
	`Ranking` INTEGER NOT NULL,
	`Artist` VARCHAR(100) NOT NULL,
	`Artist_ID` VARCHAR(100) NOT NULL,
	`Peak` INTEGER NOT NULL,
	`Previous` INTEGER NOT NULL,
	`Streak` INTEGER NOT NULL,
	`Streams` FLOAT NOT NULL,
	`Album` VARCHAR(100) NOT NULL,
	`Genre` VARCHAR(100) NOT NULL,
    `Label` VARCHAR(100) NOT NULL,
	`FirstEntryDate` DATE NOT NULL,
     PRIMARY KEY (`Track`));
     
-- inserting data
INSERT INTO WeeklyTopSongsGlobal 
(Track,Ranking,Artist, Artist_ID, Peak,Previous,Streak,Streams,Album,Genre,Label,FirstEntryDate)
VALUES 	('As It Was', 1, 'Harry Styles', 'HS', 1, 1, 9, '60420855','Harry s House', 'Pop', 'Columbia', 20220407),
		('Me Porto Bonito', 2, 'Bad Bunny', 'BB', 2, 4, 4, '39026161','Un Verano Sin Ti', 'Latin', 'Rimas Entertainment', 20220512),
		('Ojitos Lindos', 3, 'Bad Bunny', 'BB', 3, 3, 4, '37623538', 'Un Verano Sin Ti', 'Latin', 'Rimas Entertainment', 20220512),
		('Tití Me Preguntó', 5, 'Bad Bunny', 'BB', 5, 9, 4, '31126704', 'Un Verano Sin Ti', 'Latin', 'Rimas Entertainment', 20220512),
		('Late Night Talking', 6, 'Harry Styles', 'HS', 2, 2, 2, '29782237', 'Harry s House', 'Pop', 'Columbia', 20220526),
		('Moscow Mule', 7, 'Bad Bunny', 'BB', 2, 7, 4, '28354270', 'Un Verano Sin Ti', 'Latin', 'Rimas Entertainment', 20220512),
		('Party', 8, 'Bad Bunny', 'BB', 6, 12, 4, '25225316', 'Un Verano Sin Ti', 'Latin', 'Rimas Entertainment', 20220512),
		('First Class', 12, 'Jack Harlow', 'JH', 2, 18, 8, '23194068','Come Home The Kids Miss You', 'Hip Hop', 'Atlantic Records', 20220414),
		('Efecto', 13, 'Bad Bunny', 'BB', 13, 28, 4, '22024056', 'Un Verano Sin Ti', 'Latin', 'Rimas Entertainment', 20220512),
		('Matilda', 14, 'Harry Styles', 'HS', 5, 5, 2, '19806676', 'Harry s House', 'Pop', 'Columbia', 20220526),
		('STAY', 15, 'The Kid LAROI', 'TKL', 1, 23, 47, '19313990','F*CK LOVE (SAVAGE)', 'Pop', 'Columbia', 20210715),
		('Woman', 34, 'Doja Cat', 'DC', 6, 39, 46, 13699953,'Planet Her', 'R&B', 'RCA / Kemosabe', 20210715),
		('N95', 35, 'Kendrick Lamar', 'KL', 3, 24, 3, 13605443, 'Mr. Morale & The Big Steppers', 'Hip Hop',	'PGLang / TDE / Aftermath / Interscope', 20210715),
		('Shivers', 37, 'Ed Sheeran', 'ES', 4, 43, 38, 13391256, '=', 'Pop', 'Atlantic Records', 20210715),
		('Watermelon Sugar', 56, 'Harry Styles', 'HS', 4, 50, 133, '11428190','Fine Line', 'Pop', 'Columbia', 20191121),
		('Yonaguni', 102, 'Bad Bunny', 'BB', 3, 102, 52, '7968047','EL ÚLTIMO TOUR DEL MUNDO', 'Latin', 'Rimas Entertainment', 20210610);
	
    
-- Create a Weekly Top Albums Global table    [TABLE 3]
CREATE TABLE WeeklyTopAlbumsGlobal(
	`Album` VARCHAR(100) NOT NULL,
	`Ranking` INTEGER NOT NULL,
	`Artist` VARCHAR(100) NOT NULL,
	`Artist_ID` VARCHAR(100) NOT NULL,
	`Genre` VARCHAR(100) NOT NULL,
	`Peak` INTEGER NOT NULL,
	`Previous` INTEGER NOT NULL,
	`Streak` INTEGER NOT NULL,
     PRIMARY KEY (`Album`));

-- inserting data
INSERT INTO WeeklyTopAlbumsGlobal (Album,Ranking, Artist, Artist_ID, Genre,Peak,Previous,Streak)
VALUES 	('Un Verano Sin Ti', 1, 'Bad Bunny', 'BB', 'Latin', 1, 2, 4),
		('Harry s House', 2, 'Harry Styles', 'HS', 'Pop', 1, 1, 2),
		('Mr. Morale & The Big Steppers', 3, 'Kendrick Lamar', 'KL', 'Hip Hop', 2, 3, 3),
		('=', 5, 'Ed Sheeran', 'ES', 'Pop', 1, 5, 31),
		('Planet Her', 6, 'Doja Cat', 'DC', 'R&B', 1, 6, 49),
		('Come Home The Kids Miss You', 8, 'Jack Harlow', 'JH', 'Hip Hop', 2, 7, 4),
		('Fine Line', 10, 'Harry Styles', 'HS', 'Pop', 4, 8, 86),
		('F*CK LOVE (SAVAGE)', 14, 'The Kid LAROI', 'TKL', 'Pop', 2, 16, 46),
		('EL ÚLTIMO TOUR DEL MUNDO', 32, 'Bad Bunny', 'BB', 'Latin', 1, 26, 79);

-- Create a Weekly Top Genre Global table    [TABLE 4]
CREATE TABLE WeeklyTopGenreGlobal(
	`Genre` VARCHAR(100) NOT NULL,
	`Total_Artists_Ranked` INTEGER NOT NULL,
	`Total_Tracks_Ranked` INTEGER NOT NULL,
	`Total_Albums_Ranked` INTEGER NOT NULL,
     PRIMARY KEY (`Genre`));
     
-- inserting data
INSERT INTO WeeklyTopGenreGlobal (Genre,Total_Artists_Ranked,Total_Tracks_Ranked,Total_Albums_Ranked)
VALUES 	('Latin', 1, 7, 2),
		('Pop', 3, 6, 4),
		('Hip Hop', 2, 2, 2),
		('R&B', 1, 1, 1);

-- Create a Top Labels Global table    [TABLE 5]
CREATE TABLE TopLabelsGlobal(
	`Label` VARCHAR(100) NOT NULL,
	`Artist` VARCHAR(100) NOT NULL,
	`Total_Artists_Ranked` INTEGER NOT NULL,
	`Total_Tracks_Ranked` INTEGER NOT NULL,
	`Total_Albums_Ranked` INTEGER NOT NULL,
     PRIMARY KEY (`Label`));

    
-- inserting data
INSERT INTO TopLabelsGlobal (Label,Artist,Total_Artists_Ranked,Total_Tracks_Ranked,Total_Albums_Ranked)
VALUES 	('Rimas Entertainment', 'Bad Bunny', 1, 7, 2),
		('Columbia', 'Harry Styles, The Kid LAROI', 2, 5, 3),
		('Atlantic Records', 'Ed Sheeran, Jack Harlow', 2, 2, 2),
		('PGLang / TDE / Aftermath / Interscope', 'Kendrick Lamar', 1, 1, 1),
		('RCA / Kemosabe', 'Doja Cat', 1, 1, 1);
        
-- 2. Set Primary and Foreign Key constraints to create relations between the tables
-- altering tables to set Foreign Key constraints

-- altering the WeeklyTopSongsGlobal table
ALTER TABLE `music`.`weeklytopsongsglobal` 
ADD INDEX `Artist_idx` (`Artist` ASC) VISIBLE,
ADD INDEX `Album_idx` (`Album` ASC) VISIBLE,
ADD INDEX `Label_idx` (`Label` ASC) VISIBLE;

ALTER TABLE `music`.`weeklytopsongsglobal` ADD CONSTRAINT `Artist` 
  FOREIGN KEY (`Artist`) REFERENCES `music`.`weeklytopartistsglobal` (`Artist`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `music`.`weeklytopsongsglobal`ADD CONSTRAINT `Album`
  FOREIGN KEY (`Album`) REFERENCES `music`.`weeklytopalbumsglobal` (`Album`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `music`.`weeklytopsongsglobal`ADD CONSTRAINT `Label`
  FOREIGN KEY (`Label`) REFERENCES `music`.`toplabelsglobal` (`Label`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
-- altering the WeeklyTopArtistssGlobal table
ALTER TABLE `music`.`weeklytopartistsglobal` 
ADD INDEX `Genre_idx` (`Genre` ASC) VISIBLE;

ALTER TABLE `music`.`weeklytopartistsglobal` ADD CONSTRAINT `Genre` 
  FOREIGN KEY (`Genre`) REFERENCES `music`.`weeklytopgenreglobal` (`Genre`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- altering the WeeklyTopAlbumsGlobal table
ALTER TABLE `music`.`weeklytopalbumsglobal` 
ADD INDEX `Artist_idx` (`Artist` ASC) VISIBLE,
ADD INDEX `Genre_idx` (`Genre` ASC) VISIBLE;

ALTER TABLE `music`.`weeklytopalbumsglobal` ADD CONSTRAINT `Album.Artist` 
  FOREIGN KEY (`Artist`) REFERENCES `music`.`weeklytopartistsglobal` (`Artist`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `music`.`weeklytopalbumsglobal` ADD CONSTRAINT `Album.Genre`
  FOREIGN KEY (`Genre`) REFERENCES `music`.`weeklytopgenreglobal` (`Genre`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- use the music DB
USE MUSIC;

-- 3. Use any type of joins to create a view that combines multiple tables in a logical way
-- using INNER JOIN to create view "vw_recording"

CREATE VIEW `vw_recording` AS 
SELECT CONCAT(weeklytopartistsglobal.Artist, " recorded ", weeklytopalbumsglobal.Album) AS recording
FROM `music`.`weeklytopartistsglobal` INNER JOIN `music`.`weeklytopalbumsglobal` USING (Artist)
ORDER BY recording;

-- select all from this view
SELECT * FROM `vw_recording`;

-- using INNER JOIN to create view "vw_Tracks_Albums_Ranking"
CREATE VIEW `vw_Tracks_Albums_Ranking` AS 
SELECT 
`WeeklyTopAlbumsGlobal`.`Artist` AS `Artist`, 
`WeeklyTopAlbumsGlobal`.`Album` AS `Album`, 
`WeeklyTopAlbumsGlobal`.`Ranking` AS `Albums.Ranking`, 
`WeeklyTopSongsGlobal`.`Track` AS `Track`, 
`WeeklyTopSongsGlobal`.`Ranking` AS `Songs.Ranking` 

FROM `music`.`WeeklyTopAlbumsGlobal` INNER JOIN `music`.`WeeklyTopSongsGlobal` USING (Artist)
WHERE `WeeklyTopSongsGlobal`.`Genre` = ('Hip Hop') OR `WeeklyTopSongsGlobal`.`Genre` = ('R&B')
ORDER BY Streams DESC;

-- select all from this view
SELECT * FROM `vw_Tracks_Albums_Ranking`;

-- 4. Creating a STORED FUNCTION that can be applied to a query in the music DB
-- Example 1. Creating a FUNCTION that decides whether a track is eligible for the ‘number 1 song on Spotify charts’ recognition based on whether it has peaked on the charts at number 1

DELIMITER //
CREATE FUNCTION `peaked_at_number_1` (Peak INT)
RETURNS VARCHAR(20)
DETERMINISTIC 
BEGIN
	DECLARE track_status VARCHAR(20);
    IF Peak = 1 THEN SET track_status = 'YES';
	ELSEIF Peak <> 1 THEN SET track_status = 'NO';
    END IF;
    RETURN (track_status);
END//  
DELIMITER ;

-- use the function to determine which tracks are eligible for the ‘number 1 song on Spotify charts’ recognition
SELECT 
    Artist,
    Track,
    Peak,
    peaked_at_number_1 (Peak)
FROM
    WeeklyTopSongsGlobal
ORDER BY Peak;

-- Example 2. Creating a FUNCTION that decides whether a track is eligible for the ‘top 5 most-streamed songs on Spotify weekly charts’ recognition based on the number of streams

DELIMITER //
CREATE FUNCTION `top_5_most_streamed_songs` (Streams FLOAT)
RETURNS VARCHAR(20)
DETERMINISTIC 
BEGIN
	DECLARE track_status VARCHAR(20);
    IF Streams >  30000000 THEN SET track_status = 'YES';
	ELSEIF Streams  <  30000000  THEN SET track_status = 'NO';
    END IF;
    RETURN (track_status);
END//  
DELIMITER ;

-- use the function to determine which tracks are eligible for the ‘top 5 most-streamed songs on Spotify weekly charts’ recognition
SELECT 
    Artist,
    Track,
    Streams,
    Ranking,
    top_5_most_streamed_songs (Streams)
FROM
    WeeklyTopSongsGlobal
ORDER BY Streams DESC;


-- 5. Example query with a subquery to demonstrate how to extract data from the DB for analysis

SELECT 
    Track, Artist
FROM
    WeeklyTopSongsGlobal
WHERE
    Album IN (SELECT 
				Album
				FROM
				WeeklyTopAlbumsGlobal 
				WHERE
				Album LIKE '%a%');

-- 6. Create a DB diagram where all table relations are shown
-- The DB Diagram has been saved as a mwb file and attached to the project zip folder

-- II).Advanced Options

-- 1. Create a STORED PROCEDURE and demonstrate how it runs

-- Example 1: Creating a stored procedure to calculate the total Streams of all songs. We have used the SUM aggregate function to calculate the total Streams.

DELIMITER //
CREATE PROCEDURE fetch_data_out(OUT totStreams FLOAT)
BEGIN
SELECT SUM(Streams) FROM WeeklyTopSongsGlobal;
END
//
DELIMITER ;

-- The stored procedure is created successfully. Let’s test it.
-- Calling the procedure. 
CALL fetch_data_out(@Streams);


-- Example 2: creating the 'fetch_track_out' procedure to retreive Tracks by Artist
DELIMITER // 
CREATE PROCEDURE fetch_track_out_by_artist(OUT totTrack VARCHAR(100))
BEGIN
SELECT Track FROM WeeklyTopSongsGlobal
WHERE Artist = 'Harry Styles';
END
//
DELIMITER ;

-- The stored procedure is created successfully. Let’s test it.
-- Calling the procedure.
CALL fetch_track_out_by_artist(@Track);


-- Example 3: creating the 'fetch_track_outby_genre' procedure to retreive Tracks by Genre
DELIMITER // 
CREATE PROCEDURE fetch_track_out_by_genre(OUT totTrack VARCHAR(100))
BEGIN
SELECT Track FROM WeeklyTopSongsGlobal
WHERE Genre = 'Latin';
END
//
DELIMITER ;

-- The stored procedure is created successfully. Let’s test it.
-- Calling the procedure. 
CALL fetch_track_out_by_genre(@Track);


-- 2. Prepare an example query with GROUP BY and HAVING to demonstrate how to extract data from your DB for analysis

-- Select the Track, Artist, Ranking, Peak, where the Genre is not "Latin" and where the Track has peaked at number 1.
SELECT Track, Artist, Ranking, Peak
FROM WeeklyTopSongsGlobal
WHERE Genre != "Latin"
GROUP BY "Ranking"
HAVING Peak = "1";

-- Which artists did not release a song during 2022?
SELECT DISTINCT Artist
FROM WeeklyTopSongsGlobal
GROUP BY FirstEntryDate
HAVING FirstEntryDate != 2022;