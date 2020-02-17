BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `truckpad_driver_register_trucktype` (
	`truck_code`	integer unsigned NOT NULL CHECK("truck_code" >= 0),
	`type_name`	varchar ( 30 ) NOT NULL,
	`created_at`	datetime NOT NULL,
	PRIMARY KEY(`truck_code`)
);
INSERT INTO `truckpad_driver_register_trucktype` VALUES (1,'Caminhão 3/4','2020-02-16 17:13:15.577045');
INSERT INTO `truckpad_driver_register_trucktype` VALUES (2,'Caminhão Toco','2020-02-16 17:13:15.577045');
INSERT INTO `truckpad_driver_register_trucktype` VALUES (3,'Caminhão T ruck','2020-02-16 17:13:15.577045');
INSERT INTO `truckpad_driver_register_trucktype` VALUES (4,'Carreta Simples','2020-02-16 17:13:15.577045');
INSERT INTO `truckpad_driver_register_trucktype` VALUES (5,'Carreta Eixo Extendido','2020-02-16 17:13:15.577045');
CREATE TABLE IF NOT EXISTS `truckpad_driver_register_trip` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`origin_name`	varchar ( 150 ) NOT NULL,
	`origin_latitude`	varchar ( 15 ) NOT NULL,
	`origin_longitude`	varchar ( 15 ) NOT NULL,
	`destiny_name`	varchar ( 150 ) NOT NULL,
	`destiny_latitude`	varchar ( 15 ) NOT NULL,
	`destiny_longitude`	varchar ( 15 ) NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL,
	`driver_id`	integer NOT NULL,
	`trip_date`	datetime NOT NULL,
	FOREIGN KEY(`driver_id`) REFERENCES `truckpad_driver_register_driver`(`id`) DEFERRABLE INITIALLY DEFERRED
);
INSERT INTO `truckpad_driver_register_trip` VALUES (1,'São Paulo','-23.5475','-46.63611','Belo Horizonte','-19.8157','-43.9542 19','2020-02-16 21:34:07.393189','2020-02-16 21:34:07.393189',1,'2020-03-18 09:00:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (2,'São Paulo','-23.5475','-46.63611','Brasilia','-15.7934036','-47.8823172','2020-01-16 21:34:49.008939','2020-01-16 21:34:49.008939',2,'2020-03-24 03:00:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (3,'São Paulo','-23.5475','-46.63611','Porto Seguro','-16.40474135','-39.41720537','2020-03-16 21:35:24.232381','2020-03-16 21:35:24.232381',3,'2020-02-20 23:30:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (4,'Belo Horizonte','-19.8157','-43.9542 19','São Paulo','-23.5475','-46.63611','2020-01-16 21:34:07.393189','2020-01-16 21:34:07.393189',4,'2020-04-01 09:00:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (5,'Belo Horizonte','-19.8157','-43.9542 19','Brasilia','-15.7934036','-47.8823172','2020-03-16 21:34:49.008939','2020-03-16 21:34:49.008939',5,'2020-03-01 03:00:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (6,'Belo Horizonte','-19.8157','-43.9542 19','Porto Seguro','-16.40474135','-39.41720537','2020-02-16 21:35:24.232381','2020-02-16 21:35:24.232381',1,'2020-02-10 23:30:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (7,'Brasilia','-15.7934036','-47.8823172','Belo Horizonte','-19.8157','-43.9542 19','2020-04-16 21:34:07.393189','2020-04-16 21:34:07.393189',2,'2020-02-20 09:00:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (8,'Brasilia','-15.7934036','-47.8823172','São Paulo','-23.5475','-46.63611','2020-05-16 21:34:49.008939','2020-05-16 21:34:49.008939',3,'2020-03-17 03:00:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (9,'Brasilia','-15.7934036','-47.8823172','Porto Seguro','-16.40474135','-39.41720537','2020-02-16 21:35:24.232381','2020-02-16 21:35:24.232381',4,'2020-03-16 23:30:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (10,'Porto Seguro','-16.40474135','-39.41720537','São Paulo','-23.5475','-46.63611','2020-01-16 21:35:24.232381','2020-01-16 21:35:24.232381',5,'2020-02-16 23:30:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (11,'Porto Seguro','-16.40474135','-39.41720537','Belo Horizonte','-19.8157','-43.9542 19','2020-02-16 21:35:24.232381','2020-02-16 21:35:24.232381',1,'2020-02-19 23:30:00');
INSERT INTO `truckpad_driver_register_trip` VALUES (12,'Porto Seguro','-16.40474135','-39.41720537','Brasilia','-15.7934036','-47.8823172','2020-01-16 21:35:24.232381','2020-01-16 21:35:24.232381',2,'2020-02-20 23:30:00');
CREATE TABLE IF NOT EXISTS `truckpad_driver_register_gender` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`gender`	varchar ( 30 ) NOT NULL
);
INSERT INTO `truckpad_driver_register_gender` VALUES (1,'Masculino');
INSERT INTO `truckpad_driver_register_gender` VALUES (2,'Feminino');
INSERT INTO `truckpad_driver_register_gender` VALUES (3,'Outros');
CREATE TABLE IF NOT EXISTS `truckpad_driver_register_driverlicense` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`driver_license`	varchar ( 1 ) NOT NULL
);
INSERT INTO `truckpad_driver_register_driverlicense` VALUES (1,'A');
INSERT INTO `truckpad_driver_register_driverlicense` VALUES (2,'B');
INSERT INTO `truckpad_driver_register_driverlicense` VALUES (3,'C');
INSERT INTO `truckpad_driver_register_driverlicense` VALUES (4,'D');
INSERT INTO `truckpad_driver_register_driverlicense` VALUES (5,'E');
CREATE TABLE IF NOT EXISTS `truckpad_driver_register_driver` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 100 ) NOT NULL,
	`age`	decimal NOT NULL,
	`has_vehicle`	bool NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL,
	`gender_id`	integer NOT NULL,
	`license_type_id`	integer NOT NULL,
	`truck_type_id`	integer NOT NULL,
	`has_cargo`	bool NOT NULL,
	FOREIGN KEY(`license_type_id`) REFERENCES `truckpad_driver_register_driverlicense`(`id`) DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY(`truck_type_id`) REFERENCES `truckpad_driver_register_trucktype`(`truck_code`) DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY(`gender_id`) REFERENCES `truckpad_driver_register_gender`(`id`) DEFERRABLE INITIALLY DEFERRED
);
INSERT INTO `truckpad_driver_register_driver` VALUES (1,'Willian Nakau',33,1,'2019-02-15 18:43:43.355629','2020-02-16 18:47:53.265135',1,4,4,1);
INSERT INTO `truckpad_driver_register_driver` VALUES (2,'João Dias',45,1,'2020-01-14 18:55:58.900709','2020-02-16 18:55:58.900735',1,5,5,1);
INSERT INTO `truckpad_driver_register_driver` VALUES (3,'Fernando Fernandes',35,0,'2020-01-15 18:56:15.648483','2020-02-16 18:56:15.648513',1,4,3,1);
INSERT INTO `truckpad_driver_register_driver` VALUES (4,'Fernando Santana de Oliveira',40,1,'2020-02-14 18:56:37.036635','2020-02-16 18:56:37.036683',1,4,2,0);
INSERT INTO `truckpad_driver_register_driver` VALUES (5,'Mariana Lima',34,0,'2020-02-17 18:57:29.502957','2020-02-16 18:57:29.502982',2,3,1,1);
CREATE INDEX IF NOT EXISTS `truckpad_driver_register_trip_driver_id_4760555e` ON `truckpad_driver_register_trip` (
	`driver_id`
);
CREATE INDEX IF NOT EXISTS `truckpad_driver_register_driver_truck_type_id_91f052f5` ON `truckpad_driver_register_driver` (
	`truck_type_id`
);
CREATE INDEX IF NOT EXISTS `truckpad_driver_register_driver_license_type_id_d508be74` ON `truckpad_driver_register_driver` (
	`license_type_id`
);
CREATE INDEX IF NOT EXISTS `truckpad_driver_register_driver_gender_id_7b1b767e` ON `truckpad_driver_register_driver` (
	`gender_id`
);
COMMIT;

