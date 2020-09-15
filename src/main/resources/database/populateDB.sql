INSERT INTO `user` (`firstName`,`lastName`,`age`,`email`,`password`)
VALUES
("Johny","Depp","40","john@gmail.com", "Depp"),
("Brad","Pit","50","bread@gmail.com", "Jolie"),
("Roy","Jons","80","roy@gmail.com", "RoJo"),
("Ceanu","Rivs","55","rivz@gmail.com", "rivzz"),
("Daniel","Kryachko","21","dan@ya.ru", "pass");

INSERT INTO `roles` (`name`)
VALUES
("ADMIN"),
("USER");

INSERT INTO `user_roles` (`user_id`,`roles_id`)
VALUES
("1","2"),
("2","2"),
("3","2"),
("4","2"),
("5","1"),
("5","2");