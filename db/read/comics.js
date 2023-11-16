import Database from 'better-sqlite3';

export function readComics(dbFile, id) {
  const db = new Database(dbFile);
  const stmt = db.prepare(`SELECT * FROM comics INNER JOIN comicPublisher ON comics.id = comicPublisher.comicId\
                            \ INNER JOIN publishers ON comicPublisher.publisherId = publishers.id\
                            \ WHERE publishers.id = ?`);
  const comics = stmt.all(id);

  db.close();
  return comics;
}