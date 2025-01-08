CREATE TABLE IF NOT EXISTS `bans` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) DEFAULT (NULL),
  `license` VARCHAR(50) DEFAULT (NULL),
  `discord` VARCHAR(50) DEFAULT (NULL),
  `ip` VARCHAR(50) DEFAULT (NULL),
  `reason` TEXT DEFAULT (NULL),
  `expire` INT(11) DEFAULT (NULL),
  `bannedby` VARCHAR(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `players` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `citizenid` VARCHAR(11) NOT NULL,
  `cid` INT(11) DEFAULT (NULL),
  `license` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `money` TEXT NOT NULL,
  `charinfo` TEXT DEFAULT (NULL),
  `job` TEXT NOT NULL,
  `gang` TEXT DEFAULT (NULL),
  `position` TEXT NOT NULL,
  `metadata` TEXT NOT NULL,
  `inventory` LONGTEXT DEFAULT (NULL),
  `last_updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `citizenid` VARCHAR(11) NOT NULL,
  `model` VARCHAR(255) NOT NULL,
  `skin` TEXT NOT NULL,
  `active` TINYINT(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `citizenid` VARCHAR(11) DEFAULT (NULL),
  `outfitname` VARCHAR(50) NOT NULL,
  `model` VARCHAR(50) DEFAULT (NULL),
  `skin` TEXT DEFAULT (NULL),
  `outfitId` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` VARCHAR(50) DEFAULT (NULL),
  `targetIdentifier` VARCHAR(50) DEFAULT (NULL),
  `reason` TEXT DEFAULT (NULL),
  `warnId` VARCHAR(50) DEFAULT (NULL),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `inventories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(50) NOT NULL,
  `items` LONGTEXT DEFAULT ('[]'),
  PRIMARY KEY (`identifier`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
