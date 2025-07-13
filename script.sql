USE bdd_toon;



CREATE TABLE IF NOT EXISTS `elite_skill` (
  `id_skill` binary(16) NOT NULL,
  `desc_skill` varchar(255) DEFAULT NULL,
  `name_skill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_skill`)
) ;

CREATE TABLE IF NOT EXISTS `toon` (
  `toon_id` binary(16) NOT NULL,
  `toon_campaign` varchar(255) DEFAULT NULL,
  `toon_level` int DEFAULT NULL,
  `toon_name` varchar(20) DEFAULT NULL,
  `toon_profession` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`toon_id`),
  CONSTRAINT `toon_chk_1` CHECK (((`toon_level` <= 20) and (`toon_level` >= 1)))
);

CREATE TABLE IF NOT EXISTS `toon_elite_skill_list` (
  `toon_toon_id` binary(16) NOT NULL,
  `elite_skill_list_id_skill` binary(16) NOT NULL,
  KEY `FKbf9wq80hpwojwett2w34gfs13` (`elite_skill_list_id_skill`),
  KEY `FKorfeckofw3m81k1iupaet8cwq` (`toon_toon_id`),
  CONSTRAINT `FKbf9wq80hpwojwett2w34gfs13` FOREIGN KEY (`elite_skill_list_id_skill`) REFERENCES `elite_skill` (`id_skill`),
  CONSTRAINT `FKorfeckofw3m81k1iupaet8cwq` FOREIGN KEY (`toon_toon_id`) REFERENCES `toon` (`toon_id`)
);

CREATE TABLE IF NOT EXISTS `boss` (
  `id_boss` binary(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `elite_skill_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id_boss`),
  KEY `FKor7kvq88pm92cpei8ndqwl42b` (`elite_skill_id`),
  CONSTRAINT `FKor7kvq88pm92cpei8ndqwl42b` FOREIGN KEY (`elite_skill_id`) REFERENCES `elite_skill` (`id_skill`)
); 
