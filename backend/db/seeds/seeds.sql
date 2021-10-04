-- Seeds for users table

insert into users ( name, email, phone, password) values ( 'Prudi', 'pconnaughton0@macromedia.com', '888-196-8197','123');
insert into users ( name, email, phone, password) values ( 'Kiri', '1@3', '360-465-0385','234');
insert into users ( name, email, phone, password) values ( 'Prudi', '1@1', '888-196-8197','123');
insert into users ( name, email, phone, password) values ( 'Lorilee', 'lnorquoy2@sina.com.cn', '910-996-1354','123');
insert into users ( name, email, phone, password) values ( 'Malva', 'mcockett3@ox.ac.uk', '996-654-5074','123');
insert into users ( name, email, phone, password) values ( 'Constantine', 'ckirckman4@examiner.com', '314-631-6635','123');
insert into users ( name, email, phone, password) values ( 'Sander', 'sdehailes5@altervista.org', '292-488-7431','123');
insert into users ( name, email, phone, password) values ( 'Hortensia', 'hpochon6@oaic.gov.au', '882-260-0806','123');
insert into users ( name, email, phone, password) values ( 'Morgan', 'mcurm7@sfgate.com', '237-791-1502','456');
insert into users ( name, email, phone, password) values ( 'Buck', 'boakden8@quantcast.com', '972-500-3144','456');


-- Seeds for products table

insert into products (user_id,name, description, price, image_path) values (1,'Attraction', 'Keep your kitty active and engaged with this Whisker City Cactus Compressed Catnip Cat Toy. A touch of catnip makes this fun toy even better. Satisfy your cats hunting instinct by tossing it for her or letting her play with it on her own.', 6.99, '/images/catMint.jpg');
insert into products (user_id, name, description, price, image_path) values (2,'LitterEasy', 'This Exquisicat Rimmed Litter Pan helps to reduce litter scatter because of its snap-on rim. Your cat will love it because it is easy to navigate in terms of entry and exit, and you will love it because it keeps litter where it belongs;in the litter pan.', 9.2, '/images/litterbox.jpg');
insert into products (user_id, name, description, price, image_path) values (3,'Little Companion', 'Our Elephant Dog Toy is detailed with tiny limbs, soft to the touch and squeaks for added entertainment. Keep him active with fun toys; an active dog is a healthy dog. ', 9, '/images/dogAndToy.jpg');
insert into products (user_id, name, description, price, image_path) values (4,'Bonding Bites', 'Natural snack for dogs made from a single ingredient: 100% sweet potato of Peruvian origin.', 17.9, '/images/dogFood.jpg');
insert into products (user_id, name, description, price, image_path) values (1,'Dogsour', 'Finally! A plush toy that lasts! KONGs Plush Dinosour Squeaker Dog Toy is the perfect toy for your pooch who loves stuffed toys - minus the mess! This plush toy comes with a pre-loaded removable internal squeaker that all dogs love. This is the perfect toy for games of fetch or playful tug of war with your four-legged best friend.
', 28, '/images/dogAndDinosour.jpg');
insert into products (user_id, name, description, price, image_path) values (2,'Whisker City', 'Your cat will love spending time on this Whisker City Wicker Short Cat Tower. This tower provides the perfect perch on which your kitty can absorb the world around her, and provides a place to satisfy the instinctive urge to scratch as well.', 119.99, '/images/furniture.jpg');
insert into products (user_id, name, description, price, image_path) values (3,'Fresh Breath Dental Sticks', 'Fresh Breath by TropiClean offers many solutions to help make your dogs dental care routine easier! Treat your dog to a healthy mouth with Fresh Breath by TropiClean Dental Sticks. By treating your dog to one Fresh Breath Dental Stick each day, you can support his oral health and give him fresh breat - no brushing required. These grain & gluten-free, easily digestible Dental Sticks for small dogs have a tasty Vanilla Mint flavor, and a unique chewy texture that helps brush away plaque & tartar and provide fresh breath for dogs with each bite.', 15, '/images/treats.jpg');
insert into products (user_id, name, description, price, image_path) values (4,'Ah Rubber Duck!','Who said only software developers love rubber ducks? Your dog too!Buy them some so that your duck will still be available to be told codes to.' , 15, '/images/dogAndRubberDuck.jpg');



-- Seeds for services table
insert into services (user_id, name, description, price, image_path, lat, lng) values (1,'Cats Grooming', 'Making cats look great is our passion! Our academy-trained Pet Stylists have over 800 hours of hands-on grooming instruction that includes bathing, trimming & styling at least 200 dogs of all breeds & sizes plus annual safety certification. We offer complete bath & haircut services and walk-in services. Book your pet salon appointment today!', 59, '/images/catGrooming.jpg', 49.222566,-122.937695);
insert into services (user_id, name, description, price, image_path, lat, lng) values (2,'Dogs Grooming', 'Making dogs look great is our passion! Our academy-trained Pet Stylists have over 800 hours of hands-on grooming instruction that includes bathing, trimming & styling at least 200 dogs of all breeds & sizes plus annual safety certification. We offer complete bath & haircut services and walk-in services. Book your pet salon appointment today!', 59, '/images/dogGrooming.jpg', 49.20787431462918, -122.92302659886583);
insert into services (user_id, name, description, price, image_path, lat, lng) values (3,'Cats training', 'Our famous cat training classes can help them learn how to behave appropriately at home and on-the-go. Our Accredited Pet Trainers teach fun & eﬀective group & private classes through positive reinforcement.', 599, '/images/catTyping.jpg', 49.272610628514784, -123.24488907436151);
insert into services (user_id, name, description, price, image_path, lat, lng) values (4,'Dogs training', 'Whether you have a young pup, older dog or a rescue, our dog training classes can help them learn how to behave appropriately at home and on-the-go. Our Accredited Pet Trainers teach fun & eﬀective group & private classes through positive reinforcement.', 59, '/images/dogTraining.jpg',49.214318970093395, -123.00310394881708);
insert into services (user_id, name, description, price, image_path, lat, lng) values (1,'Cats walking', 'Every cat walker on the site has been hand-reviewed and approved by the Rover team. They’ve also completed a general background check.', 30, '/images/catWalker.jpg', 49.33165099336615, -123.10539385419389);
insert into services (user_id, name, description, price, image_path, lat, lng) values (2,'Dogs walking', 'Making dogs look great is our passion! Our academy-trained Pet Stylists have over 800 hours of hands-on grooming instruction that includes bathing, trimming & styling at least 200 dogs of all breeds & sizes plus annual safety certification. We offer complete bath & haircut services and walk-in services. Book your pet salon appointment today!', 30, '/images/dogWalker.jpg', 49.25798367961171, -123.10640006213352);
insert into services (user_id, name, description, price, image_path, lat, lng) values (3,'dog Hotel', 'Our comfortable accommodations & safety-certified associates provide a welcoming place for dogs & cats to stay while you’re away! Guests will feel at home with the around-the-clock care of our pet-loving staff. We offer a safe, clean, temperature-controlled environment, playtime, exercise, healthy meals & more. Book the ultimate staycation destination for your pet now!', 109, '/images/dogHotelBed.jpg',49.28321168623181, -122.78057502494524);

INSERT INTO messages (sender_id, recipient_id, content)
VALUES (1, 3, 'Is it still available?');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (3, 1, 'Yes. I have many in stock');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (1, 3, 'Will you negotiate on the price?');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (3, 1, 'What would you like to offer?');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (2, 3, 'What is the condition of that book?');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (3, 2, 'It is brand new');

INSERT INTO messages (sender_id, recipient_id, content)
VALUES (1, 2, 'Is it still available?');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (2, 1, 'Yes. I have many in stock');
INSERT INTO messages (sender_id, recipient_id, content)
VALUES (1, 2, 'Will you negotiate on the price?');
