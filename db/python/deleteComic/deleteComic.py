def dbReadComic(conn, id):
  """
  Find book by id
  """
  cur = conn.cursor()
  cur.execute("SELECT * FROM comics WHERE id = ?", (id,))

  row = cur.fetchone()
  if row is None:
    raise ValueError("Comic not found")
  
  return row

def dbDeleteComic(conn, id):
  sql = 'DELETE FROM comics WHERE id=?'
  cur = conn.cursor()
  try:
    cur.execute(sql, (id,))
    conn.commit()
  except:
    print("Deletion failed")
    return False
  
def deleteComic(conn):
    """
    Delete comic
    """
    id = input('Enter comic id to be deleted: ')
    try:
        id = int(id)
    except ValueError:
        print("Invalid id")
        return False
    
    comic = dbReadComic(conn, id)
    print(f"Are you sure you want to delete comic {comic[1]} {comic[2]} (id: {comic[0]})?")
    confirmation = input("Type 'yes' to confirm: ")
    if confirmation.lower() != "yes":
        print("Deletion cancelled")
        return False
    dbDeleteComic(conn, id)
    print("Comic deleted successfully")
    return True