import Database from 'better-sqlite3';

export function readGenres(dbFile) {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM genres');
  const genres = stmt.all();

  db.close();
  return genres;
}