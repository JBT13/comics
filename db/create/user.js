import Database from 'better-sqlite3';

export const createUsers = (dbFile, email, firstName, lastName, password) => {
	const db = new Database(dbFile);
	const stmt = db.prepare('INSERT INTO users (email, firstName, lastName, password) VALUES (?, ?, ?, ?)')
	stmt.run(email, firstName, lastName, password);
	db.close();
};