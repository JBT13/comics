import Database from 'better-sqlite3';

export const createComicGenre = (dbFile, comicId, genreId) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comicGenre(comicId, genreId) VALUES (?, ?)');
  stmt.run(comicId, genreId);
  db.close();
  return true;
}