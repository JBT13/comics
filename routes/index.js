import express from 'express';
import path from "path";
import { fileURLToPath } from "url";
import { selectUsers } from "../db/read/users.js";
import { readCartCount } from '../db/read/cartCount.js';


const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL(".", import.meta.url)), "../db/comics.db");

// get index page
// get index page
router.get('/', (req, res) => {
	const users = selectUsers(dbFile);
	const title = 'Home';
	let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}
	let cartCount = readCartCount(dbFile, user.id);
	if (!cartCount) {
	  cartCount = {};
	  cartCount.count = 0;
	}

	res.render('index', { title, users, user, isLoggedIn, cartCount });
  });
  
  export { router } ;
