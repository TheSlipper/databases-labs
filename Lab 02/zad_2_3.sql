-- W pdfie przez przypadek ten podpunkt ma nazwe zad_2_2
ALTER TABLE `lab_02`.`studenci` ADD COLUMN oceny INTEGER; -- Figure if there is such thing as Int array for this

ALTER TABLE `lab_02`.`stypendia` MODIFY maksymalna_wysokosc INT NOT NULL;

ALTER TABLE `lab_02`.`stypendia` RENAME TO `lab_02`.`rodzaje_stypendium`;
ALTER TABLE `lab_02`.`rodzaje_stypendium` CHANGE id_stypendium id_rodzaju_stypendium INT;

ALTER TABLE `lab_02`.`studenci` MODIFY nazwisko VARCHAR(100);

-- CREATE INDEX nazwisko_ind ON studenci (nazwisko);
CREATE INDEX imie_ind ON `lab_02`.`studenci` (imie);
CREATE INDEX nazwisko_ind ON `lab_02`.`studenci` (nazwisko);

