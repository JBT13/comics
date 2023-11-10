import Database from 'better-sqlite3';

export const createComicPeopleRoleMangaka = (dbFile, comicId, peopleId, roleId ) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comicPeopleRole(comicId, peopleId, roleId) VALUES (?,?,?)');
  stmt.run(comicId, peopleId, roleId);
  db.close();
  return true;
}