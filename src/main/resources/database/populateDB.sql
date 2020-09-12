INSERT INTO `user` (`username`,`password`)
VALUES
("Jonny_Depp", "Depp"),
("Brad_Pit", "Bread"),
("Silvester_Stallone", "Steel"),
("Mohamed_Ali", "AliExpress"),
("Roy_Jons", "Johns"),
("Ceanu_Rivs", "Rivzz"),
("dan", "123");

INSERT INTO `roles` (`name`)
VALUES
("ROLE_ADMIN"),
("ROLE_USER");

INSERT INTO `user_roles` (`user_id`,`roles_id`)
VALUES
("1","1"),
("1","2"),
("7","1");