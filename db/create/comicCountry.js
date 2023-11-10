import Database from 'better-sqlite3';

export const createComicCountries = (dbFile, comicId, countryId) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comicCountry(comicId, countryId) VALUES (?, ?)');
  stmt.run(comicId, countryId);
  db.close();
  return true;
}