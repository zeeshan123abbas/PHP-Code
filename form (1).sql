-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 10:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `cpassword`) VALUES
(1, 'zeeshan', 'zeeshan@gmail.com', '$2y$10$TG1zkk48dQ.Tn3n79r60V.KzwXvngn4qZ124J2g16.9dKZ7gU/S7a', '$2y$10$n6YKyXXzcQSQeETgwQ.rR.hHjbLmB5l5IRIX.heg2/iAfZmBq11Hu'),
(2, 'hamza', 'hamza@gmail.com', '$2y$10$f3bTMMWk6WthI0pMXd4XguxWaxfZPLUNZO9cXgbG/tvRKJckis36e', '$2y$10$Zd1OXvKUBKYKF0MqvUMMPe3KAxbhfYrwsqYU50lHfoFcPGeEWm7GK'),
(3, 'hamza', 'hamza@gmail.com', '$2y$10$g0WfYMNBk4KiMlqu1umEY.Vt/HjTE7MzC04weuf1oF6/VwZBTTiMG', '$2y$10$/N2TJIZhFiXuJrntoEr3yu04zJOvUI0ytQDvLfigLWAh7mLFHKB/m'),
(4, 'hamza', 'hamza@gmail.com', '$2y$10$O36uRHIEI1ibt/ziAupIzu4f5Un2uAUXE25nALTGjuqHyEoEUMUIC', '$2y$10$LWecd21bbfzIEF3L3XrAiuLkIT0PEmRhNg9nz8Uyom5SmyfKT8K1u'),
(5, 'ahmed', 'usman@gmail.com', '$2y$10$Mox15hzoUoSoWvClFRJD2.l.4xLbMTFEhZQrUyFd69eguGUFNqgmi', '$2y$10$WsnYKqLXB9xHMXdHKI1x9OtDNcdom/cu/kdtLX9dM6tmPH8yYldWS'),
(6, 'zeeshan', 'usman123@gmail.com', '$2y$10$tW5tKnYZhfrvMx9cGhPd2eHXAdd/oSgArvG3L2aoZ8dBrgaL3ME.e', '$2y$10$8TcDrrwDzbaob23Z9BGTp.OVGWqzYqOyuA//HtO0g5dksEFtMcyBu'),
(7, 'zeeshan', 'usman1123@gmail.com', '$2y$10$24gL/t.5K7MgZtWKEgxSZeCG717kthriBE6zQ7QYdHgmG6WZlQnui', '$2y$10$Z2Ros7RJHLbNgFAvwO1QyuFhm68UYWLL4owqgNSxDnrsGCZdE7frW'),
(8, 'hassan', 'hassan@gmail.com', '$2y$10$6hKAGdfhqUHcwVP.usy3lumdMpEeH02KzQPM4eQE5Wm/fbL2eLhoK', '$2y$10$wL67edUodWv4hu2yT1ghy.YTQvBY3uQnA1EuDrDciAJZ/yh/.m2Fe'),
(9, '', '', '$2y$10$WnSAdihuTeaZ7N/aI0MbjeyttZ/bsTcbNcsIJNMsv5fQDhKpF6Pim', '$2y$10$E.y8mDvVydScLVV4Bu667O610fdAX6rWKdpCevvD8H/fuOaWJfWt.'),
(10, 'zain', 'zain@gmail.com', '$2y$10$4BEfNzEgiUPTjD70eXZi2./483/odUgu9stU1F5WzU.5YmNdfnR96', '$2y$10$gVPf9l9/ibD6VyacSkbLt.0qI/QQ3YDzW20pxYd8Z2zhklQSKIjQW'),
(11, 'asda', 'assad123@gmail.com', '$2y$10$KGIlVe0e4Bfgo7moNpA2G.JxG9ahCLwEVc3QHnz1WOZ2UyEOSPZT2', '$2y$10$JIW77FCBq84a/1CMvaW1DuO3n473v12/CBWB.F9PM4GalLRilQtA.'),
(12, 'zeeshan', 'hamza55@gmail.com', '$2y$10$ZVPfceDDPbZ6FesHnj9y7Otsknu3zUsPzE5F6x0SA0hRe8CO74Zz6', '$2y$10$ybO2ZhBEUUSKtNVDt6pSsuFfiglzIovmTaEY1p202159yTgMQL1.S'),
(13, 'ASIF', 'asif@gmail.com', '$2y$10$czy4bKtf52Gu4lAJZiXWXeenYhFhp25abTDeTXFiVK7Eg3HfbEPDy', '$2y$10$g2Fb4YpRtexp91u13AaAGeKKdozhOrs2onmxkEZ/vefJl0in6uuH.'),
(14, 'Junaid', 'junaid@gmail.com', '$2y$10$.ZRBJ4eHiBDHTabL9maCpestVrRa9YJIyLRqylIv041F7aFWSKHi2', '$2y$10$OtWtK5pHXl/Fyz2/1ZqIDOipmVgL6Byicis536Qwit4gR0wqAxMxy'),
(15, 'zeeshan', 'abbaszeeshan706@gmail.com', '$2y$10$8viXsJEJUwaJOHH1WQOnzug1Deg5QxGFvdwgVAqTsI8ZAT.2s5.9C', '$2y$10$1T2rxNY7Jb03iRub4FOBh.t48Tmao6RhatmAiUDxAv6nKvn9ZQt6G'),
(16, 'zubair', 'zubair@gmail.com', '$2y$10$IhdX2TT5xdLBndVmuxGyUewDEymOeb4NJWUn5zJekYTav6U1tzB4u', '$2y$10$cNSee4gVD8zSmhaWQMMlA.UGlqEQ.vY95GqkVewOa3geNm1GQp5L6'),
(17, 'zeeshan', 'hamza565@gmail.com', '$2y$10$JfPLrCC/MxZMG.fI.R2PKeId0G8n2c87Cw53MZdeAb2QVS8mbznNW', '$2y$10$N4RRp6DQlz77AzVsPTQcpOTBl.Srq9SRrrqzscb1KiNe9HL3oDlpS'),
(18, 'zeeshan', 'hamza99@gmail.com', '$2y$10$jSe74I0qxnYC1SMH8jRK3e3zVZUy1YtMYV0UVm7RCQ4LVCgBggUw6', '$2y$10$5.tPhP1FiksR7jsAN9gheeR6SQHYYwViXNoALv7Vn0CEvM2qyT/ke'),
(19, 'zeeshan', 'hamza550@gmail.com', '$2y$10$sQpK/5H8BgGhMPL/y6/aFeOhGX4ZuetAIErXUk8ZxXvFO0ricTfm.', '$2y$10$47vnO3WF8DdlzicwKXEw5.VAP7UO9KsdMdo9BvKAu/pVx0BiZrqBG'),
(20, 'zeeshan', 'hamza515@gmail.com', '$2y$10$dJG1Z6CbSB01pT8dh0j2me5l/urB.hcLRrtOtpE1y12zbIJSh7o7a', '$2y$10$alsNs4IXRukMNmeSyPli1OdFg2JlH8AoVCh1tdJySA2ayFLPtGsc2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
