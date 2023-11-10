import Database from 'better-sqlite3';

export function readPublishers(dbFile) {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM publishers');
  const publishers = stmt.all();

  db.close();
  return publishers;
}