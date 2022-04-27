CREATE DATABASE my_cricket_profile;

CREATE TABLE `my_cricket_profile`.`user` (
  `id` INT NOT NULL,
  `user_fname` VARCHAR(45) NULL,
  `user_lname` VARCHAR(45) NULL,
  `email_id` VARCHAR(45) NULL,
  `login_id` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `login_id_UNIQUE` (`login_id` ASC) VISIBLE,
  UNIQUE INDEX `email_id_UNIQUE` (`email_id` ASC) VISIBLE);
  
CREATE TABLE `my_cricket_profile`.`team` (
  `id` INT NOT NULL,
  `team_name` VARCHAR(45) NULL,
  `team_identifier` VARCHAR(45) NOT NULL,
  `owner_fk` INT NOT NULL,
  `captain_fk` INT NOT NULL,
  `location` VARCHAR(45) NULL,
  `size` INT ZEROFILL NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `team_identifier_UNIQUE` (`team_identifier` ASC) VISIBLE,
  CONSTRAINT `team_captain_fk`
    FOREIGN KEY (`id`)
    REFERENCES `my_cricket_profile`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `team_owner_fk`
    FOREIGN KEY (`id`)
    REFERENCES `my_cricket_profile`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `my_cricket_profile`.`tournament` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `winner_fk` int DEFAULT NULL,
  `runner_fk` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `organizer_fk` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `organizer_fk` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  CONSTRAINT `runner_fk` FOREIGN KEY (`id`) REFERENCES `team` (`id`),
  CONSTRAINT `winner_fk` FOREIGN KEY (`id`) REFERENCES `team` (`id`)
);

CREATE TABLE `my_cricket_profile`.`tournament_teams` (
  `id` int NOT NULL,
  `tournament_fk` int DEFAULT NULL,
  `team_fk` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `team_fk` FOREIGN KEY (`id`) REFERENCES `team` (`id`),
  CONSTRAINT `tournament_fk` FOREIGN KEY (`id`) REFERENCES `tournament` (`id`)
);
