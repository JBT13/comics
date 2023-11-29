def dbUpdateComic(conn, comic):
    """
    update comic's title, page number, DDC
    """
    sql = ''' UPDATE comics
              SET title = ? ,
                  ISBN = ?,
                  image = ?,
                  summary = ?,
                  pageCount = ? ,
                  publicationDate = ?,
                  issueNumber = ?,
                  price = ?
              WHERE id = ?'''
    cur = conn.cursor()
    cur.execute(sql, comic)
    conn.commit()
    return True

def dbReadComic(conn, id):
  """
  
  """
  cur = conn.cursor()
  cur.execute("SELECT * FROM comics WHERE id = ?", (id,))
  return cur.fetchone()


def updateComic(conn):
    """
    Update comic
    """
    id = input('Enter comic id to be update: ')
    try:
        id = int(id)
    except ValueError:
        print("Invalid id")
        return False
    
    comic = dbReadComic(conn, id)

    title = input('Enter your new comic title: ')
    ISBN = input('Enter ISBN of your new comic: ')
    image = input('Enter the new image: ')
    summary = input('Enter the new summary: ')
    pageCount = input('Enter how many new pages: ')
    publicationDate = input('Enter the new publication date: ')
    issueNumber = input('Enter the new issue number: ')
    price = input('Enter the new price: ')

    # add the id value to the new tuple
    newComic = (title, ISBN, image, summary, pageCount, publicationDate, issueNumber, price, id)
    # pass the newComic variable to the dbUpdateComic function
    dbUpdateComic(conn, newComic)
    print("Comic update successfully")
    return True
