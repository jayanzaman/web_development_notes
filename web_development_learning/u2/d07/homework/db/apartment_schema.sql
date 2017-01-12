-- Put apartment schema here
DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS doormen;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS tenants;

CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  address VARCHAR(250),
  num_floors INTEGER
);
CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  experience INTEGER,
  shift VARCHAR(10),
  building_id INTEGER
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor INTEGER,
  name VARCHAR(5),
  price INTEGER,
  sqft INTEGER,
  bedrooms INTEGER,
  bathrooms INTEGER,
  building_id INTEGER
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INTEGER,
  gender VARCHAR(10),
  apartment_id INTEGER
);
