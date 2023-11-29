import express from 'express';
import bcrypt from 'bcrypt';
import path from 'path';
import { fileURLToPath } from 'url';
import { readUser } from '../db/read/user.js';

const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

// get login page
router.get('/', (req, res) => {
	const title = 'Login';
	const users = readUser(dbFile);
	res.render('login', {title: 'login', users});
});


router.post('/', (req, res) => {
	const user = readUser(dbFile, req.body.email);
	if (user) {

		const passwordMatch = bcrypt.compareSync(req.body.password, user.password);
		if (passwordMatch) {
			req.session.user = user;
			req.session.isLoggedIn = true;
			res.redirect('/');
			return;
		
	}	else {
			res.redirect('/');
	}

	
}});



export{ router } ;