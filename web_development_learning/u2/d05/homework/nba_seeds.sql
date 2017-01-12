-- empty out DB
DROP TABLE IF EXISTS players;

-- add create table here
CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(50),
  age integer,
  team varchar(50),
  games integer,
  points integer
);


-- this needs to include YOUR PATH!! YOURS! NOT THE PATH LISTED BELOW!
COPY players
  (name, age, team, games, points)
FROM '/Users/jayanzaman/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework/nba_season_2011_2012.csv'
    DELIMITER ',' CSV;
