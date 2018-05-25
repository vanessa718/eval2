/*=======================================================
=========INSERTION DE DONNEES DANS LES TABLES==========
=======================================================*/
INSERT INTO bathroom 
VALUES (1, 'shower'),
		(2, 'bath'),
		(3, 'shower and bath');	    


INSERT INTO bedroom
VALUES (1, 'single'),
		(2, 'double queen size'),
		(3, 'double king size');


INSERT INTO category_service
VALUES (1, 'equipment'),
		(2, 'well being'),
		(3, 'meal'),
		(4, 'special');	


INSERT INTO category_service
VALUES (1, 'equipment'),
		(2, 'well being'),
		(3, 'meal'),
		(4, 'special');	


INSERT INTO customer (name, first_name, adress, mail, password, phone)
VALUES ('Dupont', 'Pierre', '115 rue des Mésanges 18250 saint doulchard', 'dupont.pierre@gmail.com', 'xha45', '0690904323'),
('Durand', 'Maurice', '12 rue des Coquelicots 37000 tours', 'durand.m@yahoo.fr', 'ZER90', '0795831049'),
('Martin', 'Michel', '20 avenue des Champs Elysées 75016 paris', 'martinmichel@orange.fr', 'TRE45', '0834264810'),
('Vergne', 'Dominique', '32B avenue blabla 33000 bordeaux', 'verdom@free.fr', 'TRf48', '0493248201');


INSERT INTO reservation
VALUES (NULL, 65, 61, '2018-01-22', '2018-02-02', 2),
	   (NULL, 66, 62, '2019-01-01', '2018-02-01', 1),
	   (NULL, 67, 64, '2018-07-07', '2018-07-10', 3),
	   (NULL, 65, 64, '2018-07-10', '2018-07-14', 1),
	   (NULL, 68, 63, '2018-09-23', '2018-09-28', 4),
	   (NULL, 66, 62, '2019-01-01', '2018-02-01', 1),
	   (NULL, 65, 64, '2019-07-07', '2019-07-10', 3),
	   (NULL, 67, 64, '2018-07-10', '2018-07-14', 1),
	   (NULL, 68, 63, '2018-09-23', '2018-09-28', 4);


INSERT INTO reservation_status
VALUES (1, 'in progress'),
		(2, 'paid'),
		(3, 'canceled');


INSERT INTO room
VALUES (NULL, 'tulipe', '12m2', 0, 3, 'vue sur cour intérieure', 1, '120 euros', 2, 2),
		(NULL, 'coquelicot', '50m2', 1, 1, 'vue sur mer', 1, '500 euros', 3, 3),
		(NULL, 'mimosa', '60m2', 1, 2, 'vue sur le port', 0, '620 euros', 3, 3),
		(NULL, 'rose', '12m2', 0, 4, 'vue sur mer', 0, '90 euros', 1, 1),
		(NULL, 'marguerite', '13m2', 0, 2, 'vue sur cour intérieure', 1, '120 euros', 2, 2),
		(NULL, 'pensée', '52m2', 1, 1, 'vue sur mer', 1, '530 euros', 3, 3),
		(NULL, 'cactus', '62m2', 1, 2, 'vue sur le port', 0, '640 euros', 3, 3),
		(NULL, 'palmier', '13m2', 0, 4, 'vue sur mer', 0, '100 euros', 2, 1);


INSERT INTO service 
VALUES  (NULL, 'sèche cheveux', 'ventilation froide', '50 euros', 1),	
		(NULL, 'breakfast', 'french breakfast', '60 euros', 3),
		(NULL, 'massage', 'thaï', '120 euros', 2),
		(NULL, 'escort boy', 'grand brun musclé', '500', 4);


INSERT INTO service_list
VALUES	(NULL, 61, 95, '2018-01-24'),
		(NULL, 62, 97, '2018-07-12'),
		(NULL, 63, 98, '2018-09-24'),
		(NULL, 64, 100, '2019-07-10');







