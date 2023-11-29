import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { readGenres } from '../db/read/genres.js';
import { readCharacters } from '../db/read/characters.js';
import { readCountries } from '../db/read/countries.js';
import { readPeople } from '../db/read/people.js';
import { readRoles } from '../db/read/roles.js';
import { readSeries } from '../db/read/series.js';
import { readPublishers } from '../db/read/publisher.js';
import { createComic } from '../db/create/comics.js';
import { createComicGenre } from '../db/create/comicGenre.js';
import { createComicCharacter } from '../db/create/comicCharacter.js';
import { createComicCountries } from '../db/create/comicCountry.js';
import { createComicPublisher } from '../db/create/comicPublisher.js';
import { createComicPeopleRoleWriter } from '../db/create/roles/comicPeopleRoleWriter.js';
import { createComicPeopleRoleAssistantEditor } from '../db/create/roles/comicPeopleRoleAssistantEditor.js';
import { createComicPeopleRoleColorist } from '../db/create/roles/comicPeopleRoleColorist.js';
import { createComicPeopleRoleDesigner } from '../db/create/roles/comicPeopleRoleDesigner.js';
import { createComicPeopleRoleEditor } from '../db/create/roles/comicPeopleRoleEditor.js';
import { createComicPeopleRoleEditorialAssistant } from '../db/create/roles/comicPeopleRoleEditorialAssistant.js';
import { createComicPeopleRoleIllustrator } from '../db/create/roles/comicPeopleRoleIllustrator.js';
import { createComicPeopleRoleInker } from '../db/create/roles/comicPeopleRoleInker.js';
import { createComicPeopleRoleLetterer } from '../db/create/roles/comicPeopleRoleLetterer.js';
import { createComicPeopleRoleMangaka } from '../db/create/roles/comicPeopleRoleMangaka.js';
import { createComicPeopleRoleTypesetter } from '../db/create/roles/comicPeopleRoleTypesetter.js';
import { createComicSerie } from '../db/create/comicSerie.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get game page
router.get('/', (req, res) => {
  const title = 'createComic';
  const genres = readGenres(dbFile);
  const characters = readCharacters(dbFile);
  const people = readPeople(dbFile);
  const countries = readCountries(dbFile);
  const roles = readRoles(dbFile);
  const series = readSeries(dbFile);
  const publishers = readPublishers(dbFile);
  res.render('createComic', { series, roles, countries, people, characters, genres, publishers, title });
});

router.post('/', (req, res) => {
    const lastId = createComic(dbFile, req.body.title, req.body.ISBN, req.body.image, req.body.summary, req.body.pageCount, req.body.publicationDate, req.body.issueNumber, req.body.price );
    
    if (req.body.genres != null){
    const genres = req.body.genres;
    for (let i = 0; i < genres.length; i++) {
      createComicGenre(dbFile, lastId, genres[i]);
    }}

    if (req.body.characters != null){
    const characters = req.body.characters;
    for (let i = 0; i < characters.length; i++) {
      createComicCharacter(dbFile, lastId, characters[i]);
    }}

    if (req.body.countries != null){
    const countries = req.body.countries;
    for (let i = 0; i < countries.length; i++) {
      createComicCountries(dbFile, lastId, countries[i])
    }}

    if (req.body.series != null){
    const series = req.body.series;
    for (let i = 0; i < series.length; i++) {
      createComicSerie(dbFile, lastId, series[i])
    }}

    if (req.body.publishers != null){
    const publishers = req.body.publishers;
    for (let i = 0; i < publishers.length; i++) {
      createComicPublisher(dbFile, lastId, publishers[i])
    }}

    if (req.body.colorist != null){
    const colorist = req.body.colorist;
    for (let i = 0; i < colorist.length; i++) {
      createComicPeopleRoleColorist(dbFile, lastId, colorist, 5);
    }}

    if (req.body.writer != null){
    const writer = req.body.writer;
    for (let i = 0; i < writer.length; i++) {
      createComicPeopleRoleWriter(dbFile, lastId, writer, 9);
    }}

    if (req.body.assistantEditor != null){
    const assistantEditor = req.body.assistantEditor;
    for (let i = 0; i < assistantEditor.length; i++) {
      createComicPeopleRoleAssistantEditor(dbFile, lastId, assistantEditor, 4);
    }}

    if (req.body.designer != null){
    const designer = req.body.designer;
    for (let i = 0; i < designer.length; i++) {
      createComicPeopleRoleDesigner(dbFile, lastId, designer, 8);
    }}

    if (req.body.editor != null){
    const editor = req.body.editor;
    for (let i = 0; i < editor.length; i++) {
      createComicPeopleRoleEditor(dbFile, lastId, editor, 10);
    }}

    if (req.body.editorialAssistant != null){
    const editorialAssistant = req.body.editorialAssistant;
    for (let i = 0; i < editorialAssistant.length; i++) {
      createComicPeopleRoleEditorialAssistant(dbFile, lastId, editorialAssistant, 2);
    }}

    if (req.body.illustrator != null){
    const illustrator = req.body.illustrator;
    for (let i = 0; i < illustrator.length; i++) {
      createComicPeopleRoleIllustrator(dbFile, lastId, illustrator, 3);
    }}

    if (req.body.inker != null){
    const inker = req.body.inker;
    for (let i = 0; i < inker.length; i++) {
      createComicPeopleRoleInker(dbFile, lastId, inker, 6);
    }}

    if (req.body.letterer != null){
    const letterer = req.body.letterer;
    for (let i = 0; i < letterer.length; i++) {
      createComicPeopleRoleLetterer(dbFile, lastId, letterer, 7);
    }}

    if (req.body.mangaka != null){
    const mangaka = req.body.mangaka;
    for (let i = 0; i < mangaka.length; i++) {
      createComicPeopleRoleMangaka(dbFile, lastId, mangaka, 11);
    }}

    if (req.body.typesetter != null){
    const typesetter = req.body.typesetter;
    for (let i = 0; i < typesetter.length; i++) {
      createComicPeopleRoleTypesetter(dbFile, lastId, typesetter, 1);
    }}

    res.redirect('/createComic')
  });

export { router } ;