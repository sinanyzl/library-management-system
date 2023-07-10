

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookTit` text NOT NULL,
  `bookAut` text NOT NULL,
  `bookDesc` text NOT NULL,
  `bookPub` text NOT NULL,
  `bookLen` text NOT NULL,
  `bookLan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `bookTit`, `bookAut`, `bookDesc`, `bookPub`, `bookLen`, `bookLan`) VALUES
(6, 'qwe', 'qweasdasd', '123', '123', '123', '23'),
(8, '53434734', 'BookAuthor', 'BookDescr', 'PubDat', '1251', 'TR'),
(9, 'Book One', 'Book One', 'Book One', 'Book One', '123', 'EN'),
(10, 'BOOK TWO', 'Book Two', 'Book Two ', 'Book Two', '2346', 'TR');

-- --------------------------------------------------------



CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `userNam` text NOT NULL,
  `userIdNo` text NOT NULL,
  `userPho` text NOT NULL,
  `userMai` text NOT NULL,
  `userAddr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `members` (`id`, `userNam`, `userIdNo`, `userPho`, `userMai`, `userAddr`) VALUES
(1, 'abb', 'b', 'c', 'd', 'e'),
(4, 'blabla', '1', '564654654', '654654@asfas56465', '654sg654asg654'),
(5, 'aqqqqq', 'b', '2', 'd', 'e'),
(6, 'Can Aşık', '0123456789', '0 000 000 00 00', 'can@asik.com', 'Turkey'),
(7, 'User one', '00220011021', '0213254654', 'user@one.com', 'turkey'),
(8, 'user two', '12512632732', '4093590347', 'user@two.com', 'usa');

-- --------------------------------------------------------


CREATE TABLE `rents` (
  `id` int(11) NOT NULL,
  `userNam` text NOT NULL,
  `bookTit` text NOT NULL,
  `delDat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `rents` (`id`, `userNam`, `bookTit`, `delDat`) VALUES
(1, 'b / a', 'a', '30.06.2021 21:30:01'),
(4, '454654654 / kutsal daasfgasgasmanaca', 'hacı', '10.07.2021 21:30:01'),
(10, 'b / aqqqqq', 'hacı', '29.06.2021'),
(11, '0123456789 / Can Aşık', 'BookName', '5.07.2021'),
(12, '00220011021 / User one', 'BOOK TWO', '2.07.2021'),
(13, '12512632732 / user two', 'Book One', '30.07.2021');


ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `rents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

