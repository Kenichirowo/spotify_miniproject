DROP SCHEMA IF EXISTS spotify;
CREATE SCHEMA spotify;
USE spotify;

CREATE TABLE `genres`(
    `genre_id` VARCHAR(255) NOT NULL,
    `song_count` BIGINT NOT NULL,
    `artist_count` BIGINT NOT NULL,
    `explicit_count` BIGINT NOT NULL,
    `max_popularity` BIGINT NOT NULL,
    `min_popularity` BIGINT NOT NULL,
    `average_popularity` FLOAT(53) NOT NULL,
    `duration_ms_mean` FLOAT(53) NOT NULL,
    `danceability_mean` FLOAT(53) NOT NULL,
    `energy_mean` FLOAT(53) NOT NULL,
    `loudness_mean` FLOAT(53) NOT NULL,
    `speechiness_mean` FLOAT(53) NOT NULL,
    `accousticness_mean` FLOAT(53) NOT NULL,
    `instrumentalness_mean` FLOAT(53) NOT NULL,
    `liveness_mean` FLOAT(53) NOT NULL,
    `valence_mean` FLOAT(53) NOT NULL,
    `tempo_mean` FLOAT(53) NOT NULL,
    PRIMARY KEY(`genre_id`)
);
CREATE TABLE `songs`(
    `song_id` BIGINT NOT NULL,
    `artist_name` VARCHAR(255) NOT NULL,
    `genre_id` VARCHAR(255) NOT NULL,
    `duration_ms` BIGINT NOT NULL,
    `explicit` VARCHAR(255) NOT NULL,
    `year` BIGINT NOT NULL,
    `popularity` BIGINT NOT NULL,
    `danceability` FLOAT(53) NOT NULL,
    `energy` FLOAT(53) NOT NULL,
    `loudness` FLOAT(53) NOT NULL,
    `speechiness` FLOAT(53) NOT NULL,
    `accousticness` FLOAT(53) NOT NULL,
    `instrumentalness` FLOAT(53) NOT NULL,
    `liveness` FLOAT(53) NOT NULL,
    `valence` FLOAT(53) NOT NULL,
    `tempo` FLOAT(53) NOT NULL,
    PRIMARY KEY(`song_id`)
);
CREATE TABLE `artists`(
    `artist_id` BIGINT NOT NULL,
    `artist_name` VARCHAR(255) NOT NULL,
    `song_count` BIGINT NOT NULL,
    `most_common_genre` VARCHAR(255) NOT NULL,
    `max_popularity` BIGINT NOT NULL,
    `min_popularity` BIGINT NOT NULL,
    `average_popularity` FLOAT(53) NOT NULL,
    `first_time_topsong` BIGINT NOT NULL,
    PRIMARY KEY(`artist_id`)
);
CREATE TABLE `song_ids`(
    `song_id` BIGINT NOT NULL,
    `song_name` VARCHAR(255) NOT NULL,
     PRIMARY KEY(`song_id`)
);
ALTER TABLE `songs`
    ADD CONSTRAINT `songs_genre_id_foreign` FOREIGN KEY(`genre_id`) REFERENCES `genres`(`genre_id`);
ALTER TABLE `songs`
    ADD CONSTRAINT `songs_artist_id_foreign` FOREIGN KEY(`artist_id`) REFERENCES `artists`(`artist_id`);
ALTER TABLE `songs`
    ADD CONSTRAINT `song_ids_id_foreign` FOREIGN KEY(`song_id`) REFERENCES `song_ids`(`song_id`);    