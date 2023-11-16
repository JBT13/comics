import Database from 'better-sqlite3';

export function readMangaDc(dbFile, id) {
  const db = new Database(dbFile);
  const stmt = db.prepare(`SELECT * FROM comics INNER JOIN comicSerie ON comics.id = comicSerie.comicId\
                            \ INNER JOIN series ON comicSerie.serieId = series.id\
                            \ WHERE series.id = ?`);
  const mangaDc = stmt.all(id);

  db.close();
  return mangaDc;
}