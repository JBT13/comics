INSERT INTO publishers (name) VALUES
('Marvel Comics')

INSERT INTO countries (name) VALUES
('USA') 

INSERT INTO people (firstName, lastName, birth) VALUES 
('Stan', 'Lee', '1922-12-28'), ('Steve', 'Ditko', '1927-11-02'), ('Gerry', 'Conway', '1952-09-10'), ('Gil', 'Kane', '1926-04-06'), ('John', 'Romita', '1930-01-24'),
('Tony', 'Mortellaro', '1936-03-11'), ('Howard', 'Mackie', '1958-01-22'), ('Tom', 'DeFalco', '1950-06-26'), ('Todd', 'Nauck', '1971-05-08');

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
('Editor', 'A manager who oversees the production of a comic book, from conception to publication. They work with writers, artists and other staff to ensure that the comic meets the standards of quality, consistency and creativity. They also handle contracts, budgets, schedules and marketing.');

INSERT INTO comics (title, ISBN, image, summary, pageCount, publicationDate, issueNumber, publisherId) VALUES 
('Amazing Fantasy', '978-0785115650', 'spider-man/amazingFantasy.jpg', 'The origin story of Spider-Man, who gets bitten by a radioactive spider and learns a hard lesson about responsibility.', 36, 1962-08-01, 15, 1), 
('Amazing Spider-Man: The Night Gwen Stacy Died', '978-0785167277', 'spider-man/theNightGwenStacyDied.jpg', 'Spider-Man faces a tragic loss when his girlfriend Gwen Stacy is killed by the Green Goblin.', 64, 1973-06-01, 122, 1), 
('Spider-Man: The Clone Saga', '978-0785148053', 'spider-man/theCloneSaga.jpg', 'Spider-Man faces a crisis of identity when he learns that he may be a clone of the original Peter Parker.', 144, 2010-03-01, 6, 1);

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
('Tragedy', 'A genre of drama that depicts the downfall of a noble hero or heroine, usually through some combination of hubris, fate, and the will of the gods.');

