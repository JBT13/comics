import Database from 'better-sqlite3';

// delete.js
export const deleteFromCart = (dbFile, userId, comicId) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('DELETE FROM cart WHERE \
                          id = ( SELECT id FROM cart \
                          WHERE userId = ? AND comicId = ? LIMIT 1)');
  stmt.run(userId, comicId);
  db.close();
  return true;
}