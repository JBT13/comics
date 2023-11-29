import express from 'express';
import path from "path";
import { fileURLToPath } from "url";
import { readUser } from "../db/read/user.js";
import { readCartCount } from '../db/read/cartCount.js';
import { readCart } from '../db/read/cart.js';

const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL(".", import.meta.url)), "../db/comics.db");

router.get('/', (req, res) => {
	const users = readUser(dbFile);
	const title = 'cart';
	const cart = readCart(dbFile, req.session.user.id)
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

	res.render('cart', { title, users, user, isLoggedIn, cartCount, cart });
  });

  export { router } ;
