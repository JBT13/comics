import express from 'express';
import bcrypt from 'bcrypt';
import path from 'path';
import { fileURLToPath } from 'url';
import { createUsers } from '../db/create/user.js';

const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/users.db');

// get register page
router.get('/', (req, res) => {
	const title = 'Register';
	res.render('register', { title });
});

router.post('/', (req, res) => {
	const passwordHash = bcrypt.hashSync(req.body.password, 10);
	createUsers(dbFile, req.body.email, req.body.firstName,req.body.lastName, passwordHash);

	res.redirect('/');
});

export {router};