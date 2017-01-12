DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS doormen;
DROP TABLE IF EXISTS buildings;

CREATE TABLE buildings(
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR NOT NULL,
  num_floors INTEGER NOT NULL
 );

CREATE TABLE doormen(
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  experience INTEGER NOT NULL,
  shift VARCHAR(10) NOT NULL,
  building_id INTEGER REFERENCES buildings(id) 
 );

CREATE TABLE apartments(
  id INTEGER PRIMARY KEY,
  floor INTEGER NOT NULL,
  name VARCHAR(50) NOT NULL,
  price INTEGER NOT NULL,
  sqft INTEGER NOT NULL,
  bedrooms INTEGER NOT NULL,
  bathrooms INTEGER NOT NULL,
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE tenants(
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  gender VARCHAR(7) NOT NULL,
  apartment_id INTEGER REFERENCES apartments(id)
);

