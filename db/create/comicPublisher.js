import Database from 'better-sqlite3';

export const createComicPublisher = (dbFile, comicId, publisherId) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comicPublisher(comicId, publisherId) VALUES (?, ?)');
  stmt.run(comicId, publisherId);
  db.close();
  return true;
}