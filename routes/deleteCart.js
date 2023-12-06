import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { deleteFromCart } from '../db/delete/cart.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get delete page
router.get('/', (req, res) => {
  let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}
  res.render('/');
});

// post delete page
router.post('/', (req, res) => {
  let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
    deleteFromCart(dbFile, user.id, req.body.cart);
    res.redirect('/');
	}
});

export { router } ;