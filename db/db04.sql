-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-01-31 15:59:34
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db04`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帳號',
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密碼',
  `pr` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '權限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `acc`, `pw`, `pr`) VALUES
(4, 'admin', '1234', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}'),
(5, 'test', '5678', 'a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}');

-- --------------------------------------------------------

--
-- 資料表結構 `bottom`
--

CREATE TABLE `bottom` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `bottom` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '頁尾版權'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `no` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品編號',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `price` int(5) NOT NULL COMMENT '商品單價',
  `qt` int(5) NOT NULL COMMENT '庫存量',
  `spec` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '規格',
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品簡介',
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品圖片',
  `main` int(5) NOT NULL COMMENT '大分類',
  `sub` int(5) NOT NULL COMMENT '次分類',
  `sh` int(2) NOT NULL DEFAULT 1 COMMENT '是否上架'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`id`, `no`, `name`, `price`, `qt`, `spec`, `intro`, `file`, `main`, `sub`, `sh`) VALUES
(2, '010203', '手工訂製長夾', 1200, 2, '全牛皮', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1 \r\n採用愛馬仕相同的雙針縫法,皮件堅固耐用不脫線 \r\n材質:直革鞣(馬鞍皮)牛皮製作  \r\n手工染色', '0403.jpg', 1, 5, 1),
(3, '020705', '兩用式磁扣腰包', 685, 18, '中型', '材質:進口牛皮\r\n顏色:黑色荔枝紋+黑色珠光面皮(黑色縫線)\r\n尺寸:15cm*14cm(高)*6cm(前後)\r\n產地:臺灣', '0404.jpg', 1, 5, 1),
(4, '020706', '超薄設計男士長款真皮', 800, 61, 'L號', '基本:編織皮革對摺長款零錢包\r\n特色:最潮流最時尚的單品 \r\n顏色:黑色珠光面皮(黑色縫線)\r\n形狀:黑白格編織皮革對摺', '0405.jpg', 1, 5, 1),
(5, '030103', '經典牛皮少女帆船鞋', 1000, 6, 'S號', '以傳統學院派風格聞名，創始近百年工藝製鞋精神\r\n共用獨家專利氣墊技術，兼具紐約工藝精神，與舒適跑格靈魂', '0406.jpg', 2, 7, 1),
(6, '030203', '經典優雅時尚流行涼鞋', 2650, 8, 'LL', '優雅流線方型楦頭設計，結合簡潔線條綴飾，\r\n獨特的弧度與曲線美，突顯年輕優雅品味，\r\n是年輕上班族不可或缺的鞋款！\r\n全新美國運回，現貨附鞋盒', '0407.jpg', 2, 8, 1),
(7, '040202', '寵愛天然藍寶女戒', 28000, 1, '1克拉', '◎典雅設計品味款\r\n◎藍寶為珍貴天然寶石之一，具有保值收藏\r\n◎專人設計製造，以貴重珠寶精緻鑲工製造', '0408.jpg', 3, 10, 1),
(8, '050107', '反折式大容量手提肩背包', 888, 15, 'L號', '特色:反折式的包口設計,釘釦的裝飾,讓簡單的包型更增添趣味性\r\n材質:棉布\r\n顏色:藍色\r\n尺寸:長50cm寬20cm高41cm\r\n產地:日本', '0409.jpg', 4, 11, 1),
(9, '060108', '男單肩包男', 650, 7, '多功能', '特色:男單肩包/電腦包/公文包/雙肩背包多用途\r\n材質:帆不\r\n顏色:黑色\r\n尺寸:深11cm寬42cm高33cm\r\n產地:香港', '0410.jpg', 4, 11, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帳號',
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密碼',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '電話',
  `addr` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '電子郵件',
  `regdate` date NOT NULL DEFAULT current_timestamp() COMMENT '註冊日期',
  `total` int(10) DEFAULT 0 COMMENT '總價'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ord`
--

CREATE TABLE `ord` (
  `id` int(10) NOT NULL COMMENT '流水號',
  `no` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '編號',
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帳號',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '電子邸件',
  `addr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `tel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '電話',
  `total` int(10) NOT NULL COMMENT '總價',
  `goods` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `orddate` date NOT NULL DEFAULT current_timestamp() COMMENT '訂購日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '選單名稱',
  `parent` int(2) NOT NULL DEFAULT 0 COMMENT '大分類'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `type`
--

INSERT INTO `type` (`id`, `text`, `parent`) VALUES
(1, '流行皮件', 0),
(2, '流行鞋區', 0),
(3, '流行飾品', 0),
(4, '背包', 0),
(5, '男用皮件', 1),
(6, '女用皮件', 1),
(7, '少女鞋區', 2),
(8, '紳士流行鞋區', 2),
(9, '時尚手錶', 3),
(10, '時尚珠寶', 3),
(11, '背包', 4);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `bottom`
--
ALTER TABLE `bottom`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bottom`
--
ALTER TABLE `bottom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ord`
--
ALTER TABLE `ord`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
