import Database from 'better-sqlite3';

export function readCountries(dbFile) {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM countries');
  const countries = stmt.all();

  db.close();
  return countries;
}