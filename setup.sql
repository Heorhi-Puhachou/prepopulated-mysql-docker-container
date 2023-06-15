CREATE DATABASE myexample;

USE myexample;

CREATE TABLE game
(
    game_id      int AUTO_INCREMENT primary key NOT NULL,
    publisher_id int NOT NULL,
    name         varchar(255),
    release_date DATE
);

INSERT INTO game (name,
                  publisher_id,
                  release_date)
VALUES ('Doom',
        1,
        '20190601'),
       ('GTA',
        2,
        '20191001'),
       ('Legend of Zelda',
        2,
        '20191201');