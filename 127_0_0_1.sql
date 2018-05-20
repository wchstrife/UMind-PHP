-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-08 10:37:11
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `our-mind`
--
CREATE DATABASE IF NOT EXISTS `our-mind` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `our-mind`;

-- --------------------------------------------------------

--
-- 表的结构 `editinfo`
--

CREATE TABLE `editinfo` (
  `AuthorID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EditerID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MindName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NodeID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `isBegin` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `mind`
--

CREATE TABLE `mind` (
  `AuthorID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MindName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Version` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `mind`
--

INSERT INTO `mind` (`AuthorID`, `MindName`, `Version`) VALUES
('123', 'test', 1),
('123', 'Mind1', 1),
('123', 'Mind2', 1),
('carrot', 'Mind1', 1),
('123', 'Mind3', 1),
('123', 'Mind4', 1),
('MTH', 'Mind1', 1),
('fangqjj', 'Mind1', 1),
('aaa', 'Mind1', 1),
('FF', 'Mind1', 1),
('MTH', 'Mind2', 1),
('41455038', 'Mind1', 1);

-- --------------------------------------------------------

--
-- 表的结构 `nodeinfo`
--

CREATE TABLE `nodeinfo` (
  `AuthorID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MindName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NodeID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NodeLevel` int(11) NOT NULL,
  `ParentID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NodeText` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `isLock` tinyint(1) NOT NULL,
  `Direction` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `nodeinfo`
--

INSERT INTO `nodeinfo` (`AuthorID`, `MindName`, `NodeID`, `NodeLevel`, `ParentID`, `NodeText`, `isLock`, `Direction`) VALUES
('41455038', 'Mind1', 'c7c1d3aacc11390e', 4, 'c7c1d2f44eca163f', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1d3c833e05b49', 4, 'c7c1d2f44eca163f', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1d30fbb51a586', 3, 'c7c1b6d795a285f0', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b688a465c1b0', 2, 'c7c1b5662b2079e0', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b8ebe165371a', 3, 'c7c1b7b49ca98ca6', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1d388fb04ae76', 4, 'c7c1d2f44eca163f', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b614d74c2ef2', 2, 'c7c1b5662b2079e0', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b5662b2079e0', 1, 'Mind1', 'New Node', 0, ''),
('41455038', 'Mind1', 'Mind1', 0, 'NULL', '1234565', 0, ''),
('fangqjj', 'Mind1', 'c788aa6328fdd375', 3, 'c788aa2869715f66', '3', 0, ''),
('123', 'Mind3', 'c76af9a7eec38286', 1, 'Mind3', '2', 0, ''),
('41455038', 'Mind1', 'c7c1b6d795a285f0', 2, 'c7c1b5662b2079e0', 'New Node', 0, ''),
('fangqjj', 'Mind1', 'c788a9c3d598d6d2', 1, 'Mind1', 'a', 0, ''),
('123', 'Mind1', 'Mind1', 0, 'NULL', 'TEST', 0, ''),
('123', 'Mind1', 'c6cfd168907e8125', 1, 'Mind1', 'test1', 0, ''),
('123', 'Mind4', 'Mind4', 0, 'NULL', 'New Mind', 0, ''),
('123', 'Mind4', 'c78796f4f276c845', 1, 'Mind4', '1', 0, ''),
('123', 'Mind3', 'c76af96a50c90a1c', 1, 'Mind3', '1', 0, ''),
('carrot', 'Mind1', 'c73837b882b8aad5', 1, 'Mind1', 'a', 0, ''),
('FF', 'Mind1', 'c79192ee24b9909c', 1, 'Mind1', '1', 0, ''),
('123', 'Mind2', 'Mind2', 0, 'NULL', 'New Mind', 0, ''),
('123', 'Mind2', 'c719e62156444f51', 1, 'Mind2', 'abc', 0, ''),
('123', 'Mind2', 'c719e72ae72a8e4a', 1, 'Mind2', '123', 0, ''),
('carrot', 'Mind1', 'Mind1', 0, 'NULL', 'New Mind', 0, ''),
('carrot', 'Mind1', 'c73822623f5574cd', 1, 'Mind1', '1', 0, ''),
('carrot', 'Mind1', 'c738231b9df1854f', 1, 'Mind1', '2', 0, ''),
('carrot', 'Mind1', 'c738385c806a3dd3', 1, 'Mind1', 'b', 0, ''),
('41455038', 'Mind1', 'c7c1b7487f8c8d94', 1, 'Mind1', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1d33b4f7694e5', 3, 'c7c1b6d795a285f0', 'New Node', 0, ''),
('123', 'Mind1', 'c7303516ab36e248', 2, 'c6e9dd053adc0e8f', 'New Node', 0, ''),
('123', 'Mind1', 'c731e166b64ad611', 3, 'c73031e02c5ccab2', 'zxc', 0, ''),
('123', 'Mind1', 'c73031e02c5ccab2', 2, 'c6e9dd053adc0e8f', 'New Node', 0, ''),
('123', 'Mind1', 'c6e9dd053adc0e8f', 1, 'Mind1', 'test3', 0, ''),
('123', 'Mind1', 'c7298e2f0a18bd4f', 2, 'c6e9dd053adc0e8f', 'as', 0, ''),
('FF', 'Mind1', 'Mind1', 0, 'NULL', 'New Mind', 0, ''),
('41455038', 'Mind1', 'c7c1d2c06fbd86d1', 3, 'c7c1b6d795a285f0', 'New Node', 0, ''),
('123', 'Mind1', 'c7c4ded67ef31dbe', 3, 'c7889e8e531c9820', 'PA', 0, ''),
('123', 'Mind1', 'c7889f3728b81953', 2, 'c7889bc5fc8be96b', 'abc', 0, ''),
('123', 'Mind1', 'c7889bc5fc8be96b', 1, 'Mind1', 'test4', 0, ''),
('123', 'Mind1', 'c6ea44b548ce5d82', 3, 'c6e9de9c2be613bf', 'TA', 0, ''),
('123', 'Mind1', 'c6e9de9c2be613bf', 2, 'c6cfd168907e8125', 'Dota2', 0, ''),
('123', 'Mind1', 'c6ea416fc026b8d9', 3, 'c6e9de9c2be613bf', 'PA', 0, ''),
('123', 'Mind1', 'c7c4df7ff2267a91', 4, 'c6ea416fc026b8d9', '123', 0, ''),
('123', 'Mind1', 'c6ea431f97f1b912', 3, 'c6e9de9c2be613bf', 'SA', 0, ''),
('fangqjj', 'Mind1', 'Mind1', 0, 'NULL', 'New Mind', 0, ''),
('123', 'Mind3', 'Mind3', 0, 'NULL', 'New Mind', 0, ''),
('FF', 'Mind1', 'c79194f2875822ef', 1, 'Mind1', '2', 0, ''),
('41455038', 'Mind1', 'c7c1b88ccfe48e4b', 2, 'c7c1b7487f8c8d94', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b860a0d51ab6', 2, 'c7c1b7487f8c8d94', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b82a7754c712', 2, 'c7c1b7487f8c8d94', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1b7f609bba457', 2, 'c7c1b7487f8c8d94', 'New Node', 0, ''),
('MTH', 'Mind1', 'Mind1', 0, 'NULL', 'New Mind', 0, ''),
('MTH', 'Mind1', 'c7c07c4228a09a81', 1, 'Mind1', 'a', 0, ''),
('MTH', 'Mind1', 'c7c07cac9a4101a4', 1, 'Mind1', 'b', 0, ''),
('aaa', 'Mind1', 'Mind1', 0, 'null', 'New Mind', 0, ''),
('MTH', 'Mind2', 'Mind2', 0, 'NULL', 'New', 0, ''),
('MTH', 'Mind2', 'c7c0bdd3ae3e6442', 1, 'Mind2', '1', 0, ''),
('MTH', 'Mind2', 'c7c0be333bec6336', 1, 'Mind2', '2', 0, ''),
('123', 'Mind4', 'c7881b9c2c525ef8', 2, 'c78796f4f276c845', 'DOTA2', 0, ''),
('123', 'Mind4', 'c7881bfd8be3eff7', 3, 'c7881b9c2c525ef8', 'PA', 0, ''),
('123', 'Mind4', 'c7881c82a971cbdb', 3, 'c7881b9c2c525ef8', 'SA', 0, ''),
('123', 'Mind4', 'c7881ca88b673c84', 3, 'c7881b9c2c525ef8', 'TA', 0, ''),
('123', 'Mind4', 'c7879ce15a835cd3', 1, 'Mind4', '2', 0, ''),
('123', 'Mind4', 'c7881bcf5c648835', 2, 'c7879ce15a835cd3', 'LOL', 0, ''),
('123', 'Mind4', 'c7881ccb39c2f04e', 3, 'c7881bcf5c648835', 'New Node', 0, ''),
('123', 'Mind4', 'c7881d1f914241fd', 3, 'c7881bcf5c648835', 'New Node', 0, ''),
('fangqjj', 'Mind1', 'c78863856cf8fb6b', 1, 'Mind1', '1', 0, ''),
('fangqjj', 'Mind1', 'c788aa2869715f66', 2, 'c78863856cf8fb6b', '2', 0, ''),
('123', 'Mind1', 'c6e928dc4aae2c18', 1, 'Mind1', 'test2', 0, ''),
('123', 'Mind1', 'c731aad151e28f78', 2, 'c6e928dc4aae2c18', '123', 0, ''),
('123', 'Mind1', 'c731efb0baf5e145', 3, 'c731aad151e28f78', '456', 0, ''),
('123', 'Mind1', 'c731ac50508cc5f5', 2, 'c6e928dc4aae2c18', 'abc', 0, ''),
('123', 'Mind1', 'c731f279fd4a4d30', 3, 'c731ac50508cc5f5', 'def', 0, ''),
('123', 'Mind1', 'c7889e8e531c9820', 2, 'c7889bc5fc8be96b', '123', 0, ''),
('fangqjj', 'Mind1', 'c788ac2d747fe232', 2, 'c788a9c3d598d6d2', 'b', 0, ''),
('fangqjj', 'Mind1', 'c788ac9c29baae71', 3, 'c788ac2d747fe232', 'c', 0, ''),
('41455038', 'Mind1', 'c7c1b7b49ca98ca6', 2, 'c7c1b7487f8c8d94', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1d2f44eca163f', 3, 'c7c1b6d795a285f0', 'New Node', 0, ''),
('41455038', 'Mind1', 'c7c1d367f7a360f6', 4, 'c7c1d2f44eca163f', 'New Node', 0, ''),
('123', 'test', 'c6ea072ce8dac7c0', 1, 'c6ce9d541ac77808', 'Other2-2', 0, ''),
('123', 'test', 'c728f5d733eeaf91', 1, 'c6ce9d541ac77808', 'Other2-3', 0, ''),
('123', 'test', 'c6ea057acb194477', 1, 'c6ce9d541ac77808', 'Other2-1', 0, ''),
('123', 'test', 'c7380ce1f26fe20d', 2, 'c6ea057acb194477', 'Fangqjj', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `sharegroup`
--

CREATE TABLE `sharegroup` (
  `MindName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `AuthorID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ShareID` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `sharegroup`
--

INSERT INTO `sharegroup` (`MindName`, `AuthorID`, `ShareID`) VALUES
('Mind1', '123', 'aaa');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `UserID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MindSum` int(11) NOT NULL,
  `toShareNum` int(11) NOT NULL,
  `ShareNum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`UserID`, `Password`, `MindSum`, `toShareNum`, `ShareNum`) VALUES
('carrot', 'fad6f4e614a212e80c67249a666d2b09', 1, 0, 0),
('admin', 'fad6f4e614a212e80c67249a666d2b09', 0, 0, 0),
('MTH', 'fad6f4e614a212e80c67249a666d2b09', 2, 0, 0),
('123', '202cb962ac59075b964b07152d234b70', 5, 1, 0),
('FF', 'fad6f4e614a212e80c67249a666d2b09', 1, 0, 0),
('fangqjj', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, 0),
('41455038', 'c62d156263ebdf4f4a7dcaff459df1e1', 1, 0, 0),
('aaa', '08f8e0260c64418510cefb2b06eee5cd', 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `editinfo`
--
ALTER TABLE `editinfo`
  ADD PRIMARY KEY (`NodeID`),
  ADD UNIQUE KEY `EditerID` (`EditerID`(10),`MindName`(6),`NodeID`(16));

--
-- Indexes for table `mind`
--
ALTER TABLE `mind`
  ADD PRIMARY KEY (`AuthorID`,`MindName`),
  ADD UNIQUE KEY `AuthorID` (`AuthorID`(10),`MindName`(6));

--
-- Indexes for table `nodeinfo`
--
ALTER TABLE `nodeinfo`
  ADD PRIMARY KEY (`AuthorID`,`MindName`,`NodeID`),
  ADD UNIQUE KEY `For-Look` (`AuthorID`(10),`MindName`(6),`NodeID`(16)) USING BTREE;

--
-- Indexes for table `sharegroup`
--
ALTER TABLE `sharegroup`
  ADD PRIMARY KEY (`MindName`,`ShareID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `ID` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
