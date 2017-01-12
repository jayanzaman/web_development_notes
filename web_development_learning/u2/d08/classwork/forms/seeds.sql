DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  email VARCHAR(50),
  password VARCHAR(50)
);

INSERT INTO users (name, email, password) VALUES ('Jared', 'jared.murphy@ga.co', 'rush4life!');
INSERT INTO users (name, email, password) VALUES ('Bryan', 'bryan.mytko@ga.co', 'notfromjapan');
INSERT INTO users (name, email, password) VALUES ('Tims', 'tims.gardner@ga.co', 'clojure>all');
INSERT INTO users (name, email, password) VALUES ('John', 'bell@ga.co', 'semicolons?');
INSERT INTO users (name, email, password) VALUES ('Heidi', 'heidi.powers@ga.co', 'blonesRawesome');
