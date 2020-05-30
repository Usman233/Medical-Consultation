-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 05:42 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE IF NOT EXISTS `chat_message` (
  `chat_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`chat_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'johnsmith', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(2, 'peterParker', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(3, 'davidMoore', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(5, 'usman', 'usman');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE IF NOT EXISTS `login_details` (
  `login_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL,
  PRIMARY KEY (`login_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_admins`
--

CREATE TABLE IF NOT EXISTS `p_admins` (
  `adminID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(10) unsigned NOT NULL,
  `lastactive` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ses` varchar(32) NOT NULL,
  `login` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(160) NOT NULL,
  `access` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `login` (`login`),
  KEY `ses` (`ses`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `p_admins`
--

INSERT INTO `p_admins` (`adminID`, `created`, `lastactive`, `status`, `ses`, `login`, `password`, `email`, `access`) VALUES
(1, 1590851272, 1590852231, 0, '65834e685403d4772c84e1cb7c1529c8', 'usman', '81dc9bdb52d04dc20036dbd8313ed055', 'rodvd33@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `p_canned`
--

CREATE TABLE IF NOT EXISTS `p_canned` (
  `canID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opID` int(10) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `catID` smallint(6) NOT NULL DEFAULT '-1',
  `cats_extra` text NOT NULL,
  `title` varchar(80) CHARACTER SET utf8 NOT NULL,
  `message` mediumtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`canID`),
  KEY `opID` (`opID`),
  KEY `deptID` (`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_canned_auto`
--

CREATE TABLE IF NOT EXISTS `p_canned_auto` (
  `opID` int(10) unsigned NOT NULL,
  `canID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_departments`
--

CREATE TABLE IF NOT EXISTS `p_departments` (
  `deptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visible` tinyint(4) NOT NULL,
  `display` tinyint(3) unsigned NOT NULL,
  `queue` tinyint(4) NOT NULL,
  `tshare` tinyint(4) NOT NULL,
  `texpire` int(10) unsigned NOT NULL,
  `rname` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `rquestion` tinyint(4) NOT NULL,
  `remail` tinyint(4) NOT NULL,
  `temail` tinyint(4) NOT NULL,
  `aemail` tinyint(4) NOT NULL,
  `temaild` tinyint(4) NOT NULL,
  `rtype` tinyint(4) NOT NULL,
  `rtime` int(10) unsigned NOT NULL,
  `savem` tinyint(3) unsigned NOT NULL,
  `vupload` varchar(45) NOT NULL,
  `ctimer` tinyint(1) NOT NULL DEFAULT '1',
  `custom` text CHARACTER SET utf8 NOT NULL,
  `smtp` text NOT NULL,
  `lang` varchar(15) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `email` varchar(160) NOT NULL,
  `emailm_cc` varchar(160) NOT NULL,
  `emailt` varchar(160) NOT NULL,
  `emailt_bcc` tinyint(1) NOT NULL,
  `msg_greet` text CHARACTER SET utf8 NOT NULL,
  `msg_offline` text CHARACTER SET utf8 NOT NULL,
  `msg_busy` text CHARACTER SET utf8 NOT NULL,
  `msg_email` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`deptID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `p_departments`
--

INSERT INTO `p_departments` (`deptID`, `visible`, `display`, `queue`, `tshare`, `texpire`, `rname`, `rquestion`, `remail`, `temail`, `aemail`, `temaild`, `rtype`, `rtime`, `savem`, `vupload`, `ctimer`, `custom`, `smtp`, `lang`, `name`, `email`, `emailm_cc`, `emailt`, `emailt_bcc`, `msg_greet`, `msg_offline`, `msg_busy`, `msg_email`) VALUES
(1, 1, 255, 0, 0, 0, 1, 1, 1, 1, 0, 0, 2, 45, 6, '0', 1, '', '', 'english', 'university', 'abc@gmail.com', '', '', 0, 'An agent will be with you shortly. Thank you for your patience.', 'Agents are not available at this time. Please leave a message.', 'Agents are not available at this time. Please leave a message.', 'Hi %%visitor%%,\r\n\r\nHere is the complete chat transcript for your reference:\r\n\r\n%%transcript%%\r\n\r\n==========\r\n\r\n%%operator%%\r\n%%op_email%%\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `p_dept_groups`
--

CREATE TABLE IF NOT EXISTS `p_dept_groups` (
  `groupID` int(10) unsigned NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(15) NOT NULL DEFAULT 'english',
  `deptids` varchar(45) NOT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_dept_ops`
--

CREATE TABLE IF NOT EXISTS `p_dept_ops` (
  `deptID` int(10) unsigned NOT NULL,
  `opID` int(10) unsigned NOT NULL,
  `display` tinyint(4) NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `dept_offline` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`deptID`,`opID`),
  KEY `display` (`display`,`visible`),
  KEY `dept_offline` (`dept_offline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_dept_vars`
--

CREATE TABLE IF NOT EXISTS `p_dept_vars` (
  `deptID` int(11) NOT NULL,
  `idle_o` tinyint(3) unsigned NOT NULL,
  `idle_v` tinyint(3) unsigned NOT NULL,
  `trans_f_dept` tinyint(3) unsigned NOT NULL,
  `prechat_form` tinyint(1) NOT NULL DEFAULT '1',
  `offline_form` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qest` tinyint(1) unsigned NOT NULL,
  `qpos` tinyint(1) unsigned NOT NULL,
  `qlimit` tinyint(2) unsigned NOT NULL DEFAULT '5',
  `timestamp` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `emarketID` int(10) unsigned NOT NULL,
  `qtexts` varchar(255) CHARACTER SET utf8 NOT NULL,
  `greeting_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `greeting_body` varchar(255) CHARACTER SET utf8 NOT NULL,
  `end_chat_msg` text CHARACTER SET utf8 NOT NULL,
  `gdpr_msg` text CHARACTER SET utf8 NOT NULL,
  `offline_msg_template` text CHARACTER SET utf8 NOT NULL,
  `offline_auto_reply` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_emarketing`
--

CREATE TABLE IF NOT EXISTS `p_emarketing` (
  `statID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emarketID` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `thevalue` tinyint(1) NOT NULL,
  `email` varchar(160) CHARACTER SET utf8 NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `sdate` int(10) unsigned NOT NULL,
  `ces` varchar(32) NOT NULL,
  PRIMARY KEY (`statID`),
  UNIQUE KEY `emarketID` (`emarketID`,`md5_vis`),
  KEY `created` (`created`),
  KEY `thevalue` (`thevalue`),
  KEY `email` (`email`),
  KEY `md5_vis` (`md5_vis`),
  KEY `sdate` (`sdate`),
  KEY `ces` (`ces`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_external`
--

CREATE TABLE IF NOT EXISTS `p_external` (
  `extID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`extID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_ext_ops`
--

CREATE TABLE IF NOT EXISTS `p_ext_ops` (
  `extID` int(10) NOT NULL,
  `opID` int(10) NOT NULL,
  UNIQUE KEY `extID` (`extID`,`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_footprints`
--

CREATE TABLE IF NOT EXISTS `p_footprints` (
  `created` int(10) unsigned NOT NULL,
  `archive` tinyint(1) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `os` tinyint(1) NOT NULL,
  `browser` tinyint(1) NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `md5_page` varchar(32) DEFAULT NULL,
  `onpage` varchar(255) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  KEY `ip` (`ip`),
  KEY `created` (`created`),
  KEY `md5_vis` (`md5_vis`),
  KEY `md5_page` (`md5_page`),
  KEY `archive` (`archive`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_footprints_u`
--

CREATE TABLE IF NOT EXISTS `p_footprints_u` (
  `footID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `md5_vis` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `updated` int(10) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `marketID` int(10) unsigned NOT NULL,
  `chatting` tinyint(1) NOT NULL,
  `os` tinyint(1) NOT NULL,
  `browser` tinyint(1) NOT NULL,
  `footprints` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL,
  `initiates` int(10) unsigned NOT NULL,
  `resolution` varchar(15) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `onpage` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `refer` text CHARACTER SET utf8 NOT NULL,
  `country` varchar(2) CHARACTER SET utf8 NOT NULL,
  `region` varchar(42) CHARACTER SET utf8 NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`footID`),
  UNIQUE KEY `md5_vis` (`md5_vis`),
  KEY `updated` (`updated`),
  KEY `created` (`created`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_footstats`
--

CREATE TABLE IF NOT EXISTS `p_footstats` (
  `sdate` int(10) unsigned NOT NULL,
  `md5_page` varchar(32) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `onpage` varchar(255) NOT NULL,
  PRIMARY KEY (`sdate`,`md5_page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_ips`
--

CREATE TABLE IF NOT EXISTS `p_ips` (
  `md5_vis` varchar(32) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `t_footprints` int(10) unsigned NOT NULL,
  `t_requests` int(10) unsigned NOT NULL,
  `t_initiate` int(10) unsigned NOT NULL,
  `i_footprints` int(10) unsigned NOT NULL,
  PRIMARY KEY (`md5_vis`),
  KEY `created` (`created`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lang_packs`
--

CREATE TABLE IF NOT EXISTS `p_lang_packs` (
  `deptID` int(10) unsigned NOT NULL,
  `lang_vars` text CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `deptID` (`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_marketing`
--

CREATE TABLE IF NOT EXISTS `p_marketing` (
  `marketID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skey` varchar(4) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `color` varchar(6) NOT NULL,
  PRIMARY KEY (`marketID`),
  KEY `skey` (`skey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_market_c`
--

CREATE TABLE IF NOT EXISTS `p_market_c` (
  `sdate` int(10) unsigned NOT NULL,
  `marketID` int(10) unsigned NOT NULL,
  `clicks` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`sdate`,`marketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_mboard`
--

CREATE TABLE IF NOT EXISTS `p_mboard` (
  `messageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `opID` int(10) unsigned NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`messageID`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `opID` (`opID`),
  KEY `messageID` (`messageID`,`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_messages`
--

CREATE TABLE IF NOT EXISTS `p_messages` (
  `messageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(10) unsigned NOT NULL,
  `chat` tinyint(3) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `footprints` int(10) unsigned NOT NULL,
  `ip` varchar(45) NOT NULL,
  `vname` varchar(80) NOT NULL,
  `vemail` varchar(160) NOT NULL,
  `ces` varchar(32) NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `subject` varchar(155) NOT NULL,
  `onpage` varchar(255) NOT NULL,
  `refer` text CHARACTER SET utf8 NOT NULL,
  `custom` text CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`messageID`),
  KEY `md5_vis` (`md5_vis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `p_messages`
--

INSERT INTO `p_messages` (`messageID`, `created`, `chat`, `deptID`, `footprints`, `ip`, `vname`, `vemail`, `ces`, `md5_vis`, `subject`, `onpage`, `refer`, `custom`, `message`) VALUES
(1, 1590852270, 0, 1, 1, '::1', 'faiqa', 'abc@gmail.com', '', '3d4a6ee706ddc4876aee5f12b106771a', 'question', '', '', '', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `p_notes`
--

CREATE TABLE IF NOT EXISTS `p_notes` (
  `noteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(10) unsigned NOT NULL,
  `opID` int(10) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `isnote` tinyint(3) unsigned NOT NULL,
  `ces` varchar(32) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`noteID`),
  KEY `created` (`created`),
  KEY `opID` (`opID`),
  KEY `deptID` (`deptID`),
  KEY `ces` (`ces`),
  KEY `isnote` (`isnote`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_operators`
--

CREATE TABLE IF NOT EXISTS `p_operators` (
  `opID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lastactive` int(10) unsigned NOT NULL,
  `lastrequest` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `mapper` tinyint(1) unsigned NOT NULL,
  `mapp` tinyint(1) unsigned NOT NULL,
  `signall` tinyint(4) NOT NULL,
  `rate` tinyint(1) unsigned NOT NULL,
  `op2op` tinyint(1) unsigned NOT NULL,
  `traffic` tinyint(1) unsigned NOT NULL,
  `viewip` tinyint(1) unsigned NOT NULL,
  `nchats` tinyint(1) NOT NULL DEFAULT '1',
  `maxc` tinyint(1) NOT NULL,
  `maxco` tinyint(1) NOT NULL,
  `canID` tinyint(4) NOT NULL,
  `tag` tinyint(1) NOT NULL DEFAULT '1',
  `peer` tinyint(1) unsigned NOT NULL,
  `upload` varchar(45) NOT NULL,
  `ses` varchar(32) NOT NULL,
  `ces` varchar(32) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `sms` int(10) unsigned NOT NULL,
  `smsnum` varchar(155) NOT NULL,
  `login` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `email` varchar(160) NOT NULL,
  `pic` tinyint(1) unsigned NOT NULL,
  `pic_form_display` tinyint(1) unsigned NOT NULL,
  `view_chats` tinyint(1) unsigned NOT NULL,
  `dept_offline` tinyint(1) NOT NULL,
  `theme` varchar(15) NOT NULL,
  PRIMARY KEY (`opID`),
  KEY `ses` (`ses`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `maxc` (`maxc`),
  KEY `mapp` (`mapp`),
  KEY `rate` (`rate`),
  KEY `sms` (`sms`),
  KEY `smsnum` (`smsnum`),
  KEY `email` (`email`),
  KEY `lastactive` (`lastactive`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_opstatus_log`
--

CREATE TABLE IF NOT EXISTS `p_opstatus_log` (
  `created` int(11) NOT NULL,
  `opID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `mapp` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`created`,`opID`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_op_vars`
--

CREATE TABLE IF NOT EXISTS `p_op_vars` (
  `opID` int(10) unsigned NOT NULL,
  `canID` int(10) unsigned NOT NULL,
  `sound` tinyint(1) NOT NULL,
  `blink` tinyint(1) NOT NULL,
  `blink_r` tinyint(1) NOT NULL,
  `dn_response` tinyint(1) NOT NULL,
  `dn_request` tinyint(1) NOT NULL,
  `dn_always` tinyint(1) NOT NULL,
  `nsleep` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `shorts` tinyint(1) unsigned NOT NULL,
  `mapp_c` tinyint(1) unsigned NOT NULL,
  `pic_edit` tinyint(1) unsigned NOT NULL,
  `upload_ses` int(10) unsigned NOT NULL,
  `vis_idle_canned` varchar(90) NOT NULL,
  `can_cats` text CHARACTER SET utf8 NOT NULL,
  `lang_vars` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_proaction_c`
--

CREATE TABLE IF NOT EXISTS `p_proaction_c` (
  `proactionID` int(11) NOT NULL,
  `sdate` int(10) unsigned NOT NULL,
  `views` mediumint(8) unsigned NOT NULL,
  `taken` mediumint(8) unsigned NOT NULL,
  `declined` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`proactionID`,`sdate`),
  KEY `views` (`views`,`taken`,`declined`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_queue`
--

CREATE TABLE IF NOT EXISTS `p_queue` (
  `queueID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `updated` int(10) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `embed` tinyint(1) unsigned NOT NULL,
  `ces` varchar(32) NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `ops_d` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`queueID`),
  KEY `ces` (`ces`),
  KEY `md5_vis` (`md5_vis`),
  KEY `deptID` (`deptID`),
  KEY `ops_d` (`ops_d`),
  KEY `embed` (`embed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_queue_log`
--

CREATE TABLE IF NOT EXISTS `p_queue_log` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(10) unsigned NOT NULL,
  `ended` int(10) unsigned NOT NULL,
  `sdate` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `ces` varchar(32) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `created` (`created`),
  KEY `ended` (`ended`),
  KEY `status` (`status`),
  KEY `ces` (`ces`),
  KEY `deptID` (`deptID`),
  KEY `sdate` (`sdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_refer`
--

CREATE TABLE IF NOT EXISTS `p_refer` (
  `md5_vis` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `archive` tinyint(1) NOT NULL,
  `marketID` int(10) unsigned NOT NULL,
  `md5_page` varchar(32) NOT NULL,
  `refer` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`md5_vis`),
  KEY `created` (`created`),
  KEY `md5_page` (`md5_page`),
  KEY `archive` (`archive`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_referstats`
--

CREATE TABLE IF NOT EXISTS `p_referstats` (
  `sdate` int(10) unsigned NOT NULL,
  `md5_page` varchar(32) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `refer` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sdate`,`md5_page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_requests`
--

CREATE TABLE IF NOT EXISTS `p_requests` (
  `requestID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` int(10) unsigned NOT NULL,
  `ended` int(10) unsigned NOT NULL,
  `tupdated` int(11) NOT NULL,
  `updated` int(10) unsigned NOT NULL,
  `vupdated` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto_pop` tinyint(4) NOT NULL,
  `initiated` tinyint(1) NOT NULL,
  `deptID` int(11) unsigned NOT NULL,
  `opID` int(11) unsigned NOT NULL,
  `op2op` int(10) unsigned NOT NULL,
  `marketID` int(10) NOT NULL,
  `bses_id` varchar(32) CHARACTER SET utf8 NOT NULL,
  `os` tinyint(1) NOT NULL,
  `browser` tinyint(1) NOT NULL,
  `requests` int(10) unsigned NOT NULL,
  `rloop` tinyint(3) unsigned NOT NULL,
  `tloop` tinyint(4) NOT NULL,
  `peer` int(10) unsigned NOT NULL,
  `ces` varchar(32) NOT NULL,
  `resolution` varchar(15) NOT NULL,
  `vname` varchar(80) CHARACTER SET utf8 NOT NULL,
  `vemail` varchar(160) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `country` varchar(3) NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `md5_vis_` varchar(32) NOT NULL,
  `sim_ops` varchar(155) NOT NULL,
  `sim_ops_` varchar(155) NOT NULL,
  `onpage` varchar(255) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `rstring` varchar(255) NOT NULL,
  `refer` text CHARACTER SET utf8 NOT NULL,
  `custom` text CHARACTER SET utf8 NOT NULL,
  `question` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`requestID`),
  UNIQUE KEY `ces` (`ces`),
  KEY `opID` (`opID`),
  KEY `op2op` (`op2op`),
  KEY `status` (`status`),
  KEY `md5_vis` (`md5_vis`),
  KEY `updated` (`updated`),
  KEY `vupdated` (`vupdated`),
  KEY `ended` (`ended`),
  KEY `md5_vis_` (`md5_vis_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_req_log`
--

CREATE TABLE IF NOT EXISTS `p_req_log` (
  `ces` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `accepted` int(10) unsigned NOT NULL,
  `accepted_op` int(10) unsigned NOT NULL,
  `duration` mediumint(8) unsigned NOT NULL,
  `ended` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `archive` tinyint(1) NOT NULL,
  `status_msg` tinyint(1) NOT NULL,
  `initiated` tinyint(1) NOT NULL,
  `deptID` int(11) unsigned NOT NULL,
  `opID` int(11) unsigned NOT NULL,
  `op2op` int(11) NOT NULL,
  `marketID` int(10) NOT NULL,
  `os` tinyint(1) NOT NULL,
  `browser` tinyint(1) NOT NULL,
  `idle_disconnect` tinyint(4) NOT NULL,
  `tag` tinyint(3) unsigned NOT NULL,
  `disc` tinyint(3) unsigned NOT NULL,
  `resolution` varchar(15) NOT NULL,
  `vname` varchar(40) CHARACTER SET utf8 NOT NULL,
  `vemail` varchar(160) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `sim_ops` varchar(155) NOT NULL,
  `onpage` varchar(255) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `custom` text CHARACTER SET utf8 NOT NULL,
  `question` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ces`),
  KEY `opID` (`opID`),
  KEY `md5_vis` (`md5_vis`),
  KEY `created` (`created`),
  KEY `archive` (`archive`),
  KEY `tag` (`tag`),
  KEY `ended` (`ended`),
  KEY `deptID` (`deptID`),
  KEY `initiated` (`initiated`),
  KEY `op2op` (`op2op`),
  KEY `accepted` (`accepted`),
  KEY `accepted_op` (`accepted_op`),
  KEY `duration` (`duration`),
  KEY `status_msg` (`status`,`status_msg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_rstats_depts`
--

CREATE TABLE IF NOT EXISTS `p_rstats_depts` (
  `sdate` int(10) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  `requests` int(10) NOT NULL,
  `taken` smallint(5) unsigned NOT NULL,
  `declined` smallint(5) unsigned NOT NULL,
  `message` smallint(5) unsigned NOT NULL,
  `initiated` smallint(5) unsigned NOT NULL,
  `rateit` smallint(5) unsigned NOT NULL,
  `ratings` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sdate`,`deptID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_rstats_log`
--

CREATE TABLE IF NOT EXISTS `p_rstats_log` (
  `ces` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `opID` int(10) unsigned NOT NULL,
  `deptID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ces`,`opID`),
  KEY `created` (`created`),
  KEY `opID` (`opID`),
  KEY `deptID` (`deptID`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_rstats_ops`
--

CREATE TABLE IF NOT EXISTS `p_rstats_ops` (
  `sdate` int(10) unsigned NOT NULL,
  `opID` int(10) unsigned NOT NULL,
  `requests` int(10) NOT NULL,
  `taken` smallint(5) unsigned NOT NULL,
  `declined` smallint(5) unsigned NOT NULL,
  `message` smallint(5) unsigned NOT NULL,
  `initiated` smallint(5) unsigned NOT NULL,
  `rateit` smallint(5) unsigned NOT NULL,
  `ratings` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sdate`,`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_transcripts`
--

CREATE TABLE IF NOT EXISTS `p_transcripts` (
  `ces` varchar(32) NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `ended` int(10) unsigned NOT NULL,
  `deptID` int(11) unsigned NOT NULL,
  `opID` int(11) unsigned NOT NULL,
  `accepted_op` int(10) unsigned NOT NULL,
  `initiated` tinyint(1) NOT NULL,
  `op2op` int(10) unsigned NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `encr` tinyint(1) NOT NULL,
  `fsize` mediumint(9) NOT NULL,
  `noteID` int(10) unsigned NOT NULL,
  `marketID` tinyint(3) unsigned NOT NULL,
  `tag` tinyint(3) unsigned NOT NULL,
  `vname` varchar(80) CHARACTER SET utf8 NOT NULL,
  `vemail` varchar(160) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `md5_vis` varchar(32) NOT NULL,
  `custom` text CHARACTER SET utf8 NOT NULL,
  `question` mediumtext CHARACTER SET utf8 NOT NULL,
  `formatted` mediumtext CHARACTER SET utf8 NOT NULL,
  `plain` mediumtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ces`),
  KEY `created` (`created`),
  KEY `rating` (`rating`),
  KEY `opID` (`opID`),
  KEY `md5_vis` (`md5_vis`),
  KEY `deptID` (`deptID`),
  KEY `op2op` (`op2op`),
  KEY `encr` (`encr`),
  KEY `noteID` (`noteID`),
  KEY `tag` (`tag`),
  KEY `accepted_op` (`accepted_op`),
  KEY `marketID` (`marketID`),
  FULLTEXT KEY `plain` (`plain`),
  FULLTEXT KEY `custom` (`custom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vars`
--

CREATE TABLE IF NOT EXISTS `p_vars` (
  `varID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `position` tinyint(1) NOT NULL,
  `ts_clean` int(10) unsigned NOT NULL,
  `ts_clear` int(10) unsigned NOT NULL,
  `ts_queue` int(10) unsigned NOT NULL,
  `char_set` varchar(155) NOT NULL,
  `profile_pic` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`varID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `p_vars`
--

INSERT INTO `p_vars` (`varID`, `code`, `position`, `ts_clean`, `ts_clear`, `ts_queue`, `char_set`, `profile_pic`) VALUES
(1, '0', 1, 0, 1590853020, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_doctor`
--

CREATE TABLE IF NOT EXISTS `reg_doctor` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password_doc` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `reg_doctor`
--

INSERT INTO `reg_doctor` (`id`, `name`, `email`, `password_doc`, `city`, `specialization`) VALUES
(5, 'faiqa', 'faiqa@gmail.com', '1234', 'lahore', 'dentist'),
(6, 'faiqa', 'abc@gmail.com', '1234', 'karachi', 'gynacologist'),
(7, 'faiqa', 'abc@gmail.com', '1234', 'karachi', 'gynacologist');

-- --------------------------------------------------------

--
-- Table structure for table `reg_patient`
--

CREATE TABLE IF NOT EXISTS `reg_patient` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password_pnt` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reg_patient`
--

INSERT INTO `reg_patient` (`id`, `name`, `email`, `password_pnt`, `city`, `disease`) VALUES
(1, 'Usman', 'usman@gmail.com', 'usman', 'lahore', ''),
(2, 'Usman', 'abc@gmail.com', 'hgjhg', 'lahore', ''),
(3, 'Usman', 'abc@gmail.com', 'bnmbmn', 'lahore', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
