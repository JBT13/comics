import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { deleteFromCart } from '../db/delete/cart.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get delete page
router.get('/', (req, res) => {
  res.redirect('/');
});

// post delete page
router.post('/', (req, res) => {
  const user = req.session.user;
  deleteFromCart(dbFile, user, req.body.comic);
  res.redirect('/movies');
});

export { router } ;