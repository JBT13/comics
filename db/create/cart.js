import Database from 'better-sqlite3';
// read.js
export const createCart = (dbFile, idUser, idComic) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO cart(userId, comicId) VALUES (?, ?)');
  stmt.run(idUser, idComic);
  db.close();
  return true;
}