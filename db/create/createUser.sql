CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    lastLogin TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

