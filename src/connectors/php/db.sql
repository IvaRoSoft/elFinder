DROP TABLE IF EXISTS `elfinder_file`;
CREATE TABLE IF NOT EXISTS `elfinder_file` (
  `id` int(7) unsigned NOT NULL auto_increment,
  `parent_id` int(7) unsigned NOT NULL,
  `name` varchar(256) collate utf8_unicode_ci NOT NULL,
  `content` longblob NOT NULL,
  `size` int(10) unsigned NOT NULL default '0',
  `mtime` int(10) unsigned NOT NULL,
  `mime` varchar(256) collate utf8_unicode_ci NOT NULL default 'unknown',
  `width` int(5) NOT NULL,
  `height` int(5) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `parent_id_2` (`parent_id`,`name`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `elfinder_attribute`;
CREATE TABLE IF NOT EXISTS `elfinder_attribute` (
	`file_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
	`user_id` int(7) unsigned NOT NULL,
	`aread`   enum('1', '0') NOT NULL DEFAULT '1',
	`awrite`  enum('1', '0') NOT NULL DEFAULT '1',
	`alock`   enum('1', '0') NOT NULL DEFAULT '0',
	`ahidden` enum('1', '0') NOT NULL DEFAULT '0',
	PRIMARY KEY (`file_id`, `user_id`)
) ENGINE=MyISAM;