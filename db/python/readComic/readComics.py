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




def dbReadComics(conn):
    """
    Query all rows in the books table
    """
    cur = conn.cursor()
    cur.execute("SELECT * FROM comics ORDER BY title")

    rows = cur.fetchall()
    comics = []
    for row in rows:
        comic = {
            'title': row[1],
            'ISBN': row[2],
            'image': row[3],
            'summary': row[4],
            'pageCount': row[5],
            'publicationDate': row[6],
            'issueNumber': row[7],
            'price': row[8],
        }
        comics.append(comic)

    return comics




def readComics(conn):
    comics = dbReadComics(conn)
    for comic in comics:
        print(f"Title : {comic['title']}, "
              f"ISBN: {comic['ISBN']}, "
              f"image: {comic['image']},"
              f"summary: {comic['summary']},"
              f"pageCount: {comic['pageCount']},"
              f"publicationDate: {comic['publicationDate']},"
              f"issueNumber: {comic['issueNumber']},"
              f"price: {comic['price']},")
        print("")