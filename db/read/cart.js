import Database from 'better-sqlite3';

export function readCart(dbFile, userId) {
  const db = new Database(dbFile);
  const stmt = db.prepare(`SELECT comics.title AS "title", comics.price AS "price", comics.image AS "image" FROM comics INNER JOIN cart ON comics.id = cart.comicId\
                        \ INNER JOIN users ON cart.userId = users.id\
                        \ WHERE users.id = ?`);
  const cart = stmt.all(userId);

  db.close();
  return cart;
}