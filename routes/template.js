import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { createCart } from '../db/create/cart.js';
import { readCartCount } from '../db/read/cartCount.js';
import { readComic } from '../db/read/comicById.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();


router.get('/', (req, res) => {
  const comic = readComic(dbFile, req.query.id);
  const title = 'template';
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
  res.render('template', { title, comic, cartCount, user });
});


router.post('/', (req, res) => {
  const comic = req.body.comic;
  let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
    createCart(dbFile, user.id, comic);
    res.redirect('/');
	} else {
    res.redirect('/login')
  }

});

export { router } ;