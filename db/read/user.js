import Database from 'better-sqlite3';

export const readUser = (dbFile, email) => {
	const db = new Database(dbFile);
	const stmt = db.prepare('SELECT * FROM users WHERE email = ?');
	const user = stmt.get(email);
	db.close();
	return user;
};