import Database from 'better-sqlite3';

export const selectUsers = ( dbFile)=> {
	const db = new Database(dbFile);
	const stmt = db.prepare('SELECT id, firstName, lastName, email, password FROM users');
	const users = stmt.all();
	db.close();
	return users;
};