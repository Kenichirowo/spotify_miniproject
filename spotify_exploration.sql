USE spotify;

SELECT * FROM genres;
SELECT * FROM artists;
SELECT * FROM songs;
SELECT count(song_id) as total_songs FROM songs;

SELECT year, COUNT(song_id) FROM songs
GROUP BY year
ORDER BY year;

-- songs table exploration
SELECT * FROM songs
WHERE popularity > 80;

-- HYPOTHESIS 1: Danceability and Energy positively impact Song's Popularity

-- Average danceabiliy for all songs:
SELECT ROUND(AVG(danceability),2) FROM songs; -- 0.67
SELECT ROUND(MAX(danceability),2) FROM songs; -- Max danceability = 0.98
SELECT ROUND(MIN(danceability),2) FROM songs; -- Min danceability = 0.18

-- Average danceability for the songs with popularity higher than 80:
SELECT ROUND(AVG(danceability),2) FROM songs
WHERE popularity > 80; -- 0.69

-- Average danceability for the songs with popularity between 50 and 60:
SELECT ROUND(AVG(danceability),2) FROM songs
WHERE popularity < 60; -- 0.67

-- Total songs on Database is 1626 (popularity higher than 50)
SELECT Count(song_id) FROM songs
WHERE danceability < 0.50; -- Only 198 songs with danceability lower than 0.50

SELECT Count(song_id) FROM songs
WHERE danceability > (SELECT ROUND(AVG(danceability),2) FROM songs); -- 852 songs have energy higher than average

-- danceability evolution through years:
SELECT year, ROUND(AVG(danceability),2) AS Average_danceability FROM songs
GROUP BY year
ORDER BY year; -- danceability is increasing

-- now check the same for the songs with popularity higher than 80
SELECT year, ROUND(AVG(danceability),2) AS Average_danceability FROM songs
WHERE popularity > 80
GROUP BY year
ORDER BY year;

-- ------------------------------------------------
-- Average energy for all songs:
SELECT ROUND(AVG(energy),2) FROM songs; -- 0.72
SELECT ROUND(MAX(energy),2) FROM songs; -- Max energy = 1
SELECT ROUND(MIN(energy),2) FROM songs; -- Min energy = 0.05

-- Average energy for the songs with popularity higher than 80:
SELECT ROUND(AVG(energy),2) FROM songs
WHERE popularity > 80; -- 0.67

-- Average energy for the songs with popularity between 50 and 60:
SELECT ROUND(AVG(energy),2) FROM songs
WHERE popularity < 60; -- 0.74

-- Total songs on Database is 946 (popularity higher than 50)
SELECT Count(song_id) FROM songs
WHERE energy < 0.60; -- Only 353 songs with energy lower than 0.60

SELECT Count(song_id) FROM songs
WHERE energy < 0.50; -- Only 141 songs with energy lower than 0.50

SELECT Count(song_id) FROM songs
WHERE energy > (SELECT ROUND(AVG(energy),2) FROM songs); -- 868 songs have energy higher than average

-- % songs with popularity higher than 50 has an energy higher than 0.60

-- --------------------------------------------------------------
-- Want to ad some info on the type of music, maybe nowadays music has lower danceability/energy:

SELECT year, COUNT(song_id) AS pop_song_count, (SELECT COUNT(song_id) FROM songs AS s2 WHERE s1.year = s2.year) AS total_song_count
FROM songs AS s1
WHERE genre_id = 'Pop'
GROUP BY year
ORDER BY year;

SELECT genre_id, COUNT(song_id) FROM songs
GROUP BY genre_id; -- Pop with 753 then Hip hop with 560 most popular by far

SELECT year, genre_id, COUNT(song_id) AS genre_song_count, (SELECT COUNT(song_id) FROM songs AS song_count WHERE anual_song_count.year = song_count.year) AS total_song_count
FROM songs AS anual_song_count
GROUP BY year, genre_id
ORDER BY year, genre_song_count DESC; -- Hip hop gaining popularity after 2010

-- Now let's compare energy and danceability between Pop and Hip Hop:
SELECT ROUND(AVG(energy),2) FROM songs
WHERE genre_id = 'Pop'; -- Pop average energy is 0.74
SELECT ROUND(AVG(danceability),2) FROM songs
WHERE genre_id = 'Pop'; -- Pop average danceability is 0.65

SELECT ROUND(AVG(energy),2) FROM songs
WHERE genre_id = 'Hip hop'; -- Pop average energy is 0.69
SELECT ROUND(AVG(danceability),2) FROM songs
WHERE genre_id = 'Hip hop'; -- Pop average energy is 0.72

-- --------------------------------------------------------------
-- HYPOTHESIS 2: Songs with xplicit content are more popular in recent years

SELECT year, COUNT(song_id) FROM songs
WHERE explicit = 'True'
GROUP BY year
ORDER BY year;

SELECT year, COUNT(s1.song_id) AS explicit_song_count, (SELECT COUNT(song_id) FROM songs AS s2 WHERE s1.year = s2.year) AS total_song_count
FROM songs AS s1
WHERE s1.explicit = 'True'
GROUP BY year
ORDER BY year;

WITH TotalSongsPerYear AS (
    SELECT 
        year, 
        COUNT(song_id) AS total_song_count
    FROM songs
    GROUP BY year
)

SELECT t.year,  ROUND(COUNT(s1.song_id) * 100.0 / t.total_song_count, 2) AS explicit_song_percentage
FROM songs AS s1
JOIN TotalSongsPerYear AS t 
ON s1.year = t.year
WHERE s1.explicit = 'True'
GROUP BY s1.year, t.total_song_count
ORDER BY s1.year; -- Table with the % of explicit songs

-- explicit songs reached its maximum at mid '00