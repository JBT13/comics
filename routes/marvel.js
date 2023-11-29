import express from 'express';
import path from "path";
import { fileURLToPath } from "url";
import { selectUsers } from "../db/read/users.js";
import { readComics } from "../db/read/comics.js";

const router = express.Router();

const dbFileComic = path.join(fileURLToPath(new URL(".", import.meta.url)), "../db/comics.db");

// get index page
// get index page
router.get('/', (req, res) => {
	const users = selectUsers(dbFileComic);
	const title = 'Home';
	const comics = readComics(dbFileComic, 1);
	let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}
	res.render('marvel', { title, users, user, isLoggedIn,comics });
  });

router.post('/', (req, res) => {
	const users = selectUsers(dbFileComic);
	const title = 'Home';
	const comics = readComics(dbFileComic, 1);
	console.log(comics);
	let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}
	res.render('marvel', {	title, users, user, isLoggedIn,comics})

})
  
  export { router } ;
