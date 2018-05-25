/*===================================================
=====     CREATION DB ET TABLES                 =====
===================================================*/

CREATE DATABASE hotel CHARACTER SET 'utf8';



CREATE TABLE bathroom (
	id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  	name varchar(40) DEFAULT NULL,
   PRIMARY KEY (id)	        
)ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;



CREATE TABLE bedroom (
	id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  	name varchar(40) DEFAULT NULL,
   PRIMARY KEY (id)	        
)ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;



CREATE TABLE category_service (
	id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  	name varchar(40) DEFAULT NULL,
   PRIMARY KEY (id)	        
)ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


CREATE TABLE customer (
  id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(40) DEFAULT NULL,
  first_name varchar(40) NOT NULL,
  adress VARCHAR(250) NOT NULL,
  mail varchar(40) NOT NULL,
  password varchar(20),
  phone INT NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


CREATE TABLE reservation (
    id SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
   	id_customer SMALLINT(6) UNSIGNED NOT NULL,
	CONSTRAINT fk_id_customer          
        FOREIGN KEY (id_customer)           
        REFERENCES customer(id),
    id_room SMALLINT(6) UNSIGNED NOT NULL,
	CONSTRAINT fk_id_room          
        FOREIGN KEY (id_room)           
        REFERENCES room(id),  
    id_reservation_status SMALLINT(6) UNSIGNED NOT NULL,
    CONSTRAINT fk_reservation_status
    	FOREIGN KEY (id_reservation_status)
    	REFERENCES reservation_status(id),
    arrival DATETIME NOT NULL,
    departure DATETIME NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


CREATE TABLE reservation_status (
	id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  	name varchar(40) DEFAULT NULL,
   PRIMARY KEY (id)	        
)ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


CREATE TABLE room (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    area VARCHAR(20),
    suite BOOLEAN (1),
    floor INT NOT NULL,
    view VARCHAR(40) NOT NULL,
    reduced_mobility BOOLEAN (1),
    price INT NOT NULL,
    id_bedroom SMALLINT(6) UNSIGNED NOT NULL,
    CONSTRAINT fk_id_bedroom          
        FOREIGN KEY (id_bedroom)           
        REFERENCES bedroom(id),
    id_bathroom SMALLINT(6) UNSIGNED NOT NULL,
    CONSTRAINT fk_id_bathroom          
        FOREIGN KEY (id_bathroom)           
        REFERENCES bathroom(id),  
    PRIMARY KEY (id)
)ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


CREATE TABLE service (
  	id smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  	name varchar(40) DEFAULT NULL,
  	description varchar(250) NOT NULL,
  	price VARCHAR(20) NOT NULL,
  	id_category_service SMALLINT(6) UNSIGNED NOT NULL,
	CONSTRAINT fk_id_category_service          
        FOREIGN KEY (id_category_service)           
        REFERENCES category_service(id),
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


CREATE TABLE service_list (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_service SMALLINT(6) UNSIGNED NOT NULL,
	CONSTRAINT fk_id_service         
        FOREIGN KEY (id_service)           
        REFERENCES service(id),
    id_reservation SMALLINT(6) UNSIGNED NOT NULL,
	CONSTRAINT fk_id_reservation          
        FOREIGN KEY (id_reservation)           
        REFERENCES reservation(id), 
    date_time DATETIME NOT NULL,
    PRIMARY KEY (id)           
)ENGINE=INNODB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;



  