import Database from 'better-sqlite3';

// read.js
export const createComic = (dbFile, title, ISBN, image, summary, pageCount, publicationDate, issueNumber, price) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comics (title,ISBN, image, summary, pageCount, publicationDate,issueNumber, price) VALUES (?,?,?,?,?,?,?,?)');
  const comic = stmt.run(title, ISBN, image, summary, pageCount, publicationDate, issueNumber, price);
  const lastId = comic.lastInsertRowid;
  db.close();
  return lastId;
}