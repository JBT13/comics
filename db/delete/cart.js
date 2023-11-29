import Database from 'better-sqlite3';

// delete.js
export const deleteFromCart = (dbFile, idUser, idMovie) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('DELETE FROM cart WHERE \
                          id = ( SELECT id FROM cart \
                          WHERE userId = ? AND movieId = ? LIMIT 1)');
  stmt.run(idUser, idMovie);
  db.close();
  return true;
}