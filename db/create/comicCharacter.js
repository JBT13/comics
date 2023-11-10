import Database from 'better-sqlite3';

export const createComicCharacter = (dbFile, comicId, characterId) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comicCharacter(comicId, characterId) VALUES (?, ?)');
  stmt.run(comicId, characterId);
  db.close();
  return true;
}