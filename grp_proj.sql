-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mai 14, 2020 la 05:58 PM
-- Versiune server: 10.4.11-MariaDB
-- Versiune PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `grp_proj`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `order`
--

CREATE TABLE `order` (
  `OrderId` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `OrderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `TotalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Order information\r\nlike Date, Amount';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orderitem`
--

CREATE TABLE `orderitem` (
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `UnitPrice` decimal(12,2) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Information about\r\nlike Price, Quantity';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product`
--

CREATE TABLE `product` (
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(150) NOT NULL,
  `UnitPrice` float NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Basic information \r\nabout Product';

--
-- Eliminarea datelor din tabel `product`
--

INSERT INTO `product` (`ProductId`, `ProductName`, `UnitPrice`, `Quantity`, `image`, `description`) VALUES
(1, 'Organic Rye Bread - No Added Yeast (Biona) 1000g', 2.35, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_rye_bread_-_no_added_yeast_biona_500g.jpg?raw=true', 'This bread is made for Biona by a family-owned bakery in Muensterland, Germany. Established in 1927, the bakery uses traditional artisanal skills - freshly grinding the grains just before baking to create loaves packed with the wholegrain goodness needed as part of a healthy diet.\r\n\r\nIngredients\r\nWholegrain Rye Meal*(43%), Water, Natural Sourdough*(Wholegrain Rye Meal*, Water), Sea Salt. *organic\r\nStorage\r\nStore in a cool dry place away from sunlight.'),
(2, 'Organic Vitality Rye Bread with Sprouted Seeds (Biona) 500g', 2.35, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/12227_20biona_20rye_20vitality_20bread_20500g.png?raw=true', 'This Biona loaf is baked using traditional artisan skills to create these loaves packed with wholegrain goodness. This rye bread loaf has no added yeast and the seeds make for an excellent alternative to normal toast.'),
(3, 'Organic White Pasta - Penne 500g', 1.59, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_white_pasta_-_penne_500g.jpg?raw=true', 'These medium length tubes are a very popular type of organic pasta, loved by our many customers throughout the UK and Europe. Use them to make traditional Italian dishes, but you\'ll also find they mix well with creamy sauces, tomato-based sauces, vegetarian and vegan pesto, and virtually anything you wish!\r\n'),
(4, 'Organic Wholewheat Pasta - Spaghetti 1kg', 2.77, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_wholewheat_pasta_-_spaghetti_1kg_1.jpg?raw=true', 'Buy this top-quality, 100% organic wholewheat spaghetti to create the very best homemade Italian recipes. As with all pastas, it plays some very specialist roles wthin traditional Mediterranean and wider European cooking. But its brilliant texture and flavour can be applied to any meal your heart and taste buds desire.'),
(5, 'Organic Basmati White Rice 2.5kg', 10.74, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_basmati_white_rice_2.5kg.jpg?raw=true', 'Organic basmati rice is an essential cooking ingredient if you love Indian, Sri Lankan, Asian or North African cooking of any kind. But it is also very versatile, tasty and well-suited to countless classic recipes enjoyed across the UK and Europe. This white basmati is more refined and sweeter than its traditional counterpart.\r\n'),
(6, 'Organic Basmati Brown Rice 2.5kg', 8.92, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_basmati_brown_rice_2.5kg.jpg?raw=true', 'Organic basmati brown rice is an essential cooking ingredient if you love making your favourite meals healthier. Basmati rice is perfect to accompany Indian cuisine such as vegetable curry or lentil dahl.\r\n'),
(7, 'Organic Short Grain Brown Rice 2.5kg', 9.11, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_short_grain_brown_rice_2.5kg.jpg?raw=true', 'Organic short grain brown rice is a nourishing rice that is shorter and rounder than a regular grain of rice. It has a nutty flavour and texture and pairs well with curries, stir fries and salads.\r\n'),
(8, 'Organic Walnuts Light, Broken 500g', 6.62, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_walnuts_light_broken_500g.jpg?raw=true\r\n', 'Light organic walnut pieces are perfect for adding to baking or topping waldorf salads. Walnuts are high in protein and a good source of fibre. Their texture and distinctive flavour lends themselves perfectly to being paired with cheese.\r\n'),
(9, 'Organic Almonds 1kg', 15.89, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_almonds_1kg.jpg?raw=true', 'Our organic almonds are 100% natural and organic with nothing added or taken away. Enjoy as a healthy snack or use in organic baking for added texture and nutrition. Try roasting for a delicious, natural flavor.\r\n'),
(10, 'Organic Apricots 1kg', 6.77, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_apricots_1kg.jpg?raw=true', 'Organic Dried Apricots have not been treated with sulphur dioxide, so they are brown in colour. The juicy dried fruit is great for snacking and topping breakfast bowls.\r\n'),
(11, 'Organic Medium Roast Ground Coffee 227g', 4.94, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic-medium-roast-ground-coffee-227g.jpg?raw=true', 'This medium roast is a full-bodied and velvety smooth coffee of low acidity. Great for drinking at any-time.'),
(12, 'Loose Tea: Relaxation - Raspberry & Lemon Verbena 50g', 2.86, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/loose_tea_relaxation_-_raspberry_lemon_verbena_50g.jpg?raw=true', 'Raspberry & Lemon Verbena combines the juiciness of dried raspberry with the potency of luxury Lemon Verbena'),
(13, 'Loose Tea: Digestion - Belly Becalm 125g', 5.53, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/loose_tea_digestion_-_belly_becalm_125g.jpg?raw=true', 'Belly Becalm, a luscious, flavourful concoction of premium herbs and flowers was blended to combat the problem of meals-on-the-go. The blend, a smorgasbord of ingredients selected for their purported ability to aid digestion and soothe the gut, hits all the right notes.'),
(14, 'Organic Decaf Coffee Beans (Equal Exchange) 227g', 5.82, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_decaf_coffee_beans_equal_exchange_227g.jpg?raw=true', 'Most of the world\'s decaffeinated coffee is processed using solvents. This arabica, medium roast decaffeinated coffee uses the Swiss Water process - environmentally friendly and chemical free.\r\n\r\n'),
(15, 'Organic Chocolate Making Kit', 13.32, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_chocolate_making_kit_with_mould_.jpg?raw=true', 'This Chocolate Making Kit contains everything you need to make your own delicious and sweet homemade Organic & Raw Chocolate. Follow our recipe or create your own, this pack have everything you need to get started. On average this kit can around 750 grams of raw chocolate.\r\n'),
(16, 'Vegan Chocoholic Bundle', 31.36, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/vegan_chocoholic_bundle_4.jpg?raw=true', 'This pack contains:\r\n\r\nOrganic Chocolate Making Kit\r\nOrganic Assorted Caramel Selection Box (Enjoy!)\r\nOrganic Fine Hazelnut Chocolate Spread (Vego) 200g\r\nFairtrade Super Cosy Drinking Chocolate (Clipper) 250g\r\nSicilian Hazelnut (Seed & Bean) 85g\r\nOrganic Whole Hazelnut Chocolate Bar (Vego) 65g\r\nRaw Choc Brownie -  Cashew Maca Bliss (Pulsin) 35g'),
(17, 'Organic Raw Cacao Butter Drops 15kg Bulk', 175.91, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_raw_cacao_butter_drops_1kg_with_bowl.jpg?raw=true', 'Organic pure, raw cacao butter. This is an essential ingredient used to make chocolate.'),
(18, 'Organic Lavender French Essential Oil (Meadows Aroma) 25ml', 13.32, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic-lavender---french-_meadows-aroma_-no-size_5.jpg?raw=true', 'Organic Lavender - French High Altitude Essential Oil, 100% Pure Oil. Soothing, relaxing balancing, uplifting and very versatile.'),
(19, 'Organic Tea Tree Essential Oil (Meadows Aroma) 25ml', 12.57, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/organic_tea_tree_essential_oil_meadows_aroma_25ml_1.jpg?raw=true', 'Tea Tree essential oil is a powerful natural antiseptic and has many uses from adding to shampoo, putting a few drops in the bath or adding to a vaporiser for the home.\r\n'),
(20, 'Organic Hand Wash Tea Tree & Lemon (Meadows Aroma) 500ml', 8.45, 100, 'https://github.com/rom1ca46/Group-Research-Project/blob/master/db%20photos/img_5904.jpg?raw=true', 'Organic Hand Wash -Tea Tree & Lemon (Meadows Aroma)');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Password` varchar(45) NOT NULL,
  `full_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Basic information \r\nabout Customer';

--
-- Eliminarea datelor din tabel `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Address`, `Password`, `full_name`) VALUES
(1, 'admin', NULL, 'root', 'SysAdmin'),
(2, 'ciomaga', NULL, 'ciomaga', '--'),
(3, 'pop', NULL, 'pop', '--'),
(4, 'catana', NULL, 'catana', '--'),
(5, 'pirvu', NULL, 'pirvu', '--');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `FK_Order_CustomerId_Customer` (`UserID`);

--
-- Indexuri pentru tabele `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`OrderId`,`ProductId`),
  ADD KEY `FK_OrderItem_OrderId_Order` (`OrderId`),
  ADD KEY `FK_OrderItem_ProductId_Product` (`ProductId`);

--
-- Indexuri pentru tabele `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD UNIQUE KEY `AK1_Product_SupplierId_ProductName` (`ProductName`);

--
-- Indexuri pentru tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `AK1_Customer_CustomerName` (`Username`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `order`
--
ALTER TABLE `order`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pentru tabele `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_Order_CustomerId_Customer` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constrângeri pentru tabele `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `FK_OrderItem_OrderId_Order` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`),
  ADD CONSTRAINT `FK_OrderItem_ProductId_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
