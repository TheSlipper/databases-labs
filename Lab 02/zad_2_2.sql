-- studenci powiązania
ALTER TABLE `lab_02`.`studenci` ADD FOREIGN KEY (id_kierunku) 
								REFERENCES `lab_02`.`kierunki`(id_kierunku) ON DELETE SET NULL;
ALTER TABLE `lab_02`.`studenci` ADD FOREIGN KEY (id_wydzialu) 
								REFERENCES `lab_02`.`wydzialy`(id_wydzialu) ON DELETE SET NULL;

-- przyznane_stypendia powiązania
ALTER TABLE `lab_02`.`przyznane_stypendia` ADD FOREIGN KEY (id_studenta) 
								REFERENCES `lab_02`.`studenci`(id_studenta) ON DELETE SET NULL;
ALTER TABLE `lab_02`.`przyznane_stypendia` ADD FOREIGN KEY (id_stypendium) 
								REFERENCES `lab_02`.`stypendia`(id_stypendium) ON DELETE SET NULL;