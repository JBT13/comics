import Database from 'better-sqlite3';

export const createComicSerie = (dbFile, comicId, serieId) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comicSerie(comicId, serieId) VALUES (?, ?)');
  stmt.run(comicId, serieId);
  db.close();
  return true;
}