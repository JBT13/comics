import Database from 'better-sqlite3';

export function readCharacters(dbFile) {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM characters');
  const characters = stmt.all();

  db.close();
  return characters;
}