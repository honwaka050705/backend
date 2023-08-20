truncate table years 
INSERT INTO years (emperor_name, generation, ad, created_at, updated_at) VALUES('令和', 126, 2019, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
INSERT INTO years (emperor_name, generation, ad, created_at, updated_at) VALUES('平成', 125, 1989, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
INSERT INTO years (emperor_name, generation, ad, created_at, updated_at) VALUES('昭和', 124, 1925, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
INSERT INTO years (emperor_name, generation, ad, created_at, updated_at) VALUES('大正', 123, 1912, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
INSERT INTO years (emperor_name, generation, ad, created_at, updated_at) VALUES('明治', 122, 1867, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());


SELECT `years`.* FROM `years` WHERE `years`.`generation` = 126;