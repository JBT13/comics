CREATE TABLE publishers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE 
);

CREATE TABLE comics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL UNIQUE,
  ISBN VARCHAR(255),
  image VARCHAR(255),
  summary VARCHAR(255),
  pageCount INTEGER NOT NULL,
  publicationDate DATE NOT NULL,
  issueNumber INTEGER NOT NULL,
  price INTEGER NOT NULL
);

CREATE TABLE genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  description VARCHAR(255)
);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  description VARCHAR(255)
);

CREATE TABLE people (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  image VARCHAR(255),
  birth DATE
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  heroName VARCHAR(255),
  firstName VARCHAR(255),
  lastName VARCHAR(255),
  image VARCHAR(255),
  description TEXT
);

CREATE TABLE series (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT
);

CREATE TABLE comicPublisher (
  comicId INTEGER,
  publisherId INTEGER,
  PRIMARY KEY (comicId, publisherId),
  FOREIGN KEY (comicId) REFERENCES comics(id),
  FOREIGN KEY (publisherId) REFERENCES publishers(id)
);

CREATE TABLE comicCountry (
  comicId INTEGER,
  countryId INTEGER,
  PRIMARY KEY (comicId, countryId),
  FOREIGN KEY (comicId) REFERENCES comics(id),
  FOREIGN KEY (countryId) REFERENCES countries(id)
);

CREATE TABLE comicGenre (
  comicId INTEGER,
  genreId INTEGER,
  PRIMARY KEY (comicId,genreId),
  FOREIGN KEY (comicId) REFERENCES comics(id),
  FOREIGN KEY (genreId) REFERENCES genres(id)
);

CREATE TABLE comicSerie (
  comicId INTEGER,
  serieId INTEGER,
  PRIMARY KEY (comicId, serieId),
  FOREIGN KEY (comicId) REFERENCES comics(id),
  FOREIGN KEY (serieId) REFERENCES series(id)
);

CREATE TABLE comicCharacter (
  comicId INTEGER,
  characterId INTEGER,
  PRIMARY KEY (comicId, characterId),
  FOREIGN KEY (comicId) REFERENCES comics(id),
  FOREIGN KEY (characterId) REFERENCES characters(id)
);

CREATE TABLE comicPeopleRole (
  comicId INTEGER,
  roleId INTEGER,
  peopleId INTEGER,
  PRIMARY KEY (comicId, roleId, peopleId),
  FOREIGN KEY (comicId) REFERENCES comics(id),
  FOREIGN KEY (peopleId) REFERENCES people(id),
  FOREIGN KEY (roleId) REFERENCES roles(id)
);

CREATE TABLE peopleCountry (
  peopleId INTEGER,
  countryId INTEGER,
  PRIMARY KEY (peopleId,countryId)
  FOREIGN KEY (peopleId) REFERENCES people(id),
  FOREIGN KEY (countryId) REFERENCES countries(id)
);

CREATE TABLE publisherCountry (
  publisherId INTEGER,
  countryId INTEGER,
  PRIMARY KEY (publisherId, countryId),
  FOREIGN KEY (countryId) REFERENCES countries(id),
  FOREIGN KEY (publisherId) REFERENCES publishers(publisherId)
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    lastLogin TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cart (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  userId INTEGER,
  comicId INTEGER,
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (comicId) REFERENCES comics(id)
);

