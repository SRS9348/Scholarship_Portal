-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 07:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarshipdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test', 'admin', 7894125478, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblapply`
--

CREATE TABLE `tblapply` (
  `ID` int(10) NOT NULL,
  `SchemeId` int(10) DEFAULT NULL,
  `ApplicationNumber` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Religion` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `AadharNumber` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `DocReq` varchar(250) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` mediumtext DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `DisbursedAmount` decimal(10,0) DEFAULT NULL,
  `SanctionedDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblapply`
--

INSERT INTO `tblapply` (`ID`, `SchemeId`, `ApplicationNumber`, `UserID`, `DateofBirth`, `Gender`, `Category`, `Religion`, `Address`, `AadharNumber`, `ProfilePic`, `DocReq`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`, `DisbursedAmount`, `SanctionedDate`) VALUES
(1, 4, 282545311, 4, '1998-01-05', 'Female', 'General', 'Hindu', 'H-klljkj', 'uytgyu131234', '5a50384cae0f97de34cf8eb2c34942881688995799.jpg', '585db2665cb1d147f9c82bafac1ad7801688995799.pdf', '2023-07-10 13:29:59', 'Amount has been disbursed', 'Disbursed', '2023-07-11 04:18:50', 4500, '2023-07-12 07:44:06'),
(2, 3, 901248061, 4, '1998-01-05', 'Female', 'OBC', 'Hindu', 'J&K Block Laxmi Nagar J-890', 'trertrt124645', 'be2d71b807ab08ff4ff7fd56e1ea0c8b1688995936.jpg', 'e9aceca6fb9da40a1360a834d6b9e4711688995936.pdf', '2023-07-10 13:32:16', 'Amount has been sanctioned', 'Disbursed', '2023-07-11 04:18:50', 5400, '2023-07-12 07:40:24'),
(3, 4, 625878995, 4, '1989-01-05', 'Female', 'SC', 'Hindu', 'hhuiy', '798787', 'be2d71b807ab08ff4ff7fd56e1ea0c8b1689230522.jpg', 'e9aceca6fb9da40a1360a834d6b9e4711689230522.pdf', '2023-07-13 06:42:02', 'Rejected', 'Rejected', '2023-07-13 06:42:02', NULL, '2023-07-20 13:05:12'),
(4, 2, 403290886, 6, '2002-01-02', 'Male', 'General', 'Hindu', 'A 123 XYZ Apartment\r\nnew delhi', '12345678901', 'abafa8ce548261b77df56a0cdbb366bb1689730066.png', '92c6e6c4e272084e97007a5d4b6af2541689730066.pdf', '2023-07-19 01:27:46', 'Amount disbursed', 'Disbursed', '2023-07-19 01:27:46', 7400, '2023-07-19 17:44:16'),
(5, 3, 204984872, 6, '2000-02-02', 'Male', 'General', 'Hindu', '123 XYZ Aprtment', '36436456', '6a01bb1ba83df2f55a728a85235a1abd1689818476.png', '92c6e6c4e272084e97007a5d4b6af2541689818476.pdf', '2023-07-20 02:01:16', 'Approved', 'Approved', '2023-07-20 02:01:16', NULL, '2023-07-20 02:01:35'),
(6, 2, 435704734, 7, '1998-10-14', 'Male', 'General', 'Hindu', '32534 ABC Apartment \r\nnew Delhi 11001', '85123644', 'cc15b179fd70ab9e5d06e7f2a2bad7631689871856.png', '92c6e6c4e272084e97007a5d4b6af2541689871856.pdf', '2023-07-20 16:50:56', 'Money Trnasferred', 'Disbursed', '2023-07-20 16:50:56', 7400, '2023-07-20 17:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblbankdetails`
--

CREATE TABLE `tblbankdetails` (
  `ID` int(10) NOT NULL,
  `ApplicationNumber` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AccountHoldername` varchar(250) DEFAULT NULL,
  `BankName` varchar(250) DEFAULT NULL,
  `BranchName` varchar(250) DEFAULT NULL,
  `IFSCCode` varchar(250) DEFAULT NULL,
  `AccountNumber` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbankdetails`
--

INSERT INTO `tblbankdetails` (`ID`, `ApplicationNumber`, `UserID`, `AccountHoldername`, `BankName`, `BranchName`, `IFSCCode`, `AccountNumber`, `CreationDate`) VALUES
(1, 901248061, 4, 'Saraswati Misra', 'State Bank of India', 'State Bank of India Laxmi Nagar Delhi', 'HJg78788', 58962314, '2023-07-11 14:21:41'),
(2, 282545311, 4, 'Saraswati Mishra', 'State Bank of India', 'State Bank of India Delhi Laxmi Nagar', 'ghfghfghf1234', 89789778, '2023-07-12 07:42:09'),
(3, 403290886, 6, 'Anuj Kumar', 'PNB', 'GT Road Ghazibad', 'PUNB1234', 2147483647, '2023-07-19 17:33:30'),
(4, 204984872, 6, 'Anuj kumar', 'PNB', 'GT Road Ghaz', 'PUNB623432', 2147483647, '2023-07-20 02:02:25'),
(5, 435704734, 7, 'John Doe', 'SBI', 'XYZ Branch', 'SBIN128681', 2147483647, '2023-07-20 16:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: center;\"><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\"><font size=\"6\">Scholarship Management System</font></b></div><div style=\"text-align: justify;\"><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:150%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\">The aim of this project is to computerize the\r\noperation of the available SCHOLARSHIPS in the organization and colleges. It is\r\nvery difficult to manage all the works manually. There may have many problems\r\nin accuracy, managing information etc. The proposed system has been designed to\r\nreplace the existing manual system and is user friendly.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:107%;\r\nmso-fareast-font-family:Calibri;mso-bidi-font-family:Calibri;mso-bidi-theme-font:\r\nminor-latin;color:black;background:white\">In </span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:107%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:black;background:white\">Scholarship\r\nManagement System</span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:\r\n107%;mso-fareast-font-family:Calibri;mso-bidi-font-family:Calibri;mso-bidi-theme-font:\r\nminor-latin;color:black;background:white\"> we use PHP and MySQL database. This\r\nis the project which keeps records of scholarships and students. </span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:107%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:black;background:white\">Scholarship\r\nManagement System</span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:\r\n107%;mso-fareast-font-family:Calibri;mso-bidi-font-family:Calibri;mso-bidi-theme-font:\r\nminor-latin;color:black;background:white\"> has two module i.e. admin and users.<o:p></o:p></span></p></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@phpgrukul.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblscheme`
--

CREATE TABLE `tblscheme` (
  `ID` int(5) NOT NULL,
  `SchemeName` varchar(250) DEFAULT NULL,
  `SchemeType` varchar(250) DEFAULT NULL,
  `SchemeGrade` varchar(250) DEFAULT NULL,
  `Yearofscholarship` varchar(250) DEFAULT NULL,
  `Category` varchar(250) DEFAULT NULL,
  `Criteria` varchar(250) DEFAULT NULL,
  `DocomentRequired` mediumtext DEFAULT NULL,
  `LastDate` date DEFAULT NULL,
  `ScholarDesc` mediumtext DEFAULT NULL,
  `ScholarAmount` decimal(10,0) DEFAULT NULL,
  `PublishedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblscheme`
--

INSERT INTO `tblscheme` (`ID`, `SchemeName`, `SchemeType`, `SchemeGrade`, `Yearofscholarship`, `Category`, `Criteria`, `DocomentRequired`, `LastDate`, `ScholarDesc`, `ScholarAmount`, `PublishedDate`) VALUES
(1, 'ISHAN UDAY - Special Scholarship Scheme For North Eastern Region', 'Central', 'Other', 'academic session 2014-15', 'Weaker section of the North East region', 'Passed XII or equivalent in the preceding year of study i.e. 2017 for applications called for during year 2017-18.', '1.Domicile certificate to be issued by the competent authority.\r\n2.Proof of annual income to be issued by the competent authority.\r\n3.For renewals, the annual progress report and continuation of studies will be required to be\r\nuploaded/ verified by the concerned Univeristy/ Institution/ College.', '2022-07-30', '1. BACKGROUND\nThe Ministry of HRD and the University Grants Commission has taken special interest with\nregard to promotion of higher education in the NER. For improving the GER, promoting higher\neducation and for encouraging children belonging to economically weaker section of the NE\nregion, the UGC has decided to launch “IshanUday” Special Scholarship Scheme for North\nEastern Region from academic session 2014-15.Before launching the scheme the UGC\nundertook wide ranging consultations witHState Governments and Central & State Universities\nof the NE region, the Ministry ofHRD, the Ministry of Development of North Eastern Region ,\nthe North EasternCouncil, Shillong and other stakeholders.\n2. OBJECTIVES\n1) To provide equal opportunities for higher studies in NE Region.\n2) To increase the Gross Enrolment Ratio (GER) in NE Region.\n3) To focus more on professional education in NE Region.\n4) Optimum utilization of NER Budgetary Allocation.\n3. SCOPE\nTen thousand (10,000) fresh scholarships every yearbeginning from the academic year 2014-15\nfor general degree courses, technical and professional courses, including medical and paramedical courses as certified by the Registrar/ Principal/ Director of University/ College/ Institute.\n? Students with domicile of NER, whose parental annual income does not exceed Rs.4.5\nlakh per annum from all sources.\n? Passed XII or equivalent in the preceding year of study i.e. 2017 for applications called\nfor during year 2017-18.\n? Secured admission in first year of any degree course, either general degree course of\ntechnical/professional/ medical/ paramedical course (Integrated courses included) in any\nof the following University/ College/ Institute :-\n? Universities/Institutions/Colleges included under Section 2(f) and 12 (B) of\nUGC Act.\n? Deemed to be Universities included under Section 3 of the UGC Act, 1956 and\neligible to receive grants-in-aid from UGC.\n? Universities/Institutions/Colleges funded by Central / State Government.\n? Institutes of National Importance.\n? Institutions recognized by other Statutory councils within as well as outside\n? The admission should have been made in University/ Institution/ College with\nAISHE code.\nNote: 1) For students of integrated degree couses, scholarship will be tenable for the complete\nduration of the course.\n2)For dual degree course, the scholarship will only be tenable for the tenure of first\ndegree.\n? For availing scholarship under this scheme, the income of the parents of the student\nshould not exceed Rs.4.5 lakh per annum.\n? Transgender candidates are eligible to apply under the scheme. The reservation shall be\nfollowed as per Government of India norms.\n5. EXCLUSIONS\nThe following shall not be eligible under this scheme1) Students pursuing courses/programs through Open Universities.\n2) Students already availing scholarship for pursuing the Undergraduate programmeunder any\nother scheme(s).\n3) Students gaining admission through „management quota?.\n4) Students pursuing courses, such as Diploma Courses, not leading to award of a Degree.\n5) Students whose parents? income exceeds Rs.4.5 lakh per annumrsuing courses, such as\nDiploma Courses, not leading to award of degree.\n6. SLOTS\n? UGC will award 10,000 (ten thousand) fresh scholarships per year.\n? Allocation of slots for each State shall be done based upon the population (latest\ncensus report) of the respective State. If the slots remain vacant in any particular\nState, the unfilled slots shall be distributed equitably among other States.\n? There shall be three Percent horizontal reservation for differently- abled persons.\n7. AMOUNT OF SCHOLARSHIP\nRs.5400/- per month for general degree course and Rs.7800/- per month for\ntechnical/medical/professional/paramedical courses.\n8. PROCEDURE FOR APPLYING FOR THE SCHEME\n? Applications will be invited once in a year on the National e-Scholarship Portal of the\nGovernment of India. Short notification will also be uploaded on the UGC website.\n? At the time of applying, the course will be classified as general degree or professional by\nthe concerned University/ Institution/College.\n? Incomplete applications will be summarily rejected. Only verified online applications\nwill be considered for award of scholarship.\n9. SELECTION PROCEDURE\n? 10,000 (ten thousand) fresh scholarships will be awarded every year.\n? Distribution of slots amongst the states of NER will be done on the basis of population\ncensus(last).\n? If slots in a particular state remain vacant due to non-availability of eligible candidates,\nthe unfilled slots will be distributed equitably amongst other states.\n? Reservation for Persons with Disability (PwD) will be made as per Government of India\nnorms.\n10. JOINING\nThe scholar would be awarded from the date of joining the course as certified by the University/\nInstitution/ College.\n11. DURATION OF SCHOLARSHIP\n? After selection, the awardees will be paid scholarship on DBT mode.\n? The list of awardees will be pushed to Public Financial Management System (PFMS) by\nthe NIC.\n? PFMS will generate payment files on the basis of the nomenclature of course being\npursued by the awardee (general degree/ technical/ medical/ professional/ paramedical).\nPayments will be generated on annual basis.\n12. RENEWALS\n? Scholarship granted under the scheme will be kept renewed during the period of first\ndegree course, subject to good conduct and maintenance of prescribed attendance.\n? The scholarship will be renewed for the next year of study on receipt of a annual progress\nreport to be granted by the administrative head of the University/ Institution/\nCollege.(E.g. Registrar of a University/ Director of the Institution/ Principal of the\nCollege or any other officer designated by them).\n? Students failing to get promoted to the next class/ level would forfeit the scholarship.\n? Change in course of study will not be permitted. If the awardee changes the course of\nstudy, the scholarship will stand forfeited from the date of such a change.\n? Scheme will be implemented and monitored by the UGC.\n? The awardees of previous years will continue to follow the UGC pattern of assistance\nthrough the designated bank branches of Canara Bank.\n13. PROCEDURE FOR DISBURSEMENT\nScholarship (as certified by the institutions identified under this scheme) will be paid to the\nselected students by the UGC through DBT (Direct Benefit Transfer) Mode and will be\ntransferred to the Bank account of the beneficiaries. This procedure will be completed through\nthe PFMS.', 5400, '2023-07-05 18:30:00'),
(2, 'PG INDIRA GANDHI SCHOLARSHIP FOR SINGLE GIRL CHILD', 'AICTE', 'Other', 'academic session 2014-15', 'Girl students who are admitted in the first year of PG courses ', '? Slots : 3000\r\n? Age limit: Girl students up to the age of 30 years at the time of admission in first year of PG\r\ncourses are eligible.\r\n? The scheme is applicable to such single girl child who has taken admission in regular, fulltime first year Mas', '1.Affidavit regarding Single girl child status may be uploaded\r\n2.Proof of annual income to be issued by the competent authority.\r\n3.For renewals, the annual progress report and continuation of studies will be required to be\r\nuploaded/ verified by the concerned Univeristy/ Institution/ College.', '2023-10-13', '1. INTRODUCTION\r\nIt is observed that number of girls as against boys in certain states is declining which is a matter of\r\ngreat concern. The females are even forced to give birth to male child. In such circumstances\r\neducation of women needs to be used and effective means for their empowerment and education will\r\nprepare them to have a control over their lives. The mindset which militates against the girl child\r\ncould not keep pace with economic progress and literacy. The Government of India declared\r\nelementary education as a basic human right of every child. The Union Government of India has\r\ntaken various steps to uplift the status of women by implementing various schemes including free\r\neducation for girls. In order to achieve and promote girls education, UGC has introduced a Post\r\nGraduate Indira Gandhi Scholarship for Single Girl Child with an aim to compensate direct costs of\r\ngirl education to all levels especially for such girls who happen to be the only girl child in their\r\nfamily.\r\n2. OBJECTIVES\r\nThe objectives of the proposed scheme are:\r\na) To support post graduate education of single girl child in postgraduate courses only.\r\nb) To recognize the value of observance of small family norm.\r\n3. TARGETGROUP\r\n? Girl students who are admitted in the first year of PG courses in the following Universities /\r\nColleges and happen to be the only girl child in the family:\r\n? Universities/Institutions/Colleges included under section 2(f) & and 12(B) of UGC Act.\r\n? Deemed to be Universities included under Section 3 of the UGC Act, 1956 and eligible to\r\nreceive grants-in-aid from UGC. Those Deemed Universities which do not receive funds\r\nfrom the Central/ State Government are not eligible institutions under the scheme.\r\n? Universities/Institutions/College funded by Central/State Government.\r\n? Institutes of National Importance.\r\n? Girl students without having any brother or the girl student who are twin daughters/ fraternal\r\ndaughter may also apply for scholarship under the aforesaid scheme. In a family if one son\r\nand one daughter is available then girl child will not be considered for scholarship under the\r\nscheme.\r\n4 ELIGIBILITY\r\n? Slots : 3000\r\n? Age limit: Girl students up to the age of 30 years at the time of admission in first year of PG\r\ncourses are eligible.\r\n? The scheme is applicable to such single girl child who has taken admission in regular, fulltime first year Masters Degree course in any designated university or a post graduate college.\r\n? Admission to PG Course in Distance education mode is not covered under the scheme.\r\n5 NATURE OF ASSISTANCE AVAILABLE UNDER THESCHEME\r\nAmount of fellowship: Rs.36,200/- p.a. for a period of two years only i.e. full duration of a PG\r\ncourse. No other additional grant will be payable in lieu of hostel charges and medical charges\r\netc.\r\n6 PROCEDURE FORAPPLYING\r\n? The candidates fulfilling the eligibility conditions are required to apply online on National\r\nScholarship Portal after initiation of application process and notice to be published on UGC website.\r\n? The host institution where the candidate is studying is required to verify the online\r\napplication.\r\n? It is expected from the institutions where student has taken admission in the first year PG\r\ncourse, no tuition fees will be charged by the institute from girl students to pursue PG degree course\r\nin Universities/Colleges/Institutions\r\n7 AADHAARSEEDING\r\nThe Ministry of Human Resource Development, Government of India vide its letter D.O. No. 18-\r\n7/2013-U1A dated 10th June, 2016 has instructed the University Grants Commission that from the\r\nfinancial year 2016-17 onwards the Aadhaar will be used as an identifier for disbursement of all\r\nGovernment subsidies/Scholarships/Fellowships which are to be disbursed directly into the\r\nbeneficiary’s account. The disbursals will be governed by the Aadhaar Act, 2016.\r\n8. PROCEDURE FOR APPLYING FOR THE SCHEME\r\n? Applications will be invited once in a year on the National e-Scholarship Portal of the\r\nGovernment of India. Short notification will also be uploaded on the UGC website.\r\n? Incomplete applications will be summarily rejected. Only verified online applications\r\nwill be considered for award of scholarship.\r\n? Affidavit regarding Single girl child status may be uploaded as per format given in\r\nAnnexure-II.\r\n? Joining report as per Annexure-I has to be uploaded.\r\n9. SELECTION PROCEDURE\r\n? 3,000 fresh scholarships will be awarded every year.\r\n? The awardee can avail of other scholarship also during the tenure of this scholarship.\r\n10. JOINING\r\nThe scholar would be awarded from the date of joining the course as certified by the University/\r\nInstitution/ College.\r\n11. DURATION OF SCHOLARSHIP\r\n? After selection, the awardees will be paid scholarship on DBT mode on annual basis.\r\n12. RENEWALS\r\n? The scholarship will be renewed for the next year of study on receipt of renewal.\r\n? Students failing to get promoted to the next class/ level would forfeit the\r\nscholarship.\r\n? Change in course of study will not be permitted. If the awardee changes the\r\ncourse of study, the scholarship will stand forfeited from the date of such a\r\nchange.\r\n? Scheme will be implemented and monitored by the UGC.\r\n? The awardees of previous years will continue to follow the pattern of assistance\r\nthrough UGC/Canara Bank portal.', 7400, '2023-07-07 05:21:24'),
(3, 'Graduate INDIRA GANDHI SCHOLARSHIP FOR SINGLE GIRL CHILD', 'State', 'Graduate', 'academic session 2014-15', 'Girl students who are admitted in the first year of PG courses ', '? Slots : 3000\r\n? Age limit: Girl students up to the age of 30 years at the time of admission in first year of PG\r\ncourses are eligible.\r\n? The scheme is applicable to such single girl child who has taken admission in regular, fulltime first year Mas', '1.Affidavit regarding Single girl child status may be uploaded\r\n2.Proof of annual income to be issued by the competent authority.\r\n3.For renewals, the annual progress report and continuation of studies will be required to be\r\nuploaded/ verified by the concerned Univeristy/ Institution/ College.', '2023-08-29', '1. INTRODUCTION\r\nIt is observed that number of girls as against boys in certain states is declining which is a matter of\r\ngreat concern. The females are even forced to give birth to male child. In such circumstances\r\neducation of women needs to be used and effective means for their empowerment and education will\r\nprepare them to have a control over their lives. The mindset which militates against the girl child\r\ncould not keep pace with economic progress and literacy. The Government of India declared\r\nelementary education as a basic human right of every child. The Union Government of India has\r\ntaken various steps to uplift the status of women by implementing various schemes including free\r\neducation for girls. In order to achieve and promote girls education, UGC has introduced a Post\r\nGraduate Indira Gandhi Scholarship for Single Girl Child with an aim to compensate direct costs of\r\ngirl education to all levels especially for such girls who happen to be the only girl child in their\r\nfamily.\r\n2. OBJECTIVES\r\nThe objectives of the proposed scheme are:\r\na) To support post graduate education of single girl child in postgraduate courses only.\r\nb) To recognize the value of observance of small family norm.\r\n3. TARGETGROUP\r\n? Girl students who are admitted in the first year of PG courses in the following Universities /\r\nColleges and happen to be the only girl child in the family:\r\n? Universities/Institutions/Colleges included under section 2(f) & and 12(B) of UGC Act.\r\n? Deemed to be Universities included under Section 3 of the UGC Act, 1956 and eligible to\r\nreceive grants-in-aid from UGC. Those Deemed Universities which do not receive funds\r\nfrom the Central/ State Government are not eligible institutions under the scheme.\r\n? Universities/Institutions/College funded by Central/State Government.\r\n? Institutes of National Importance.\r\n? Girl students without having any brother or the girl student who are twin daughters/ fraternal\r\ndaughter may also apply for scholarship under the aforesaid scheme. In a family if one son\r\nand one daughter is available then girl child will not be considered for scholarship under the\r\nscheme.\r\n4 ELIGIBILITY\r\n? Slots : 3000\r\n? Age limit: Girl students up to the age of 30 years at the time of admission in first year of PG\r\ncourses are eligible.\r\n? The scheme is applicable to such single girl child who has taken admission in regular, fulltime first year Masters Degree course in any designated university or a post graduate college.\r\n? Admission to PG Course in Distance education mode is not covered under the scheme.\r\n5 NATURE OF ASSISTANCE AVAILABLE UNDER THESCHEME\r\nAmount of fellowship: Rs.36,200/- p.a. for a period of two years only i.e. full duration of a PG\r\ncourse. No other additional grant will be payable in lieu of hostel charges and medical charges\r\netc.\r\n6 PROCEDURE FORAPPLYING\r\n? The candidates fulfilling the eligibility conditions are required to apply online on National\r\nScholarship Portal after initiation of application process and notice to be published on UGC website.\r\n? The host institution where the candidate is studying is required to verify the online\r\napplication.\r\n? It is expected from the institutions where student has taken admission in the first year PG\r\ncourse, no tuition fees will be charged by the institute from girl students to pursue PG degree course\r\nin Universities/Colleges/Institutions\r\n7 AADHAARSEEDING\r\nThe Ministry of Human Resource Development, Government of India vide its letter D.O. No. 18-\r\n7/2013-U1A dated 10th June, 2016 has instructed the University Grants Commission that from the\r\nfinancial year 2016-17 onwards the Aadhaar will be used as an identifier for disbursement of all\r\nGovernment subsidies/Scholarships/Fellowships which are to be disbursed directly into the\r\nbeneficiary’s account. The disbursals will be governed by the Aadhaar Act, 2016.\r\n8. PROCEDURE FOR APPLYING FOR THE SCHEME\r\n? Applications will be invited once in a year on the National e-Scholarship Portal of the\r\nGovernment of India. Short notification will also be uploaded on the UGC website.\r\n? Incomplete applications will be summarily rejected. Only verified online applications\r\nwill be considered for award of scholarship.\r\n? Affidavit regarding Single girl child status may be uploaded as per format given in\r\nAnnexure-II.\r\n? Joining report as per Annexure-I has to be uploaded.\r\n9. SELECTION PROCEDURE\r\n? 3,000 fresh scholarships will be awarded every year.\r\n? The awardee can avail of other scholarship also during the tenure of this scholarship.\r\n10. JOINING\r\nThe scholar would be awarded from the date of joining the course as certified by the University/\r\nInstitution/ College.\r\n11. DURATION OF SCHOLARSHIP\r\n? After selection, the awardees will be paid scholarship on DBT mode on annual basis.\r\n12. RENEWALS\r\n? The scholarship will be renewed for the next year of study on receipt of renewal.\r\n? Students failing to get promoted to the next class/ level would forfeit the\r\nscholarship.\r\n? Change in course of study will not be permitted. If the awardee changes the\r\ncourse of study, the scholarship will stand forfeited from the date of such a\r\nchange.\r\n? Scheme will be implemented and monitored by the UGC.\r\n? The awardees of previous years will continue to follow the pattern of assistance\r\nthrough UGC/Canara Bank portal.', 7400, '2023-07-07 05:21:24'),
(4, 'PG SCHOLARSHIP SCHEME FOR SC ST STUDENTS FOR PERSUING PROFESSIONAL COURSES', 'Central', 'Other', 'academic session 2014-15', 'Weaker section of the North East region', 'Passed XII or equivalent in the preceding year of study i.e. 2017 for applications called for during year 2017-18.', '1.Domicile certificate to be issued by the competent authority.\r\n2.Proof of annual income to be issued by the competent authority.\r\n3.For renewals, the annual progress report and continuation of studies will be required to be\r\nuploaded/ verified by the concerned Univeristy/ Institution/ College.', '2023-07-30', '1. BACKGROUND\r\nThe Ministry of HRD and the University Grants Commission has taken special interest with\r\nregard to promotion of higher education in the NER. For improving the GER, promoting higher\r\neducation and for encouraging children belonging to economically weaker section of the NE\r\nregion, the UGC has decided to launch “IshanUday” Special Scholarship Scheme for North\r\nEastern Region from academic session 2014-15.Before launching the scheme the UGC\r\nundertook wide ranging consultations witHState Governments and Central & State Universities\r\nof the NE region, the Ministry ofHRD, the Ministry of Development of North Eastern Region ,\r\nthe North EasternCouncil, Shillong and other stakeholders.\r\n2. OBJECTIVES\r\n1) To provide equal opportunities for higher studies in NE Region.\r\n2) To increase the Gross Enrolment Ratio (GER) in NE Region.\r\n3) To focus more on professional education in NE Region.\r\n4) Optimum utilization of NER Budgetary Allocation.\r\n3. SCOPE\r\nTen thousand (10,000) fresh scholarships every yearbeginning from the academic year 2014-15\r\nfor general degree courses, technical and professional courses, including medical and paramedical courses as certified by the Registrar/ Principal/ Director of University/ College/ Institute.\r\n? Students with domicile of NER, whose parental annual income does not exceed Rs.4.5\r\nlakh per annum from all sources.\r\n? Passed XII or equivalent in the preceding year of study i.e. 2017 for applications called\r\nfor during year 2017-18.\r\n? Secured admission in first year of any degree course, either general degree course of\r\ntechnical/professional/ medical/ paramedical course (Integrated courses included) in any\r\nof the following University/ College/ Institute :-\r\n? Universities/Institutions/Colleges included under Section 2(f) and 12 (B) of\r\nUGC Act.\r\n? Deemed to be Universities included under Section 3 of the UGC Act, 1956 and\r\neligible to receive grants-in-aid from UGC.\r\n? Universities/Institutions/Colleges funded by Central / State Government.\r\n? Institutes of National Importance.\r\n? Institutions recognized by other Statutory councils within as well as outside\r\n? The admission should have been made in University/ Institution/ College with\r\nAISHE code.\r\nNote: 1) For students of integrated degree couses, scholarship will be tenable for the complete\r\nduration of the course.\r\n2)For dual degree course, the scholarship will only be tenable for the tenure of first\r\ndegree.\r\n? For availing scholarship under this scheme, the income of the parents of the student\r\nshould not exceed Rs.4.5 lakh per annum.\r\n? Transgender candidates are eligible to apply under the scheme. The reservation shall be\r\nfollowed as per Government of India norms.\r\n5. EXCLUSIONS\r\nThe following shall not be eligible under this scheme1) Students pursuing courses/programs through Open Universities.\r\n2) Students already availing scholarship for pursuing the Undergraduate programmeunder any\r\nother scheme(s).\r\n3) Students gaining admission through „management quota?.\r\n4) Students pursuing courses, such as Diploma Courses, not leading to award of a Degree.\r\n5) Students whose parents? income exceeds Rs.4.5 lakh per annumrsuing courses, such as\r\nDiploma Courses, not leading to award of degree.\r\n6. SLOTS\r\n? UGC will award 10,000 (ten thousand) fresh scholarships per year.\r\n? Allocation of slots for each State shall be done based upon the population (latest\r\ncensus report) of the respective State. If the slots remain vacant in any particular\r\nState, the unfilled slots shall be distributed equitably among other States.\r\n? There shall be three Percent horizontal reservation for differently- abled persons.\r\n7. AMOUNT OF SCHOLARSHIP\r\nRs.5400/- per month for general degree course and Rs.7800/- per month for\r\ntechnical/medical/professional/paramedical courses.\r\n8. PROCEDURE FOR APPLYING FOR THE SCHEME\r\n? Applications will be invited once in a year on the National e-Scholarship Portal of the\r\nGovernment of India. Short notification will also be uploaded on the UGC website.\r\n? At the time of applying, the course will be classified as general degree or professional by\r\nthe concerned University/ Institution/College.\r\n? Incomplete applications will be summarily rejected. Only verified online applications\r\nwill be considered for award of scholarship.\r\n9. SELECTION PROCEDURE\r\n? 10,000 (ten thousand) fresh scholarships will be awarded every year.\r\n? Distribution of slots amongst the states of NER will be done on the basis of population\r\ncensus(last).\r\n? If slots in a particular state remain vacant due to non-availability of eligible candidates,\r\nthe unfilled slots will be distributed equitably amongst other states.\r\n? Reservation for Persons with Disability (PwD) will be made as per Government of India\r\nnorms.\r\n10. JOINING\r\nThe scholar would be awarded from the date of joining the course as certified by the University/\r\nInstitution/ College.\r\n11. DURATION OF SCHOLARSHIP\r\n? After selection, the awardees will be paid scholarship on DBT mode.\r\n? The list of awardees will be pushed to Public Financial Management System (PFMS) by\r\nthe NIC.\r\n? PFMS will generate payment files on the basis of the nomenclature of course being\r\npursued by the awardee (general degree/ technical/ medical/ professional/ paramedical).\r\nPayments will be generated on annual basis.\r\n12. RENEWALS\r\n? Scholarship granted under the scheme will be kept renewed during the period of first\r\ndegree course, subject to good conduct and maintenance of prescribed attendance.\r\n? The scholarship will be renewed for the next year of study on receipt of a annual progress\r\nreport to be granted by the administrative head of the University/ Institution/\r\nCollege.(E.g. Registrar of a University/ Director of the Institution/ Principal of the\r\nCollege or any other officer designated by them).\r\n? Students failing to get promoted to the next class/ level would forfeit the scholarship.\r\n? Change in course of study will not be permitted. If the awardee changes the course of\r\nstudy, the scholarship will stand forfeited from the date of such a change.\r\n? Scheme will be implemented and monitored by the UGC.\r\n? The awardees of previous years will continue to follow the UGC pattern of assistance\r\nthrough the designated bank branches of Canara Bank.\r\n13. PROCEDURE FOR DISBURSEMENT\r\nScholarship (as certified by the institutions identified under this scheme) will be paid to the\r\nselected students by the UGC through DBT (Direct Benefit Transfer) Mode and will be\r\ntransferred to the Bank account of the beneficiaries. This procedure will be completed through\r\nthe PFMS.', 3400, '2023-07-05 18:30:00'),
(6, 'Virchow Scholarship Program', 'State', 'High School Students', '2022-2023', 'SC/ST and OBC', 'Eligibility\r\nOpen for girl students only.\r\nStudents must be residents of Telangana or Andhra Pradesh.\r\nApplicants must be currently studying in Class 11 (any stream) or first-year of graduation (any stream) from government schools/colleges only after', 'Documents\r\nMarksheet of Class 10 or 12\r\nA government-issued identity proof (Aadhaar card/voter identity card/driving license/PAN card) \r\nCurrent year admission proof (fee receipt/admission letter/institution identity card/bonafide certificate)\r\nFamily income proof (Salary Slip, Form 16, Income Certificate, ITR, etc.)\r\nBank account details of the applicant\r\nPhotograph of the applicant', '2023-08-06', 'How can you apply?\r\nClick on the ‘Apply Now’ button below.\r\nLogin to Buddy4Study using a registered ID to land onto the ‘Online Application Form Page’.\r\nIf not registered on Buddy4Study - Register at Buddy4Study with your Email/Mobile/Gmail account. \r\nYou will now be redirected to the ‘Virchow Scholarship Program’ application form page.\r\nClick on the ‘Start Application’ button to begin the application process.\r\nFill in the required details in the online scholarship application form.\r\nUpload the required documents.\r\nAccept the ‘Terms and Conditions’ and click on ‘Preview’.\r\nIf all the details filled in by the applicant are correctly showing on the preview screen, click on the ‘Submit’ button to complete the application process.', 1500, '2023-07-18 13:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Moshin', 'mos123', 7894566123, 'mos@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 11:16:53'),
(2, 'test', 'test123', 7946547897, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 12:34:42'),
(3, 'Sarita Pandey', 'sar123', 7897979798, 'sar@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-07 06:59:18'),
(4, 'Saraswati Misra', 'saras123', 8978978979, 'srt@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-07 06:59:56'),
(5, 'Pankaj Jha', 'pan123', 7987987979, 'pan@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-07 07:02:48'),
(6, 'Anuj Kumar', 'ak30', 4562310236, 'ak@test.com', 'f925916e2754e5e03f75dd58a5733251', '2023-07-18 18:02:11'),
(7, 'John Doe', 'jhnd12', 1456321459, 'jhnd12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-07-20 16:46:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapply`
--
ALTER TABLE `tblapply`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbankdetails`
--
ALTER TABLE `tblbankdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblscheme`
--
ALTER TABLE `tblscheme`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapply`
--
ALTER TABLE `tblapply`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbankdetails`
--
ALTER TABLE `tblbankdetails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblscheme`
--
ALTER TABLE `tblscheme`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
