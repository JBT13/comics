def dbCreateComic(conn, comic):
  sql = '''INSERT INTO books(title, ISBN, image, summary, pageCount, publicationDate, issueNumber, price)
            VALUES(?,?,?,?,?,?,?,?)'''
  cur = conn.cursor()
  cur.execute(sql, comic)
  conn.commit()
  return True


def createComic(conn):
    """
    Create a new comic into the comics table
    """
    # create a new user
    title = input('Enter your comic title: ')
    ISBN = input('Enter ISBN of your comic: ')
    image = input('Enter the image: ')
    summary = input('Enter the summary: ')
    pageCount = input('Enter how many pages: ')
    publicationDate = input('Enter the publication date: ')
    issueNumber = input('Enter the issue number: ')
    price = input('Enter the price: ')


    comic = (title, ISBN, image, summary, pageCount, publicationDate, issueNumber, price)
    dbCreateComic(conn, comic)
    return True