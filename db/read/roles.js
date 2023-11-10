import Database from 'better-sqlite3';

export function readRoles(dbFile) {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM roles');
  const roles = stmt.all();

  db.close();
  return roles;
}