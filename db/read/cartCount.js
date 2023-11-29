import Database from 'better-sqlite3';

export function readCartCount(dbFile, userId) {
  const db = new Database(dbFile);

  const stmt = db.prepare('SELECT COUNT(*) AS "count" FROM cart WHERE userId = ? GROUP BY userId;');
  const cart = stmt.get(userId);

  db.close();

  return cart;
}