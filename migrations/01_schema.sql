-- CREATE DATABASE lightbnb;
DROP TABLE IF EXISTs users CASCADE;
DROP TABLE IF EXISTs properties CASCADE;
DROP TABLE IF EXISTs reservations CASCADE;
DROP TABLE IF EXISTs property_reviews CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  PASSWPRD VARCHAR(255)

);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER NOT NULL REFERENCES users(id),
  title VARCHAR(255),
  description TEXT,
  thumbnal_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  cost_per_night INTEGER,
  parking_spaces INTEGER,
  number_of_bathrooms INTEGER,
  number_of_bedrooms INTEGER,
  country VARCHAR(255),
  street VARCHAR(255),
  city VARCHAR(255),
  province VARCHAR(255),
  postant_code VARCHAR(255),
  active BOOLEAN

);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  property_id INTEGER NOT NULL REFERENCES properties(id),
  guest_id INTEGER NOT NULL REFERENCES users(id)

);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY,  
  guest_id INTEGER NOT NULL REFERENCES users(id),
  property_id INTEGER NOT NULL REFERENCES properties(id),
  reservation_id INTEGER NOT NULL REFERENCES reservations(id),
  rating SMALLINT,
  message TEXT

);