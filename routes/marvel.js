import express from 'express';
import path from "path";
import { fileURLToPath } from "url";
import { selectUsers } from "../db/read/users.js";
import { readComics } from "../db/read/comics.js";

const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL(".", import.meta.url)), "../db/users.db");

// get index page
// get index page
router.get('/', (req, res) => {
	const users = selectUsers(dbFile);
	const title = 'Home';
	const comics = readComics(dbFile);
	const comic = req.body.comics;
	console.log(comic);
	let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}
	res.render('marvel', { title, users, user, isLoggedIn,comics, comic });
  });

router.post('/', (req, res) => {
	const users = selectUsers(dbFile);
	const title = 'Home';
	const comics = readComics(dbFile);
	const comic = req.body.comics;
	console.log(comic);
	let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}
	res.render('marvel', {	title, users, user, isLoggedIn,comics, comic})

})
  
  export { router } ;
