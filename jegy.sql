-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 15. 13:38
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `jegy`
--
CREATE DATABASE `jegy` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `jegy`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jegyek`
--

CREATE TABLE `jegyek` (
  `Azon` varchar(36) COLLATE utf8_hungarian_ci NOT NULL,
  `Jegy` int(11) NOT NULL,
  `Leiras` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `LetrehozasiIdo` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jegyek`
--

INSERT INTO `jegyek` (`Azon`, `Jegy`, `Leiras`, `LetrehozasiIdo`) VALUES
('03a28257-5e18-410b-add6-952b7e36f599', 4, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', '2024-09-26 00:00:00'),
('06851aed-531d-4e77-8de1-a331db2359b7', 2, 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', '2024-02-05 00:00:00'),
('0706610d-90a8-4202-ad24-fdc271813c47', 3, 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', '2024-02-17 00:00:00'),
('07bbe115-ed08-4c30-8e29-89de5b8ec594', 5, 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', '2023-12-29 00:00:00'),
('0803b300-d229-4687-9be7-2448d2b23367', 4, 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', '2024-07-13 00:00:00'),
('084e2735-feb8-4bae-8222-b4d5101506e6', 2, 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '2023-11-22 00:00:00'),
('08a21bd2-08ed-4dbf-a20a-7bf5db0053a5', 4, 'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', '2024-05-08 00:00:00'),
('09d001f6-6fea-4451-9bc3-acc0f54bbab2', 5, 'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', '2024-01-29 00:00:00'),
('0a55411d-8c6f-44af-98b3-ab06e6104987', 2, 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', '2024-08-04 00:00:00'),
('0aff5c11-a95b-4cbd-ad7f-1cfa1f81734e', 2, 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', '2024-06-07 00:00:00'),
('0b740d1c-00bd-4ef5-923e-0f481b1cb8c6', 2, 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', '2023-12-07 00:00:00'),
('0bf2973b-a5c2-4e9c-b4d9-d877be969635', 2, 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '2024-08-15 00:00:00'),
('10b09a03-e37e-4dd5-856c-46348dd3be0b', 3, 'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', '2024-09-02 00:00:00'),
('117476c1-4f9f-47b8-a153-a3690b07ed21', 5, 'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum', '2023-11-30 00:00:00'),
('16b8e66e-94ec-4aed-823f-828e7ffb5e9d', 2, 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', '2024-02-11 00:00:00'),
('25eecb15-e6b1-4733-8cff-9e5a7a3c6677', 2, 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', '2024-04-24 00:00:00'),
('291b22ce-68b3-4f6c-9326-75c162746648', 1, 'ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus', '2024-04-17 00:00:00'),
('29a4f7ff-d8de-439a-a7b5-e12d1fce812f', 4, 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', '2024-09-03 00:00:00'),
('2d0b7ea3-3015-4384-a1ce-241b3070cac6', 4, 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', '2024-04-20 00:00:00'),
('2daaec82-51e6-4ed5-9cb4-3aea876a01a6', 4, 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', '2024-03-12 00:00:00'),
('2eb6892f-8796-4618-92e0-2521aa1c11a7', 1, 'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede', '2023-11-28 00:00:00'),
('2f101b07-b71f-4db9-bc14-bf20d263fb60', 1, 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', '2024-05-24 00:00:00'),
('32a55137-0d15-401e-857c-7e1a5cbf8062', 1, 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', '2024-06-07 00:00:00'),
('34dc41a1-d11a-4114-b1ab-4f764c0f1281', 3, 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam', '2023-12-28 00:00:00'),
('35c6fe20-637b-4e1e-91e2-a82b82bc404b', 5, 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse', '2024-02-07 00:00:00'),
('3c4b2498-4bca-4a49-a912-9b1222d0685b', 1, 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', '2024-04-20 00:00:00'),
('3d0f3594-5368-4027-9059-ed0f331656f0', 4, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea', '2023-11-29 00:00:00'),
('3f71dca6-61bf-4b25-a58d-53c7cf92f92a', 2, 'a suscipit nulla elit ac nulla sed vel enim sit', '2024-03-08 00:00:00'),
('413269dc-68c9-4532-bd13-fe8ee889d702', 4, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', '2024-01-25 00:00:00'),
('438f2418-20dc-416d-ae85-4c2fd878bfb6', 5, 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', '2023-12-24 00:00:00'),
('45c2a273-feff-4ee7-9c6e-5047d759474a', 4, 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci', '2024-04-14 00:00:00'),
('4923efc4-9866-4bc5-8365-3fc1a76fd910', 5, 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '2024-01-31 00:00:00'),
('4aa70105-ba12-4700-a71f-039668c7264b', 5, 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', '2024-03-11 00:00:00'),
('4c309dd0-8084-400e-b781-0e87483a5caf', 4, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', '2024-08-14 00:00:00'),
('4f611081-cc36-4457-84d0-30381f8f7a7b', 5, 'turpis enim blandit mi in porttitor pede justo eu massa', '2024-03-01 00:00:00'),
('56e9a270-4b42-4491-8168-9082aba4d461', 4, 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', '2024-03-30 00:00:00'),
('5be2e98c-d7f2-45de-900b-7d1a992d32fe', 3, 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', '2023-11-17 00:00:00'),
('5f789fb0-f1d1-419a-8d58-12b1f3f842e8', 2, 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '2024-06-13 00:00:00'),
('5f8665c0-aa3b-4171-ba6f-141200adbcc2', 2, 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '2023-11-19 00:00:00'),
('619dd5f6-667a-4637-beab-64a2af676c3a', 2, 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', '2024-10-11 00:00:00'),
('643b6034-ef61-4c21-8cc1-6bf547bd46c7', 4, 'quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', '2024-08-25 00:00:00'),
('6600f545-83fa-4fd4-9514-d9e1b333e91b', 3, 'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus', '2024-06-13 00:00:00'),
('6604ff62-36ac-4b7b-99a5-d59bb5c0260e', 1, 'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', '2024-06-19 00:00:00'),
('66159af0-d791-486e-b4a3-06872fbf106f', 3, 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', '2024-04-13 00:00:00'),
('68aa3b56-0fc7-485e-99b0-d1e1b94d6496', 4, 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros', '2024-06-15 00:00:00'),
('69a1fc74-54dc-434a-b30b-e13fa57e54b9', 4, 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', '2023-12-16 00:00:00'),
('6ae74c64-10ec-41b6-a287-370402115924', 2, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis', '2024-01-23 00:00:00'),
('6f84d1d2-2ae7-4043-bc52-8325cb93e8f5', 3, 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', '2024-05-25 00:00:00'),
('710c6b65-ef02-4535-9d05-5ce369293471', 5, 'at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2024-02-06 00:00:00'),
('71395a76-078b-4475-a2a7-4806eb64e742', 1, 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', '2024-03-18 00:00:00'),
('722a3733-c6bc-4c27-a4d4-95602cc537ac', 2, 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', '2023-12-20 00:00:00'),
('725e531d-1fd4-49bc-87f5-5306d5010778', 3, 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis', '2023-12-22 00:00:00'),
('75b37842-9c5e-42f0-89f1-3f03745ded73', 5, 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla', '2024-02-18 00:00:00'),
('7822d8a8-c0be-4eee-9799-fa95d295b994', 1, 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', '2024-09-29 00:00:00'),
('7a3202a6-e145-48ac-832e-f34f8db9684b', 3, 'id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', '2024-07-08 00:00:00'),
('7e740291-4e0f-4dbe-a955-c41d849c925d', 1, 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2024-01-05 00:00:00'),
('7ed75e22-70f4-42ca-927d-53552e1f56c4', 1, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2024-04-08 00:00:00'),
('7ff2565f-f941-4730-93cb-72bb07456971', 2, 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', '2023-10-17 00:00:00'),
('877ed7b0-ad05-4a56-9937-57ff874c0cdc', 5, 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', '2024-06-22 00:00:00'),
('879a456d-a66b-4499-bc39-db7ccf4ff371', 2, 'consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', '2024-07-06 00:00:00'),
('8a13bf63-cf19-4c16-a9bf-abd3f13344e7', 1, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus', '2024-10-05 00:00:00'),
('8bff11ba-5619-4108-8a23-815a76b14698', 2, 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', '2024-02-15 00:00:00'),
('96e897ed-2e04-4fbe-bfed-1094c7b1d9c2', 2, 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', '2024-10-10 00:00:00'),
('978149eb-7c66-475c-bf36-88623e66f535', 4, 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', '2024-09-22 00:00:00'),
('97ca51a5-ec6d-4820-841f-bb075e4b7292', 4, 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', '2024-06-13 00:00:00'),
('97fb10e8-54ef-4cac-afd9-265a0427f0f6', 5, 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec', '2024-04-17 00:00:00'),
('9830d39c-d50c-4696-aedb-73a0c99777ca', 2, 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', '2024-03-11 00:00:00'),
('99c4f7f6-8cd5-4e43-849e-6cf1c2689756', 5, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', '2024-04-11 00:00:00'),
('9bc5d4e1-5d48-412f-a4f9-910723065e9e', 2, 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', '2024-02-05 00:00:00'),
('a119a5fe-a944-4737-8853-1312dd198861', 5, 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', '2024-02-10 00:00:00'),
('a1587677-6cb4-4e2c-bdb4-a5b551e21736', 1, 'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede', '2024-05-08 00:00:00'),
('a1ae60b8-b7bd-4571-aece-4a8e5bdefaa5', 4, 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', '2023-12-08 00:00:00'),
('a4b0b66b-4eec-45ce-8389-e126422ce13d', 5, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', '2023-12-12 00:00:00'),
('a6082428-c6d9-4ee2-aed4-f073d7abc7f6', 5, 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl', '2024-02-22 00:00:00'),
('a92b535c-f0c7-46e1-b210-79760d7d7c03', 5, 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', '2024-03-09 00:00:00'),
('aa7f2df8-bda3-4b30-8811-d08ad9b204d6', 3, 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '2024-02-25 00:00:00'),
('acfb6236-4638-4a67-a53e-6eb438d90c07', 5, 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', '2024-05-20 00:00:00'),
('b97807e4-71a1-4d78-9d97-28d628bbbd26', 1, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', '2024-05-18 00:00:00'),
('ba0c4b47-994f-47e3-99b5-db715bb71ced', 1, 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', '2024-07-15 00:00:00'),
('bf1f9634-81dd-4642-92fb-704c2a79a0f7', 3, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', '2024-09-28 00:00:00'),
('c36eb8dc-45a7-4566-be58-334bb9cc6875', 2, 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', '2024-09-02 00:00:00'),
('c5162f7a-f675-4330-a137-cd331d34cc3f', 4, 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', '2023-11-20 00:00:00'),
('c5c191f4-5d8f-4e0c-9a19-e2e153960eda', 5, 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', '2024-06-20 00:00:00'),
('c5ecd745-4a8a-426e-8df3-7aae66d79e71', 4, 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis', '2023-11-20 00:00:00'),
('cca5a041-ca49-44a7-9816-bb99be65d0b7', 4, 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea', '2024-03-12 00:00:00'),
('d0da8abd-0642-4e56-a885-6adb5c4773c2', 3, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', '2024-02-03 00:00:00'),
('d527c332-6f00-43fa-b811-d49926adbbf4', 4, 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', '2023-10-16 00:00:00'),
('d69b6391-98ee-4ed1-ae09-247c77684d49', 3, 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '2024-06-27 00:00:00'),
('d8dba2c9-a22b-4480-981f-33d9f190e52d', 4, 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus', '2024-09-23 00:00:00'),
('d974d4ca-e26e-4ac6-9885-b4dd6765e02f', 5, 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', '2024-09-25 00:00:00'),
('d97997f5-fb9c-49c7-95e7-de0b0d905a91', 2, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', '2024-06-20 00:00:00'),
('da24139f-18f6-4da8-8e44-e3295608288f', 4, 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', '2024-02-18 00:00:00'),
('de361aad-866f-42fb-b2f9-50e6731461f8', 3, 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', '2023-11-21 00:00:00'),
('e217832a-51e9-4f74-a07c-2a429d562af3', 3, 'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', '2023-11-30 00:00:00'),
('e7442a08-1a1e-4354-be63-d6c856d70491', 4, 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', '2023-11-02 00:00:00'),
('e99b21e9-4ece-40c5-bf6e-55f409531f21', 4, 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', '2024-02-28 00:00:00'),
('efa64060-de6c-439a-a130-42609529f075', 1, 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', '2024-10-11 00:00:00'),
('f4fa7aa0-42a3-44b4-bfc7-3767e5fac1a5', 4, 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '2023-11-29 00:00:00'),
('f83c6128-39a7-4eee-b1d3-9f6b4d16cbc5', 2, 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', '2024-09-14 00:00:00'),
('fdeb771a-808f-4359-b962-aab6692dc2c0', 4, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '2024-02-07 00:00:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `jegyek`
--
ALTER TABLE `jegyek`
  ADD PRIMARY KEY (`Azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
