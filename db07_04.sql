-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-08-29 05:04:54
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db07_04`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `pr` text NOT NULL COMMENT '權限(?)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `acc`, `pw`, `pr`) VALUES
(1, 'admin', '1234', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}'),
(2, 'test', '1234', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}'),
(3, '1', '1', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}'),
(6, 'zyn', '20250818', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";}');

-- --------------------------------------------------------

--
-- 資料表結構 `bottom`
--

CREATE TABLE `bottom` (
  `id` int(10) UNSIGNED NOT NULL,
  `bottom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `bottom`
--

INSERT INTO `bottom` (`id`, `bottom`) VALUES
(1, 'Copyright2025頁尾版權宣告');

-- --------------------------------------------------------

--
-- 資料表結構 `item`
--

CREATE TABLE `item` (
  `id` int(10) UNSIGNED NOT NULL,
  `no` text NOT NULL,
  `name` text NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `spec` text NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `intro` text NOT NULL,
  `big` int(10) UNSIGNED NOT NULL,
  `mid` int(10) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `item`
--

INSERT INTO `item` (`id`, `no`, `name`, `price`, `spec`, `stock`, `img`, `intro`, `big`, `mid`, `sh`) VALUES
(1, '010203', '手工訂製長夾', 1200, '全牛皮', 2, '0403.jpg', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1 \r\n採用愛馬仕相同的雙針縫法,皮件堅固耐用不脫線 \r\n材質:直革鞣(馬鞍皮)牛皮製作  \r\n手工染色 ', 6, 11, 1),
(3, '916775', '超薄設計男士長款真皮', 800, 'L號', 61, '0405.jpg', '基本:編織皮革對摺長款零錢包\r\n特色:最潮流最時尚的單品 \r\n顏色:黑色珠光面皮(黑色縫線)\r\n形狀:黑白格編織皮革對摺 ', 6, 11, 1),
(4, '974431', '經典牛皮少女帆船鞋', 1000, 'S號', 6, '0406.jpg', '以傳統學院派風格聞名，創始近百年工藝製鞋精神\r\n共用獨家專利氣墊技術，兼具紐約工藝精神，與舒適跑格靈魂', 7, 13, 1),
(6, '937066', '火腿蛋餅0', 4560, '7890', 180, '0410.jpg', '42724111111111010110101001', 6, 11, 0),
(7, '695254', '兩用式磁扣腰包', 685, '中型', 18, '0404.jpg', '材質:進口牛皮\r\n顏色:黑色荔枝紋+黑色珠光面皮(黑色縫線)\r\n尺寸:15cm*14cm(高)*6cm(前後)\r\n產地:臺灣', 6, 11, 1),
(8, '743601', '經典優雅時尚流行涼鞋', 2650, 'LL', 8, '0407.jpg', '優雅流線方型楦頭設計，結合簡潔線條綴飾，\r\n獨特的弧度與曲線美，突顯年輕優雅品味，\r\n是年輕上班族不可或缺的鞋款！\r\n全新美國運回，現貨附鞋盒', 7, 14, 1),
(9, '754237', '寵愛天然藍寶女戒', 28000, '1克拉', 1, '0408.jpg', '◎典雅設計品味款\r\n◎藍寶為珍貴天然寶石之一，具有保值收藏\r\n◎專人設計製造，以貴重珠寶精緻鑲工製造', 9, 16, 1),
(10, '557744', '反折式大容量手提肩背包', 888, 'L號', 15, '0409.jpg', '特色:反折式的包口設計,釘釦的裝飾,讓簡單的包型更增添趣味性\r\n材質:棉布\r\n顏色:藍色\r\n尺寸:長50cm寬20cm高41cm\r\n產地:日本', 10, 17, 1),
(11, '180473', '男單肩包男', 650, '多功能', 7, '0410.jpg', '特色:男單肩包/電腦包/公文包/雙肩背包多用途\r\n材質:帆不\r\n顏色:黑色\r\n尺寸:深11cm寬42cm高33cm\r\n產地:香港', 10, 17, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `no` text NOT NULL COMMENT '訂單編號',
  `acc` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `addr` text NOT NULL,
  `tel` text NOT NULL,
  `total` int(10) UNSIGNED NOT NULL COMMENT '總金額',
  `items` text NOT NULL COMMENT '購買的商品們',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '下單時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `no`, `acc`, `name`, `email`, `addr`, `tel`, `total`, `items`, `created_at`) VALUES
(1, '20250829852041', 'test', '王大明', '123@gmail.com', '泰山', '0911222333', 1200, 'a:1:{i:1;s:1:\"1\";}', '2025-08-29 01:10:06'),
(3, '20250829582668', 'test123', '火腿蛋餅123', '234455@gmail.com', '泰山0123', '0911227788', 28650, 'a:2:{i:9;s:1:\"1\";i:11;s:1:\"1\";}', '2025-08-29 01:28:23'),
(4, '20250829817828', 'test', '王大明1234', '123@gmail.com', '泰山', '0911222333', 685, 'a:1:{i:7;s:1:\"1\";}', '2025-08-29 01:53:12'),
(5, '20250829712510', 'test', '王大明', '123@gmail.com', '泰山', '0911222333', 800, 'a:1:{i:3;s:1:\"1\";}', '2025-08-29 02:30:00'),
(6, '20250829174413', 'test', '王大明', '123@gmail.com', '泰山', '0911222333', 2650, 'a:1:{i:8;s:1:\"1\";}', '2025-08-29 02:32:24'),
(7, '20250829122254', 'test', '王大明', '123@gmail.com', '泰山', '0911222333', 1650, 'a:2:{i:4;s:1:\"1\";i:11;s:1:\"1\";}', '2025-08-29 02:45:50'),
(8, '20250829386150', 'test', '王大明888', '123@gmail.com', '泰山888', '0911222333888', 1000, 'a:1:{i:4;s:1:\"1\";}', '2025-08-29 02:46:30');

-- --------------------------------------------------------

--
-- 資料表結構 `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `big_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `type`
--

INSERT INTO `type` (`id`, `name`, `big_id`) VALUES
(6, '流行皮件', 0),
(7, '流行鞋區', 0),
(9, '流行飾品', 0),
(10, '背包', 0),
(11, '男用皮件', 6),
(12, '女用皮件', 6),
(13, '少女鞋區', 7),
(14, '紳士流行鞋區', 7),
(15, '時尚手錶', 9),
(16, '時尚珠寶', 9),
(17, '背包', 10);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `tel` text NOT NULL,
  `addr` text NOT NULL,
  `email` text NOT NULL,
  `regdate` date NOT NULL COMMENT '註冊日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `name`, `acc`, `pw`, `tel`, `addr`, `email`, `regdate`) VALUES
(1, '王小明', 'xiaoming', 'xiaoming', '0911222344', '泰山123', '123456@fdsfadsfas', '2025-08-12'),
(2, '王大明', 'test', '1234', '0911222333', '泰山', '123@gmail.com', '2025-08-12'),
(4, '火腿蛋餅1', 'test123', 'test123', '0911227788', '泰山0', '234455@gmail.com', '2025-08-18');

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
-- 資料表索引 `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bottom`
--
ALTER TABLE `bottom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item`
--
ALTER TABLE `item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
