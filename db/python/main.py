from createConnection.createConnection import createConnection
from createComic.createComic import createComic
from updateComic.updateComic import updateComic
from deleteComic.deleteComic import deleteComic
from readComic.readComics import readComics

def printMenu():
    print('////////////////////////////////////////////////')
    print('1. Read all comics')
    print('2. Create a new comic')
    print('3. Update a comic')
    print('4. Delete a comic')
    print('5. Exit')
    

def main():
    while True:
        printMenu()
        action = input('Enter your action: ')
        conn = createConnection('./db/comics.db')

        if action == '1':
            # read all users
            readComics(conn)
        elif action == '2':
            # create a new user
            createComic(conn)
        elif action == '3':
            # update a user
            updateComic(conn)
        elif action == '4':
            # delete a user
            deleteComic(conn)
        elif action == '5':
            # exit the program
            print('Exiting program...')
            exit()
        else:
            # invalid action choice
            print('Invalid action choice. Please try again.')
            continue
        
main()