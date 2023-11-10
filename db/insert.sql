INSERT INTO publishers (name) VALUES
('Marvel Comics')

INSERT INTO publishers (name) VALUES
('Shueisha'),('Hakusensha')

INSERT INTO publishers (name) VALUES
('Kodansha')

INSERT INTO countries (name) VALUES
('USA'),('Latvia')

INSERT INTO countries (name) VALUES
('Japan'),('Germany'),('China'),('Spain'),('Iceland')

INSERT INTO people (firstName, lastName, birth) VALUES 
('Stan', 'Lee', '1922-12-28'), 
('Steve', 'Ditko', '1927-11-02'), 
('Gerry', 'Conway', '1952-09-10'), 
('Gil', 'Kane', '1926-04-06'), 
('John', 'Romita', '1930-01-24'),
('Tony', 'Mortellaro', '1936-03-11'), 
('Howard', 'Mackie', '1958-01-22'), 
('Tom', 'DeFalco', '1950-06-26'), 
('Todd', 'Nauck', '1971-05-08')

INSERT INTO people (firstName, lastName, birth) VALUES 
('Gege', 'Akutami', '1972-02-26'),
('Kentaro','Miura','1966-07-11')


INSERT INTO people (firstName, lastName, birth) VALUES 
('Hajime','Isayama','1986-08-29')



INSERT INTO roles (name, description) VALUES 
('Typesetter', 'A graphic design professional who ensures that the text in a comic is clear, legible and placed in a way that makes sense. They also letter dialogue or other text in a comic, such as sound effects.'), 
('Editorial assistant', 'An entry-level support staff in an editing department. They primarily have administrative duties, but also assist with writing and editing. They work with editors to review comics during every stage of the production process.'), 
('Illustrator', 'An artist who creates the art and often writes the story for a comic. They work closely with the writer, typesetter and graphic designer to ensure that their art properly represents the vision and is cohesive with the design.'),
('Assistant editor', 'A support staff who helps full editors with administrative tasks, coordinating with other departments and communicating with writers or artists. They also edit comics for content, style and quality.'), 
('Colorist', 'An artist who adds colors to the comic art, enhancing the mood, atmosphere and dimensionality of the story. They work with the illustrator and editor to ensure that their colors match the tone and style of the comic.'), 
('Inker', 'An artist who traces over the pencil lines of the illustrator, adding depth, contrast and texture to the comic art. They work with the illustrator and editor to ensure that their inks are consistent and accurate.'), 
('Letterer', 'An artist who creates the fonts and styles for the text in a comic, such as dialogue, narration and sound effects. They work with the typesetter and editor to ensure that their letters are clear, legible and fit well with the art.'), 
('Graphic designer', 'A professional who designs the layout, format and style of a comic book, including the cover, logo, title, credits and page numbers. They work with the illustrator, typesetter and editor to ensure that their design is attractive, functional and coherent.'), 
('Writer', 'A creative professional who writes the story, dialogue and narration for a comic book. They work with the illustrator and editor to ensure that their writing is engaging, original and suitable for the target audience.'), 
('Editor', 'A manager who oversees the production of a comic book, from conception to publication. They work with writers, artists and other staff to ensure that the comic meets the standards of quality, consistency and creativity. They also handle contracts, budgets, schedules and marketing.')


INSERT INTO roles (name, description) VALUES 
('Mangaka', 'The mangaka is the central figure responsible for creating the manga. They are the writer and illustrator of the story. The mangaka creates the plot, characters, and visual storytelling, including panel layout and design. They may work independently or collaborate with others, such as an assistant or a writer.')


INSERT INTO comics (title, ISBN, image, summary, pageCount, publicationDate, issueNumber, price) VALUES 
('Amazing Fantasy', '978-0785115650', 'spider-man/amazingFantasy.jpg', 'The origin story of Spider-Man, who gets bitten by a radioactive spider and learns a hard lesson about responsibility.', 36, 1962-08-01, 15, 40), 
('Amazing Spider-Man: The Night Gwen Stacy Died', '978-0785167277', 'spider-man/theNightGwenStacyDied.jpg', 'Spider-Man faces a tragic loss when his girlfriend Gwen Stacy is killed by the Green Goblin.', 64, 1973-06-01, 122, 40), 
('Spider-Man: The Clone Saga', '978-0785148053', 'spider-man/theCloneSaga.jpg', 'Spider-Man faces a crisis of identity when he learns that he may be a clone of the original Peter Parker.', 144, 2010-03-01, 6, 40);

INSERT INTO genres (name, description) VALUES 
('Superhero', 'This genre features characters who have extraordinary abilities or powers, often using them to fight crime, evil, or injustice.'), 
('Fantasy', 'This genre features elements of magic, mythology, folklore, or supernatural phenomena, often set in imaginary worlds or alternate realities.'), 
('Science fiction', 'This genre features elements of science, technology, or futuristic scenarios.'), 
('Horror', 'This genre features elements of fear, terror, suspense, or dread, often involving monsters, ghosts, zombies, vampires, or other supernatural or evil forces.'), 
('Mystery', 'This genre features elements of crime, detection, investigation, or puzzle-solving, often involving a protagonist who tries to solve a mystery or uncover a secret.'), 
('Romance', 'This genre features elements of love, romance, or relationships, often involving a protagonist who tries to find or maintain a romantic partner.'), 
('Comedy', 'This genre features elements of humor, satire, parody, or irony, often involving a protagonist who faces funny or absurd situations.'), 
('Historical', 'This genre features elements of history, historical events, or historical figures, often set in a specific historical period or location.'), 
('Western', 'This genre features elements of the American West, cowboys, outlaws, Native Americans, or frontier life, often set in the 19th century.'), 
('War', 'This genre features elements of war, military conflict, soldiers, or combat, often set in a specific historical or fictional war.'),
('Tragedy', 'A genre of drama that depicts the downfall of a noble hero or heroine, usually through some combination of hubris, fate, and the will of the gods.'),
('Drama', 'A genre of comics that explores the complex and realistic aspects of human life, often involving personal struggles, social issues, or moral dilemmas.')

INSERT INTO genres (name, description) VALUES 
('Shonen', 'Manga targeted primarily at young boys, typically featuring action, adventure, and friendship themes.'),
('Shojo', 'Manga aimed at young girls, often focusing on romance, relationships, and personal growth.'),
('Seinen', 'Manga for adult men, often featuring more mature and complex themes, including violence, politics, and philosophy.'),
('Josei', 'Similar to seinen but aimed at adult women, featuring more mature and realistic themes.'),
('Isekai', 'Manga where characters are transported to another world, often with fantasy or game-like settings.'),
('Mecha', 'Manga featuring giant robots and mechs.'),
('Slice of Life', 'Portraying the everyday lives and experiences of characters.'),
('Harem', 'Featuring a male or female protagonist surrounded by multiple potential romantic interests.'),
('Sports', 'Centered around sports and competitions.'),
('Supernatural', 'Involving paranormal or supernatural elements like ghosts, spirits, or magic.')

/*Spider-man Characters*/
INSERT INTO characters(heroName, firstName , lastName, description) VALUES
('Spider-Man (Earth-616)','Peter','Parker','The original and most iconic Spider-Man, who was bitten by a radioactive spider and gained superpowers. He is a hero who fights for justice and responsibility, but also faces many personal challenges and tragedies. He is the leader of the Spider-Army.'), 
('The Bell-Ringer',NULL,NULL,'A man who rings the church bell every hour and is mocked by the townspeople for being simple-minded. He saves them from an alien invasion by ringing the bell at the right time, causing the aliens to flee in pain'),
('Man in the Mummy Case',NULL,NULL,'A thief who steals a mummy case from a museum, hoping to find treasure inside. He opens the case and finds a living alien, who captures him and takes him to his home planet as a specimen.'),
('The Time Traveler',NULL,NULL,'He is a scientist who invents a time machine and travels back to the origin of life on Earth. He witnesses a primitive creature emerging from the primordial soup and decides to examine it.'),
('Spider-Man (Earth-1610)','Miles','Morales','A teenager of African-American and Puerto Rican descent, who was bitten by a genetically modified spider and inherited similar powers to Peter Parker. He became Spider-Man after the death of his worlds Peter Parker, and later joined the Spider-Army.'), 
('Ghost-Spider (Earth-65)','Gwen','Stacy','A version of Gwen Stacy who was bitten by a radioactive spider instead of Peter Parker, who became her worlds Spider-Woman. She is a drummer in a band called The Mary Janes, and has a complicated relationship with her father.'), 
('Spider-Man (Earth-833)','Peter B.','Parker','An older and more cynical version of Peter Parker, who has been divorced from Mary Jane Watson and lost his Aunt May. He is reluctant to mentor Miles Morales, but eventually learns to appreciate his role as a hero.'), 
('Spider-Man 2099 (Earth-928)','Miguel','OHara','A geneticist from the year 2099, who was spliced with spider DNA and gained enhanced abilities. He is a rebel who fights against the corrupt megacorporations that rule his world. He is the one who initiates the Spider-Verse event.'), 
('Spider-Ham (Earth-8311)','Peter','Porker','A spider who was bitten by a radioactive pig and became a porcine parody of Spider-Man. He is a humorous and cartoonish character who often breaks the fourth wall.'), 
('SP//dr (Earth-14512)','Peni','Parker','A young girl of Japanese descent, who pilots a bio-mechanical suit called SP//dr that is powered by a radioactive spider that shares a psychic link with her. She is a fan of anime and manga, and has a robotic sidekick named SP//dr-Bot. She is one of the main characters in Spider-Man: Into the Spider-Verse and Spider-Man: Across the Spider-Verse'), 
('Spider-Punk (Earth-138)','Hobie','Brown','A version of Hobie Brown who became a punk rock rebel and used his spider powers to fight against President Osborn and his oppressive regime. He wields an electric guitar that can emit sonic blasts. He is one of the members of the Spider-Army'), 
('Spider-Man (Earth-50101)','Pavitr','Prabhakar','A version of Peter Parker who was born in India and moved to Mumbai with his Aunt Maya and Uncle Bhim. He was given spider powers by a mystical yogi, and fights against local crime lords and super villains. He is one of the members of the Spider-Army'), 
('Spider-Woman (Earth-616)','Jessica','Drew','A woman who was genetically enhanced with spider DNA by the High Evolutionary, and later became an agent of HYDRA, S.H.I.E.L.D., and the Avengers. She has super strength, speed, agility, reflexes, stamina, durability, venom blasts, pheromones, wall-crawling, and bio-electric webs. She is one of the members of the Spider-Army'),
('Silk', 'Cindy', 'Moon', 'A character who was bitten by the same radioactive spider as Peter Parker, gaining similar powers and becoming the superhero Silk.'),
('Chameleon','Dmitri','Nikolayevich',' Dmitri is a master of disguise and espionage. He can change his appearance to mimic anyone, making him a formidable adversary. His true identity is shrouded in mystery.'),
('Vulture','Adrian','Toomes',' Adrian Toomes is a brilliant inventor who created a suit that gives him the power of flight and superhuman strength. He uses his technology to commit crimes and clashes with our hero, Spider-Man.'),
('Doctor Octopus','Otto','Octavius','Otto Octavius is a brilliant scientist who designed mechanical tentacles that are fused to his body. These tentacles grant him incredible strength and agility, and he often uses them to commit crimes and further his scientific pursuits.'),
('Sandman','Willian','Baker','William Baker, also known as Flint Marko, gained the ability to transform his body into sand after a scientific accident. As Sandman, he can reshape his form and become nearly invulnerable. He often struggles with his criminal tendencies and desire to provide for his daughter.'),
('Lizard','Curt','Connors','Dr. Curt Connors is a brilliant biologist who, in an attempt to regrow his lost arm, used experimental technology that transformed him into the Lizard. As the Lizard, he possesses superhuman strength and reptilian characteristics.'),
('Electro','Max','Dillon','Max Dillon gained the ability to generate and control electricity after being struck by lightning. As Electro, he becomes a powerful supervillain with the capacity to unleash devastating electrical attacks.'),
('Mysterio','Quentin','Beck','Quentin Beck is a special effects artist and master illusionist who uses his skills to create elaborate and deceptive schemes. He is a master of misdirection and often appears with a fishbowl-like helmet.'),
('Green Goblin','Harry','Osborn','Harry Osborn is a complex character with a troubled background. He is the son of Norman Osborn, a wealthy businessman who becomes the infamous Green Goblin. Harry is initially a close friend of Peter Parker (Spider-Man) but eventually takes on the mantle of the Green Goblin himself, becoming a cunning and dangerous adversary. His character is marked by inner turmoil, strained friendships, and personal struggles, adding depth to the Spider-Man storyline.'),
('Green Goblin','Norman','Osborn','Norman Osborn is a wealthy businessman who uses a formula that enhances his physical abilities but also drives him to madness. As the Green Goblin, he is a cunning and dangerous adversary who employs various gadgets and weapons.'),
('Kraven the Hunter','Sergei','Kravinoff','Kraven is a big-game hunter who seeks to prove himself as the worlds greatest hunter by capturing the ultimate prey - Spider-Man. He possesses superhuman strength, speed, and agility.'),
('Scorpion','Mac','Gargan','Mac Gargan is a private investigator who, after an experiment gone wrong, is bonded to a mechanical scorpion suit that grants him a powerful, mechanical tail and enhanced physical abilities.'),
('Rhino','Aleksei','Sytsevich','Aleksei Sytsevich undergoes a procedure that encases his body in nearly indestructible armor, resembling a rhinoceros. He becomes the Rhino, a superhumanly strong and nearly invulnerable criminal.'),
('Shocker','Herman','Schultz','Herman Schultz uses specially designed gauntlets that emit powerful shockwaves to create sound-based vibrations and deliver powerful concussive blasts. He is a formidable opponent when it comes to combat.'),
('Kingpin','Wilson','Fisk','Wilson Fisk is a powerful and influential crime lord who controls organized crime in New York City. He possesses immense physical strength and is a strategic mastermind in criminal operations.'),
('Morbius','Michael','Morbius','Dr. Michael Morbius is a scientist who, through a failed experiment, becomes a living vampire. He possesses superhuman strength, speed, and a thirst for blood.'),
('Black Cat','Felicia','Hardy','Felicia Hardy is a skilled cat burglar who possesses heightened agility, reflexes, and a bit of bad luck for her enemies. She sometimes allies with Spider-Man but is known for her morally ambiguous actions.'),
('Hobgoblin','Roderic','Kingsley','Roderic Kingsley is a wealthy fashion designer who becomes the Hobgoblin using advanced technology and weaponry similar to the Green Goblin. He is a cunning and dangerous adversary.'),
('Venom','Eddie','Brock','Eddie Brock, a journalist, bonds with an alien symbiote, becoming Venom. Venom possesses immense strength, the ability to create web-like tendrils, and can change his appearance.'),
('Carnage','Cletus','Kasady','Cletus Kasady bonds with a symbiote offspring of Venom, becoming Carnage. He is a psychopathic and sadistic serial killer with even more destructive and uncontrollable powers.'),
(NULL, 'Mary', 'Jane Watson', 'A longtime love interest of Peter Parker (Spider-Man), Mary Jane is a model, actress, and friend who becomes one of Peters closest confidantes.'),
(NULL, 'May', 'Parker', 'Peter Parkers elderly and kind-hearted aunt, who raised him after the death of his parents.'),
(NULL, 'Gwen', 'Stacy', 'A former love interest of Peter Parker, Gwen was a college student and is remembered for her tragic fate.'),
(NULL, 'Jonah', 'Jameson', 'The irritable and outspoken editor-in-chief of the Daily Bugle newspaper, who often criticizes Spider-Man while trying to unmask his true identity.'),
(NULL, 'Betty', 'Brant', 'A secretary at the Daily Bugle and a romantic interest of Peter Parker.'),
(NULL, 'Robbie', 'Robertson', 'The city editor at the Daily Bugle, known for his integrity and balanced perspective.'),
(NULL, 'Harry', 'Osborn', 'The son of Norman Osborn (Green Goblin) and a close friend of Peter Parker.'),
(NULL, 'Flash', 'Thompson', 'A former high school bully of Peter Parker who later becomes a friend and, at times, the superhero known as Agent Venom.'),
(NULL, 'Uncle Ben', 'Parker', 'Although Uncle Ben is no longer alive in the main continuity, his influence on Peters sense of responsibility is a central theme in Spider-Mans origin story.'),
(NULL, 'George', 'Stacy', 'The father of Gwen Stacy and a police captain who knew Peter Parkers secret.')

The Amazing Spider-Man (1963-2014, 2015-present)
The Spectacular Spider-Man (1976-1998, 2003-2005, 2017)
Web of Spider-Man (1985-1995, 2009-2010)
Spider-Man (1990-1998, 2016-2017)
Peter Parker: Spider-Man (1999-2003)
Ultimate Spider-Man (2000-2009)
Friendly Neighborhood Spider-Man (2005-2007, 2019-present)
Sensational Spider-Man (2006-2007)
Avenging Spider-Man (2011-2013)
Superior Spider-Man (2013-2014, 2018-2020)
Spidey (2015-2016)
Peter Parker: The Spectacular Spider-Man (2017-2018)


INSERT INTO characters (heroName,firstName, lastName, description) VALUES
('Circus of Crime',NULL,NULL,'They would give a performance before a large audience. At some point the Ringmaster would use the powerful mind-control device concealed in his hat to put the audience into a trance. The Circus members then robbed the audience, who would remember nothing about the thefts when the Ringmaster released them from the trance and the performance continued.')
('Doctor Doom','Victor von','Doom','Doctor Doom is a Latverian politician who serves as the Monarch and Supreme Leader for the Kingdom of Latveria. He was scarred from an accident and wears an iron mask and armor to hide his true face. He is considered one of the most brilliant minds and scientists on the planet Earth. He is also a sorcerer with skills in magic matching the most powerful beings in the Universe, making him a potential candidate for Sorcerer Supreme.He hopes to bring order and betterment to humanity through world conquest.')
('Living Brain (Earth-616)',NULL,NULL,'The Living Brain, soon after its creation, was brought to Midtown High School by its creator, Dr. Petty, as a part of a demonstration of its ability to solve any problem.')
('Doctor Strange','Stephen','Strange','Dr. Stephen Strange,a.k.a. Doctor Strange, was the Sorcerer Supreme for Earth-616. Strange was once a brilliant but arrogant Neurosurgeon, until a car accident crippled his hands.When modern medicine failed him, he embarked on a journey to Kamar-Taj in Tibet, where he was trained by the Ancient One. He healed his hands and learned more about Magic, eventually becoming a Master of the Mystic Arts.')


/* Spiderman (616)*/ 
INSERT INTO comics (title, pageNumber, ISBN, issueNumber, publicationDate, summary) VALUES 
('The Amazing Spider-Man #1', 25, '978-0-7851-8550-8', 1, 'March 1963', 'Spider-Man battles the Chameleon and joins the Fantastic Four'), 
('The Amazing Spider-Man #2', 24, '978-0-7851-8550-8', 2, 'May 1963', 'Spider-Man faces the Vulture and the Tinkerer'), 
('The Amazing Spider-Man #3', 22, '978-0-7851-8550-8', 3, 'July 1963', 'Spider-Man meets his match in Doctor Octopus'), 
('The Amazing Spider-Man #4', 24, '978-0-7851-8550-8', 4, 'September 1963', 'Spider-Man encounters the Sandman and Betty Brant'), 
('The Amazing Spider-Man #5', 22, '978-0-7851-8550-8', 5, 'October 1963', 'Spider-Man battles Doctor Doom and saves Flash Thompson'),
('The Amazing Spider-Man #6', 22, '978-0-7851-8550-8', 6, 'November 1963', 'Spider-Man faces the Lizard in the Florida Everglades'), 
('The Amazing Spider-Man #7', 22, '978-0-7851-8550-8', 7, 'December 1963', 'Spider-Man battles the Vulture again and saves Aunt May from a heart attack'), 
('The Amazing Spider-Man #8', 24, '978-0-7851-8550-8', 8, 'January 1964', 'Spider-Man meets the Human Torch and fights the Living Brain'), 
('The Amazing Spider-Man #9', 22, '978-0-7851-8550-8', 9, 'February 1964', 'Spider-Man encounters Electro for the first time and foils his bank robbery'), 
('The Amazing Spider-Man #10', 22, '978-0-7851-8550-8', 10, 'March 1964', 'Spider-Man meets the Enforcers and the Big Man, who are behind a crime wave in New York'),
('The Amazing Spider-Man #11', 22, '978-0-7851-8550-8', 11, 'April 1964', 'Spider-Man faces Doctor Octopus again and tries to save Betty Brant from his clutches'), 
('The Amazing Spider-Man #12', 22, '978-0-7851-8550-8', 12, 'May 1964', 'Spider-Man battles the Circus of Crime and clears his name from a false accusation'), 
('The Amazing Spider-Man #13', 22, '978-0-7851-8550-8', 13, 'June 1964', 'Spider-Man meets Mysterio for the first time and uncovers his illusions'), 
('The Amazing Spider-Man #14', 22, '978-0-7851-8550-8', 14, 'July 1964', 'Spider-Man encounters the Green Goblin and fights him in the air'), 
('The Amazing Spider-Man #15', 22, '978-0-7851-8550-8', 15, 'August 1964', 'Spider-Man faces Kraven the Hunter and escapes from his traps'),

('The Amazing Spider-Man #500', 48, '978-0-7851-1089-7', 500, 'December 2003', 'Spider-Man celebrates his birthday and revisits his past'), 
('The Amazing Spider-Man #501', 22, '978-0-7851-1089-7', 501, 'January 2004', 'Spider-Man teams up with Doctor Strange to stop a time-traveling villain'), 
('The Amazing Spider-Man #502', 22, '978-0-7851-1089-7', 502, 'February 2004', 'Spider-Man and Doctor Strange face the menace of Dormammu'), 
('The Amazing Spider-Man #503', 22, '978-0-7851-1089-7', 503, 'March 2004', 'Spider-Man and Doctor Strange join forces with Loki to save the world'), 
('The Amazing Spider-Man #504', 22, '978-0-7851-1089-7', 504, 'April 2004', 'Spider-Man deals with the aftermath of his adventure with Doctor Strange and Loki'),
('The Amazing Spider-Man #505', 22, '978-0-7851-1089-7', 505, 'May 2004', 'Spider-Man helps a young girl who is being bullied at school and learns a lesson about courage')
('The Amazing Spider-Man #506', 22, '978-0-7851-1089-7', 506, 'June 2004', 'Spider-Man travels to Japan with Ezekiel to stop a mystical threat known as Morlun')
('The Amazing Spider-Man #507', 22, '978-0-7851-1089-7', 507, 'July 2004', 'Spider-Man continues his battle with Morlun and learns more about his spider-totem powers')
('The Amazing Spider-Man #508', 22, '978-0-7851-1089-7', 508, 'August 2004', 'Spider-Man faces a life-or-death decision as he confronts Morlun for the final time')
('The Amazing Spider-Man #509', 22, '9780785116822', 509, 'September 2004', 'Spider-Man discovers a shocking secret about his parents and his past'),
('The Amazing Spider-Man #510', 22, '9780785116822', 510, 'October 2004', 'Spider-Man investigates the mystery of his parents and confronts a new enemy called the Sin-Eater'), 
('The Amazing Spider-Man #511', 22, '9780785116822', 511, 'November 2004', 'Spider-Man learns the truth about his parents and their connection to the Sin-Eater'), 
('The Amazing Spider-Man #512', 22, '9780785116822', 512, 'December 2004', 'Spider-Man deals with the aftermath of his discovery and tries to cope with his loss'), 
('The Amazing Spider-Man #513', 22, '9780785116822', 513, 'January 2005', 'Spider-Man faces a new threat from a mysterious woman who claims to be Gwen Stacy'), 
('The Amazing Spider-Man #514', 22, '9780785116822', 514, 'February 2005', 'Spider-Man discovers the shocking secret behind Gwen Stacys return and her children'),

('The Amazing Spider-Man #1 (2014)', 40, '9780785191077', 1, 'June 2014', 'Spider-Man returns after being possessed by Doctor Octopus and faces Electro and Black Cat'), 
('The Amazing Spider-Man #2 (2014)', 20, '9780785191077', 2, 'June 2014', 'Spider-Man meets Silk, a woman who was bitten by the same spider as him'), 
('The Amazing Spider-Man #3 (2014)', 20, '9780785191077', 3, 'July 2014', 'Spider-Man and Silk fight against Electro and Black Cat'), 
('The Amazing Spider-Man #4 (2014)', 20, '9780785191077', 4, 'August 2014', 'Spider-Man joins the Original Sin event and learns a shocking secret about his past'), 
('The Amazing Spider-Man #5 (2014)', 20, '9780785191077', 5, 'September 2014', 'Spider-Man and Silk team up with the Avengers to stop a threat from outer space'),
('The Amazing Spider-Man #6 (2014)', 20, '9780785191077', 6, 'October 2014', 'Spider-Man and Silk try to control their attraction to each other and fight against Black Cat and Electro'), 
('The Amazing Spider-Man #7 (2014)', 20, '9780785191077', 7, 'November 2014', 'Spider-Man joins the Spider-Verse event and meets Spider-Man Noir and Ms. Marvel'), 
('The Amazing Spider-Man #8 (2014)', 20, '9780785191077', 8, 'December 2014', 'Spider-Man teams up with Spider-Girl and Spider-Woman to stop the Inheritors from killing all the spider-totems'),
('The Amazing Spider-Man #9 (2014)', 20, '9780785191077', 9, 'January 2015', 'Spider-Man leads the Spider-Army against the Inheritors in a war across multiple dimensions'), 
('The Amazing Spider-Man #10 (2014)', 20, '9780785191077', 10, 'February 2015', 'Spider-Man faces a betrayal from one of his allies and a sacrifice from another in the Spider-Verse saga'),
('The Amazing Spider-Man #11 (2014)', 20, '9780785191077', 11, 'March 2015', 'Spider-Man continues his involvement in the Spider-Verse event and meets Spider-Ham and Spider-Gwen'), 
('The Amazing Spider-Man #12 (2014)', 20, '9780785191077', 12, 'April 2015', 'Spider-Man leads the final assault against the Inheritors and their master plan'), 
('The Amazing Spider-Man #13 (2014)', 20, '9780785191077', 13, 'May 2015', 'Spider-Man celebrates the victory of the Spider-Army and bids farewell to his allies'), 
('The Amazing Spider-Man #14 (2014)', 20, '9780785191077', 14, 'June 2015', 'Spider-Man returns to his own world and faces a new challenge from Ghost Rider'), 
('The Amazing Spider-Man #15 (2014)', 20, '9780785191077', 15, 'July 2015', 'Spider-Man reunites with Silk and helps her find her family')





/*Jujutsu Kaisen Characters*/
INSERT INTO characters(heroName, firstName , lastName, description) VALUES
(NULL, 'Yuji', 'Itadori', 'Yuji is a high school student with incredible physical abilities who becomes a Jujutsu Sorcerer to battle curses.'),
(NULL, 'Megumi', 'Fushiguro', 'Megumi is a serious and skilled Jujutsu Sorcerer with the ability to summon Shikigami.'),
(NULL, 'Nobara', 'Kugisaki', 'Nobara is a Jujutsu Sorcerer who wields a cursed hammer and nails in combat.'),
(NULL, 'Satoru', 'Gojo', 'Satoru Gojo is an exceptionally powerful Jujutsu Sorcerer and a teacher at Tokyo Jujutsu High.'),
(NULL, 'Maki', 'Zenin', 'Maki Zenin is a skilled Jujutsu Sorcerer from the Zenin family, known for her exceptional physical prowess.'),
(NULL, 'Toge', 'Inumaki', 'Toge Inumaki is a Jujutsu Sorcerer who communicates using Cursed Speech and has a strong sense of justice.'),
(NULL, 'Panda', NULL, 'Panda is a unique Jujutsu Sorcerer with the ability to transform into a giant panda.'),
(NULL, 'Kento', 'Nanami', 'Kento Nanami is a Jujutsu Sorcerer known for his strict adherence to rules and principles.'),
(NULL, 'Aoi', 'Todo', 'Aoi Todo is a brash Jujutsu Sorcerer with immense strength and a love for battles.'),
(NULL, 'Suguru', 'Geto', 'Suguru Geto is a former teacher at Tokyo Jujutsu High and a key antagonist with complex motivations.'),
(NULL, 'Mahito', NULL, 'Mahito is a Special Grade Cursed Spirit who can manipulate the shape and soul of living beings.'),
(NULL, 'Jogo', NULL, 'Jogo is a Special Grade Cursed Spirit who can control fire and volcanoes.'),
(NULL, 'Hanami', NULL, 'Hanami is a Special Grade Cursed Spirit who can manipulate plants and nature.'),
(NULL, 'Kenjaku', NULL, 'Kenjaku is a powerful Curse User who can switch bodies and possess others. He is currently using Suguru Getos body as his vessel.'),
(NULL, 'Yuta', 'Okkotsu', 'Yuta Okkotsu is a Jujutsu Sorcerer who was possessed by the vengeful spirit of his childhood friend Rika.'),
(NULL, 'Mei Mei', NULL, 'Mei Mei is a professional Jujutsu Sorcerer who uses crows as her Shikigami and is obsessed with money.'),
(NULL, 'Choso', NULL, 'Choso is one of the Cursed Womb: Death Paintings who can manipulate blood and considers Yuji Itadori as his younger brother.'),
(NULL, 'Uraume', NULL, 'Uraume is a mysterious Curse User who is loyal to Kenjaku and can manipulate ice and wind.'),
(NULL, 'Yuki', 'Tsukumo', 'Yuki Tsukumo is a Jujutsu Sorcerer who travels around the world and is interested in finding a way to end the Jujutsu system.')

/*Beserk Characters*/
INSERT INTO characters(heroName, firstName , lastName, description) VALUES
('Black Swordsman', 'Guts', NULL, 'Guts is a lone mercenary warrior who wields a massive sword and seeks revenge on Griffith, who betrayed him and his comrades.'),
(NULL, 'Griffith', NULL, 'Griffith is the leader of the Band of the Hawk and a charismatic figure who has a dream of ruling his own kingdom. He sacrifices his followers to become a member of the God Hand.'),
(NULL, 'Casca', NULL, 'Casca is a female warrior who was the second-in-command of the Band of the Hawk and Guts lover. She suffers from trauma and memory loss after the Eclipse.'),
(NULL, 'Skull Knight', NULL, 'Skull Knight is a mysterious figure who wears a skull-shaped armor and rides a skeletal horse. He opposes the God Hand and aids Guts in his quest.'),
(NULL, 'Puck', NULL, 'Puck is a cheerful and mischievous elf who accompanies Guts on his journey. He has the ability to heal wounds and sense emotions.'),
(NULL, 'Zodd', NULL, 'Zodd is a legendary apostle who has a human and a beast form. He is a fierce warrior who respects those who can challenge him in battle.'),
(NULL, 'Farnese', 'de Vandimion', 'Farnese de Vandimion is a noblewoman who was the leader of the Holy Iron Chain Knights. She later becomes a companion of Guts and learns magic from Schierke.'),
(NULL, 'Schierke', NULL, 'Schierke is a young witch who lives in the forest of spirits. She is a master of elemental magic and forms a bond with Guts when she uses her astral body to control his Berserker Armor.'),
(NULL, 'Isidro', NULL, 'Isidro is a young boy who dreams of becoming a great swordsman. He follows Guts and learns from his fighting style. He uses a dagger and throwing knives as his weapons.'),
(NULL, 'Serpico', NULL, 'Serpico is Farneses half-brother and loyal servant. He is a cunning and agile fighter who wields a rapier and a wind-elemental sword.');

/*AOT Characters*/
INSERT INTO characters(heroName, firstName , lastName, description) VALUES
(NULL,'Eren', 'Jaeger', 'The main protagonist of Attack on Titan, who has the power to transform into the Attack Titan and the Founding Titan. He is determined to eradicate all the Titans and free humanity from their oppression.'), 
(NULL,'Mikasa', 'Ackerman', 'The adoptive sister of Eren and one of the best soldiers in the Scout Regiment. She is loyal to Eren and will do anything to protect him.'), 
(NULL,'Armin', 'Arlert', 'The childhood friend of Eren and Mikasa, who has the power to transform into the Colossal Titan. He is a genius strategist and a valuable asset to the Scout Regiment.'), 
(NULL,'Levi', 'Ackerman', 'The captain of the Special Operations Squad and the strongest soldier in the Scout Regiment. He is a ruthless and efficient fighter, who has a deep respect for his former commander Erwin Smith.'), 
(NULL,'Hange', 'Zoe', 'The former commander of the Scout Regiment and a scientist who is obsessed with studying Titans. She is eccentric and enthusiastic, but also compassionate and courageous.'), 
(NULL,'Reiner', 'Braun', 'One of the Warriors sent by Marley to infiltrate Paradis Island and destroy humanity. He has the power to transform into the Armored Titan. He suffers from a split personality disorder due to his guilt and trauma.'), 
(NULL,'Annie', 'Leonhart', 'One of the Warriors sent by Marley to infiltrate Paradis Island and destroy humanity. She has the power to transform into the Female Titan. She is cold and aloof, but also has a soft spot for her father.'), 
(NULL,'Pieck', 'Finger', 'One of the Warriors sent by Marley to infiltrate Paradis Island and destroy humanity. She has the power to transform into the Cart Titan. She is smart and loyal, but also sarcastic and playful.'), 
(NULL,'Falco', 'Grice', 'One of the Warrior Candidates who was selected to inherit the Armored Titan from Reiner. He has the power to transform into the Jaw Titan. He is kind and gentle, but also brave and determined.'), 
(NULL,'Gabi', 'Braun', 'One of the Warrior Candidates who was selected to inherit the Armored Titan from Reiner. She is his cousin and a loyal soldier of Marley. She is proud and ambitious, but also naive and vengeful.'),
(NULL,'Zeke', 'Yeager', 'The older half-brother of Eren and the son of Grisha and Dina Yeager. He has the power to transform into the Beast Titan and to control other Titans with his scream. He is the leader of the Warriors and the former heir of the royal family of Eldia. He has a secret plan to end the Titan curse and free his people from suffering.'), 
(NULL,'Historia', 'Reiss', 'The true queen of Paradis Island and the last surviving member of the Reiss family, the royal bloodline of Eldia. She was formerly known as Krista Lenz, a kind and gentle girl who was a friend of Ymir and a member of the Scout Regiment. She has a close bond with Eren and is pregnant with a child.'), 
(NULL,'Ymir', NULL, 'A mysterious girl who was a member of the Scout Regiment and the lover of Historia. She had the power to transform into the Jaw Titan, which she inherited from Marcel Galliard. She was originally a homeless orphan who was worshipped as a false goddess by a cult, and later became a mindless Titan for 60 years. She sacrificed herself to save Reiner and Bertolt, and gave her power to Porco Galliard.'), 
(NULL,'Erwin', 'Smith', 'The former commander of the Scout Regiment and a charismatic leader who devoted his life to uncovering the truth about the world and overthrowing the corrupt monarchy. He was a brilliant tactician and a fearless warrior, who inspired many soldiers to follow him. He lost his right arm during the battle of Shiganshina, and later sacrificed himself to give Levi a chance to kill the Beast Titan.'), 
(NULL,'Sasha', 'Blouse', 'A former member of the Scout Regiment and a close friend of Connie, Jean, Mikasa, and Armin. She was known for her love of food and her exceptional skills with a bow and arrow. She was brave and compassionate, but also had a humorous side. She died after being shot by Gabi during the raid on Liberio.'),
(NULL,'Kenny', 'Ackerman', 'The uncle of Levi and the former captain of the Anti-Personnel Control Squad. He was a serial killer known as Kenny the Ripper who killed hundreds of Military Police officers. He was also a friend of Uri Reiss and sought to obtain the Founding Titan power for himself. He died after giving Levi a Titan serum that he stole from Rod Reiss.')


INSERT INTO series(name, description) VALUES 
('Jujutsu Kaisen','A popular anime and manga series by Gege Akutami. The name Jujutsu Kaisen means “Sorcery Fight” in Japanese, and it refers to the battles between the Jujutsu Sorcerers and the Curses, which are evil spirits born from human negativity. The series follows the adventures of Yuji Itadori, a high school student who accidentally swallows a cursed finger that belongs to Ryomen Sukuna, the King of Curses.'),
('Beserk','Berserk is a dark fantasy manga series by Kentaro Miura that has been serialized since 1989. It has also been adapted into several anime series and movies. The story follows Guts, a mercenary who wields a massive sword and has a cursed mark that attracts evil spirits. He seeks revenge against Griffith, his former friend and leader of the Band of the Hawk, who betrayed him and sacrificed his comrades to become a demonic being called Femto. Along his journey, he encounters various allies and enemies, as well as supernatural creatures and events.'),
('Spider-Man','Its a collection of movies, TV shows, comics, and games that feature the superhero Spider-Man, who is a young man named Peter Parker who gains spider-like abilities after being bitten by a radioactive spider. He uses his powers to fight crime and protect his city from various villains, while also dealing with his personal life and relationships.')

INSERT INTO series(name, description) VALUES 
('Attack on Titan', 'A Japanese manga and anime series that depicts a world where humans are threatened by giant humanoids called Titans. The story follows Eren Yeager, who inherits the power of the Attack Titan, a special Titan that can see into the future and connect with other Titan holders. Eren decides to use his power to destroy humanity, believing that they are the cause of the Titans suffering.');


INSERT INTO comicCountry (comicId, countryId) VALUES
(1,1),(2,1),(3,1)

INSERT INTO comicGenre (comicId, genreId) VALUES
(1,1),(1,2),(1,3),
(2,1),(2,12),(2,11),
(3,1),(3,2),(3,3),(3,12)

INSERT INTO comicSerie (comicId, serieId) VALUES
(1,1),(2,1),(3,1)

INSERT INTO comicCharacter (comicId, characterId) VALUES
(1,1),(1,2),(1,3),(1,4)

INSERT INTO comicPeopleRole (comicId, peopleId, roleId) VALUES
(1,1,9),(1,2,3),
(2,3,9),(2,4,3),(2,5,6),(2,6,6),
(3,8,9),(3,9,3)


INSERT INTO peopleCountry (peopleId, countryId) VALUES
(1,1),(2,1),(3,1),(4,2),(5,1),(6,1),(7,1),(8,1),(9,1)

INSERT INTO publisherCountry (publisherId, countryId) VALUES
(1,1)

INSERT INTO comicPublisher (comicId, publisherId) VALUES 
(1,1),(2,1),(3,1)

/*1*/  SELECT title FROM comics WHERE id = 1;
/*2*/  SELECT title FROM comics; 
/*3*/  SELECT heroName FROM characters;
/*4*/  SELECT name FROM series WHERE id = 1;
/*5*/  SELECT title FROM comics ORDER BY publicationDate;
/*6*/  SELECT people.firstName || ' ' || people.lastName, roles.name FROM people 
       INNER JOIN comicPeopleRole ON 
       people.id = comicPeopleRole.peopleId  
       INNER JOIN roles on
       comicPeopleRole.roleId = roles.id WHERE roles.id = 9;
/*7*/  SELECT title, pageCount FROM comics;
       
CREATE VIEW seriesInfo AS
2
SELECT
       series.name AS "Comic Series",
       GROUP_CONCAT(comics.title) AS "Comic Title",
       GROUP_CONCAT(characters.heroName) AS "Characters",
       GROUP_CONCAT(writers.firstName) AS "Writers",
       GROUP_CONCAT(artists.firstName) AS "Artists"
FROM
       series INNER JOIN comicSerie
       ON series.id = comicSerie.Serie.Id
       INNER JOIN comics
       ON comicSerie.ComicId = comic.id
       INNER JOIN comicCharacter
       ON comics.id = comicCharacter.ComicId
       INNER JOIN characters
       ON comicCharacter.CharacterId = characters.id 
       INNER JOIN comicPeopleRole
       ON comics.id = comicPeopleRole.ComicId
       INNER JOIN roles
       ON roles.id = comicPeopleRole.RoleId
       INNER JOIN (SELECT people.id, people.firstName, people.lastName
                  FROM people INNER JOIN comicPeopleRole
                  ON people.id = comicPeopleRole.peopleId
                  WHERE comicPeopleRole.roleId = 9;)
                  AS "Writers"
       ON writers.id = comicPeopleRole.peopleId
       INNER JOIN (SELECT people.id, people.firstName, people.lastName
       FROM people INNER JOIN comicPeopleRole
       ON people.id = comicPeopleRole.peopleId
       WHERE comicPeopleRole.roleId = 3)
       AS "Artists"
       ON artists.id = comicPeopleRole.peopleId
       GROUP BY series.id
       ORDER BY series.name;

SELECT people.id, people. firstName, people. lastName
FROM people INNER JOIN comicPeopleRole
ON people.id = comicPeopleRole.peopleID
WHERE comicPeopleRole.roleID = 9;
