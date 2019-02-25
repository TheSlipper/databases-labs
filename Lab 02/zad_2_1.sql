DROP SCHEMA IF EXISTS `lab_02`;

-- DROP TABLE IF EXISTS `lab_02`.`studenci`;
-- DROP TABLE IF EXISTS `lab_02`.`wydzialy`;
-- DROP TABLE IF EXISTS `lab_02`.`kierunki`;
-- DROP TABLE IF EXISTS `lab_02`.`stypendia`;
-- DROP TABLE IF EXISTS `lab_02`.`przyznane_stypendia`;

CREATE SCHEMA `lab_02`;

CREATE TABLE `lab_02`.`studenci` (
		id_studenta INT PRIMARY KEY,
        imie VARCHAR(90),
        nazwisko VARCHAR(90),
        data_urodzenia DATE,
        rok_studiow INT,
        id_wydzialu INT,
        id_kierunku INT
);

CREATE TABLE `lab_02`.`wydzialy` (
	id_wydzialu INT PRIMARY KEY,
    nazwa_wydzialu VARCHAR(90)
);

CREATE TABLE `lab_02`.`kierunki` (
	id_kierunku INT PRIMARY KEY,
    nazwa_kierunku VARCHAR(90)
);

CREATE TABLE `lab_02`.`stypendia` (
		id_stypendium INT PRIMARY KEY,
        nazwa_stypendium VARCHAR(90),
        maksymalna_wysokosc DECIMAL
);

CREATE TABLE `lab_02`.`przyznane_stypendia` (
	id_przyznane_stypendium INT PRIMARY KEY,
    id_studenta INT,
    id_stypendium INT,
    kwota_stypendium DECIMAL
);