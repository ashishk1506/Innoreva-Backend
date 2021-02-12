-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2021 at 06:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `translate`
--

-- --------------------------------------------------------

--
-- Table structure for table `urdutohindi`
--

CREATE TABLE `urdutohindi` (
  `Urdu` varchar(255) NOT NULL,
  `Hindi` varchar(255) NOT NULL,
  `Urdu_Word_Origin` varchar(255) NOT NULL,
  `Hindi_Word_Origin` varchar(255) NOT NULL,
  `Urdu_Word_Pageno` int(20) NOT NULL,
  `Hindi_Word_Pageno` int(20) NOT NULL,
  `Note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `urdutohindi`
--

INSERT INTO `urdutohindi` (`Urdu`, `Hindi`, `Urdu_Word_Origin`, `Hindi_Word_Origin`, `Urdu_Word_Pageno`, `Hindi_Word_Pageno`, `Note`) VALUES
('अगर', 'यदि / जदि', 'Farsi', 'Sanskrit / Prakrit', 143, 2523, 'Ignore if using as a Proper noun. Eg. अगरबत्ती'),
('अफसर', 'अधिकारी', 'English', 'Sanskrit', 0, 72, ''),
('अफसरों', 'अधिकारियों', 'English', 'Sanskrit', 0, 0, ''),
('अब्र', 'अभ्र / अभाल', 'Farsi', 'Sanskrit / Prakrit', 6, 10, ''),
('अब्रू', 'भ्रु', 'Farsi', 'Sanskrit', 7, 0, ''),
('आईना', 'दर्पण', 'Farsi', 'Sanskrit', 243, 1052, ''),
('आखिर', 'अंततः', 'Arabic', 'Sanskrit', 61, 0, ''),
('आखिरी', 'अन्तिम', 'Arabic', 'Sanskrit', 62, 181, ''),
('आगाह', 'सूचित', 'Farsi', 'Sanskrit', 142, 1423, ''),
('आब', 'आप्', 'Farsi', 'Sanskrit', 2, 14, ''),
('आबाद', 'आवास', 'Farsi', 'Sanskrit', 4, 211, ''),
('आबिस्ट', 'आविष्ट', 'Farsi', 'Sanskrit', 7, 220, ''),
('आला', 'उच्च', 'Arabic', 'Sanskrit', 124, 51, ''),
('इजाजत', 'अनुमति', 'Arabic', 'Sanskrit', 46, 206, ''),
('इंतजार', 'प्रतीक्षा', 'Arabic', 'Sanskrit', 180, 512, ''),
('इस्तेमाल', 'बर्त', 'Arabic', 'Prakrit', 102, 304, ''),
('उम्र', 'आयु', 'Arabic', 'Sanskrit', 1562, 243, ''),
('ऐलान', 'घोषण / घोषणा', 'Arabic', 'Sanskrit / Sanskrit', 124, 1912, ''),
('अंदर', 'भीतर', 'Farsi', 'Prakrit', 187, 415, ''),
('अंदाज', 'शैली', 'Farsi', 'Sanskrit', 186, 1516, ''),
('अंदाजा', 'अनुमान', 'Farsi', 'Sanskrit', 187, 205, ''),
('कमोबेश', 'लगभग', 'Farsi', 'Prakrit', 1727, 1955, ''),
('करीब', 'निकट / लगभग', 'Arabic', 'Sanskrit / Prakrit', 1612, 2316, ''),
('कानून', 'विधान', 'Arabic', 'Sanskrit', 1604, 2390, ''),
('कामयाब', 'सफल', 'Farsi', 'Sanskrit', 1641, 1305, ''),
('कामयाबी', 'सफलता', 'Farsi', 'Sanskrit', 1641, 1305, ''),
('कोशिश', 'प्रयास', 'Farsi', 'Sanskrit', 1760, 546, ''),
('ख्याल', 'ध्यान', 'Arabic', 'Sanskrit', 1025, 1142, ''),
('खबर', 'जानकारी / सूचना', 'Arabic', 'Prakrit / Sanskrit', 1002, 775, ''),
('खातिर', 'लिये', 'Arabic', 'Prakrit', 998, 1986, ''),
('खारिज', 'निरस्त', 'Arabic', 'Sanskrit', 997, 2283, ''),
('खास', 'विशेष', 'Arabic', 'Sanskrit', 997, 2413, ''),
('खुद', 'स्व / स्वतः / स्वयम्', 'Farsi', 'Sanskrit / Sanskrit / Sanskrit', 1020, 1414, ''),
('खुश', 'प्रसन्न', 'Farsi', 'Sanskrit', 1022, 523, ''),
('खून', 'रक्त', 'Farsi', 'Sanskrit', 1024, 1228, ''),
('खौफ', 'भय / डर', 'Arabic', 'Sanskrit / Prakrit', 1024, 414, ''),
('गलत', 'असत्', 'Arabic', 'Sanskrit', 1575, 98, ''),
('गलती', 'त्रुटि', 'Farsi', 'Sanskrit', 1575, 664, ''),
('जवाब', 'उत्तर', 'Arabic', 'Sanskrit', 818, 30, ''),
('जान', 'प्राण', 'Farsi', 'Sanskrit', 774, 495, ''),
('जारी', 'चालू', 'Arabic', 'Prakrit', 771, 866, ''),
('जिक्र', 'संकेत', 'Arabic', 'Sanskrit', 1190, 1405, ''),
('जुर्रत', 'दुस्साहस', 'Arabic', 'Sanskrit', 787, 1062, ''),
('जोर', 'बल', 'Farsi', 'Sanskrit', 1272, 340, ''),
('जंग', 'लड़ाई', 'Farsi', 'Prakrit', 814, 1945, ''),
('डाक्टर', 'चिकित्सक', 'English', 'Sanskrit', 0, 899, ''),
('तल्ख', 'कठोर', 'Farsi', 'Sanskrit', 697, 1665, ''),
('ताकत', 'शक्ति', 'Farsi', 'Sanskrit', 1534, 1492, ''),
('ताजा', 'नया', 'Farsi', 'Prakrit', 640, 2347, ''),
('तैनात', 'नियुक्त', 'Arabic', 'Sanskrit', 685, 2355, ''),
('तैनाती', 'नियुक्ति', 'Arabic', 'Sanskrit', 685, 0, ''),
('तैयार', 'तत्पर', 'Farsi', 'Sanskrit', 729, 650, ''),
('तैयारी', 'तत्परता', 'Farsi', 'Sanskrit', 729, 0, ''),
('दिक्कत', 'आपत्ति', 'Farsi', 'Sanskrit', 1071, 16, ''),
('दिमाग', 'मस्तिष्क / बुद्धि', 'Arabic', 'Sanskrit / Sanskrit', 1084, 2091, ''),
('दिलेर', 'निडर', 'Farsi', 'Prakrit', 1082, 2275, ''),
('नाकाम', 'असफल', 'Farsi', 'Sanskrit', 0, 0, ''),
('नाकामयाब', 'असफल', 'Farsi', 'Sanskrit', 0, 0, ''),
('नाकामयाबी', 'असफलता', 'Farsi', 'Sanskrit', 0, 0, ''),
('नारा', 'घोष', 'Farsi', 'Sanskrit', 2308, 1912, ''),
('फर्क', 'अन्तर', 'Arabic', 'Sanskrit', 1589, 179, ''),
('बहस', 'झगड़ा', 'Arabic', 'Prakrit', 288, 840, ''),
('बहादुर', 'वीर', 'Farsi', 'Sanskrit', 371, 2441, ''),
('बावजूद', '', 'Farsi', '', 268, 0, ''),
('बेनकाब', 'भेद खोल', 'Farsi', 'Sanskrit', 2311, 416, ''),
('बेहतर', 'भला / बढ़िया', 'Farsi', 'Prakrit / Prakrit', 380, 398, ''),
('बेहतरी', 'भलाई', 'Farsi', 'Prakrit', 380, 399, ''),
('मगर', 'पर', 'Farsi', 'Prakrit', 2143, 489, 'Ignore if using as a Proper noun. Eg. मगरमच्छ'),
('मर्जी', 'इच्छा', 'Arabic', 'Sanskrit', 2074, 56, ''),
('मदद', 'सहायता', 'Arabic', 'Sanskrit', 2057, 1444, ''),
('मसला', 'विवाद / समस्या', 'Farsi', 'Sanskrit / Sanskrit', 2096, 2431, ''),
('महकमा', 'विभाग', 'Farsi', 'Sanskrit', 2048, 2378, ''),
('महकमे', 'विभाग', 'Farsi', 'Sanskrit', 0, 2378, ''),
('माकूल', 'उचित', 'Arabic', 'Sanskrit', 2121, 53, ''),
('मामला', 'बात / विषय', 'Farsi', 'Prakrit / Sanskrit', 2116, 245, ''),
('मुकाबला', 'सामना', 'Farsi', 'Prakrit', 2130, 1289, ''),
('मुताबिक', 'अनुसार', 'Arabic', 'Sanskrit', 2111, 192, ''),
('मुद्दा', 'विषय / समस्या', 'Farsi', 'Sanskrit / Sanskrit', 2058, 2413, ''),
('मोर्चा', 'दुर्ग', 'Farsi', 'Sanskrit', 2198, 1057, ''),
('मोर्चे', 'दुर्ग', 'Farsi', 'Sanskrit', 2198, 1057, ''),
('मौका', 'अवसर', 'Arabic', 'Sanskrit', 2204, 219, ''),
('रद्द', 'निरस्त', 'Arabic', 'Sanskrit', 1215, 2283, ''),
('रवैया', 'ढंग', 'Farsi', 'Prakrit', 1253, 1181, ''),
('रास्ता', 'सड़क / पथ', 'Farsi', 'Prakrit / Sanskrit', 1198, 1352, ''),
('राह', 'मार्ग / रथ्या', 'Farsi', 'Sanskrit / Sanskrit', 1205, 1995, ''),
('लहजा', 'सुर', 'Farsi', 'Prakrit', 1943, 1334, ''),
('लेकिन', 'किन्तु / परन्तु', 'Farsi', 'Sanskrit / Sanskrit', 1983, 1737, ''),
('वरना', 'अन्यथा', 'Farsi', 'Sanskrit', 2401, 210, ''),
('वहम', 'भ्रम', 'Arabic', 'Sanskrit', 2434, 389, ''),
('वापस', 'पीछे / लौट', 'Farsi', 'Prakrit / Prakrit', 2363, 625, ''),
('शक', 'शंका / सन्देह', 'Arabic', 'Sanskrit / Sanskrit', 1492, 1502, ''),
('शामिल', 'उपस्थित', 'Arabic', 'Sanskrit', 1470, 20, ''),
('शिकायत', 'उलाहना', 'Farsi', 'Prakrit', 1492, 152, ''),
('शुरू', 'आद / आरम्भ', 'Arabic', 'Prakrit / Sanskrit', 1485, 64, ''),
('शुरूआत', 'पहल / प्रारम्भ', 'Arabic', 'Prakrit / Sanskrit', 1486, 605, ''),
('स्कूल', 'शिक्षालय', 'English', 'Sanskrit', 0, 0, ''),
('सजा', 'दण्ड', 'Farsi', 'Sanskrit', 1353, 1089, ''),
('सफाई', 'सुथराई / स्वच्छता', 'Farsi', 'Prakrit / Sanskrit', 1524, 1313, ''),
('सरकार', 'शासन / प्रशासन', 'Farsi', 'Sanskrit / Sanskrit', 1343, 1467, ''),
('साफ', 'स्पष्ट / सुथरा / स्वच्छ', 'Farsi', 'Sanskrit / Prakrit / Sanskrit', 1518, 1303, ''),
('साल', 'बरस / वर्ष', 'Farsi', 'Prakrit / Sanskrit', 1286, 308, ''),
('सिर्फ', 'केवल / मात्र', 'Arabic', 'Sanskrit / Sanskrit', 1523, 1815, ''),
('सुबह', 'सवेरा', 'Arabic', 'Prakrit', 1519, 1441, ''),
('हजार', 'सहस्त्र', 'Farsi', 'Sanskrit', 2481, 1446, ''),
('हमेशा', 'सदा / सदैव', 'Farsi', 'Sanskrit / Sanskrit', 2496, 1324, ''),
('हवाला', 'उल्लेख', 'Farsi', 'Sanskrit', 994, 0, ''),
('हाल', 'स्थिति', 'Arabic', 'Sanskrit', 977, 1313, ''),
('हिम्मत', 'साहस', 'Farsi', 'Sanskrit', 2494, 1295, ''),
('हैरान', 'अचम्भित', 'Arabic', 'Prakrit', 995, 55, ''),
('हैरानी', 'आश्चर्य', 'Farsi', 'Sanskrit', 995, 116, ''),
('हंगामा', 'कोलाहल', 'Farsi', 'Sanskrit', 2501, 1762, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
