import Database from 'better-sqlite3';

export function readSeries(dbFile) {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM series');
  const series = stmt.all();

  db.close();
  return series;
}