CREATE TABLE IF NOT EXISTS players (
    id   INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS matches (
    id      INTEGER PRIMARY KEY AUTO_INCREMENT,
    player1 INTEGER REFERENCES players (id),
    player2 INTEGER REFERENCES players (id),
    winner  INTEGER REFERENCES players (id)
);