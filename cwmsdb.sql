-- phpMyAdmin SQL Dump
    -- version 4.9.0.1
    -- https://www.phpmyadmin.net/
    --

    -- Host: 127.0.0.1
    -- Generation Time: Dec 15, 2021 at 07:01 PM
    -- Server version: 10.3.15-MariaDB
    -- PHP Version: 7.2.19
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
    AUTOCOMMIT = 0;
START TRANSACTION
    ;
SET
    time_zone = "+00:00";
    /*!40101
SET
    @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
    /*!40101
SET
    @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
    /*!40101
SET
    @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
    /*!40101
SET NAMES
    utf8mb4 */;
    --

    -- Database: `cwmsdb`
    --

    -- --------------------------------------------------------
    --

    -- Table structure for table `admin`
    --

CREATE TABLE `admin`(
    `id` INT(11) NOT NULL,
    `UserName` VARCHAR(100) DEFAULT NULL,
    `Password` VARCHAR(100) DEFAULT NULL,
    `updationDate` TIMESTAMP NULL DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--

-- Dumping data for table `admin`
--

INSERT INTO `admin`(
    `id`,
    `UserName`,
    `Password`,
    `updationDate`
)
VALUES(
    1,
    'admin',
    'f925916e2754e5e03f75dd58a5733251',
    '2020-12-10 11:18:49'
);
-- --------------------------------------------------------
--

-- Table structure for table `tblcarwashbooking`
--

CREATE TABLE `tblcarwashbooking`(
    `id` INT(11) NOT NULL,
    `bookingId` BIGINT(10) DEFAULT NULL,
    `packageType` VARCHAR(120) DEFAULT NULL,
    `carWashPoint` INT(11) DEFAULT NULL,
    `fullName` VARCHAR(150) DEFAULT NULL,
    `mobileNumber` BIGINT(12) DEFAULT NULL,
    `washDate` DATE DEFAULT NULL,
    `washTime` TIME DEFAULT NULL,
    `message` MEDIUMTEXT DEFAULT NULL,
    `status` VARCHAR(120) DEFAULT NULL,
    `adminRemark` MEDIUMTEXT DEFAULT NULL,
    `paymentMode` VARCHAR(120) DEFAULT NULL,
    `txnNumber` VARCHAR(120) DEFAULT NULL,
    `postingDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(), `lastUpdationDate` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP()) ENGINE = InnoDB DEFAULT CHARSET = latin1;
    --

    -- Dumping data for table `tblcarwashbooking`
    --

    INSERT INTO `tblcarwashbooking`(
        `id`,
        `bookingId`,
        `packageType`,
        `carWashPoint`,
        `fullName`,
        `mobileNumber`,
        `washDate`,
        `washTime`,
        `message`,
        `status`,
        `adminRemark`,
        `paymentMode`,
        `txnNumber`,
        `postingDate`,
        `lastUpdationDate`
    )
VALUES(
    1,
    316460298,
    '1',
    1,
    'ANuj kumar',
    1234567890,
    '2021-12-16',
    '11:45:00',
    'NA',
    'Completed',
    'Washing completed',
    'e-Wallet',
    '345345345',
    '2021-12-13 19:14:22',
    '2021-12-14 18:04:52'
),(
    2,
    647869499,
    '3',
    2,
    'Anuj kumar',
    1234567890,
    '2021-12-30',
    '15:47:00',
    'na',
    'New',
    NULL,
    NULL,
    NULL,
    '2021-12-13 19:14:47',
    '2021-12-14 17:20:56'
),(
    3,
    215755984,
    '2',
    3,
    'AMit',
    9874563210,
    '2021-12-19',
    '15:05:00',
    'NA',
    'New',
    NULL,
    NULL,
    NULL,
    '2021-12-13 19:16:19',
    NULL
),(
    4,
    440337019,
    '1',
    2,
    'Sarita',
    6987412360,
    '2022-01-01',
    '19:37:00',
    'NA',
    'New',
    NULL,
    NULL,
    NULL,
    '2021-12-14 17:01:55',
    NULL
),(
    5,
    783971257,
    '2',
    2,
    'John Doe',
    1234567890,
    '2021-12-25',
    '13:31:00',
    'NA',
    'New',
    NULL,
    NULL,
    NULL,
    '2021-12-14 19:00:44',
    NULL
),(
    6,
    328979472,
    '3 ',
    3,
    'Rahul Yadav',
    1234567890,
    '2021-12-18',
    '10:15:00',
    'NA',
    'New',
    NULL,
    NULL,
    NULL,
    '2021-12-14 19:12:37',
    NULL
),(
    7,
    151983398,
    '1',
    2,
    'Sanjeev',
    1234569870,
    '2021-12-15',
    '19:50:00',
    'Car wash',
    'Completed',
    'Car Wash Completed',
    'Debit/Credit Card',
    'DSGFS72342834',
    '2021-12-14 19:15:28',
    '2021-12-14 19:15:55'
);
-- --------------------------------------------------------
--

-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry`(
    `id` INT(11) NOT NULL,
    `FullName` VARCHAR(100) DEFAULT NULL,
    `EmailId` VARCHAR(100) DEFAULT NULL,
    `Subject` VARCHAR(100) DEFAULT NULL,
    `Description` MEDIUMTEXT DEFAULT NULL,
    `PostingDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(), `Status` INT(1) DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = latin1;
    --

    -- Dumping data for table `tblenquiry`
    --

    INSERT INTO `tblenquiry`(
        `id`,
        `FullName`,
        `EmailId`,
        `Subject`,
        `Description`,
        `PostingDate`,
        `Status`
    )
VALUES(
    4,
    'Anuj kumar',
    'anuj@gmail.com',
    'General Enquiry',
    'I want to know the price of car wash',
    '2021-12-13 18:27:53',
    1
),
(
    5,
    'Amit',
    'amit@gmail.com',
    'Test',
    'Test',
    '2021-12-14 19:14:22',
    1
);
-- --------------------------------------------------------
--

-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages`(
    `id` INT(11) NOT NULL,
    `type` VARCHAR(255) DEFAULT '',
    `detail` LONGTEXT DEFAULT NULL,
    `openignHrs` VARCHAR(255) DEFAULT NULL,
    `phoneNumber` BIGINT(20) DEFAULT NULL,
    `emailId` VARCHAR(120) DEFAULT NULL
) ENGINE = MyISAM DEFAULT CHARSET = latin1;
--

-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages`(
    `id`,
    `type`,
    `detail`,
    `openignHrs`,
    `phoneNumber`,
    `emailId`
)
VALUES(
    3,
    'aboutus',
    '																				<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">CAr Wash Management System is a brand which is literally going to change the way people think about car cleaning. It is a unique mechanized car cleaning concept where cars are getting pampered by the latest equipments including high pressure cleaning machines, spray injection and extraction machines, high powered vacuum cleaners, steam cleaners and so on.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">Car Wash&nbsp; Management System is a brand that is literally going to change the way people think about car cleaning. It is a unique mechanized car cleaning concept where cars are getting pampered by the latest equipments including high pressure cleaning machines, spray injection and extraction machines, high powered vacuum cleaners, steam cleaners and so on.&nbsp;</span><br></div><div></div>\r\n										\r\n										',
    NULL,
    NULL,
    NULL
),
(
    11,
    'contact',
    'Tejgaon, Dhaka, Bangladesh',
    'Mon - Fri, 8:00 - 21:00',
    1884622861,
    'info@cwms.com'
);
-- --------------------------------------------------------
--

-- Table structure for table `tblwashingpoints`
--

CREATE TABLE `tblwashingpoints`(
    `id` INT(11) NOT NULL,
    `washingPointName` VARCHAR(255) DEFAULT NULL,
    `washingPointAddress` VARCHAR(255) DEFAULT NULL,
    `contactNumber` BIGINT(20) DEFAULT NULL,
    `creationDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()) ENGINE = InnoDB DEFAULT CHARSET = latin1;
    --

    -- Dumping data for table `tblwashingpoints`
    --

    INSERT INTO `tblwashingpoints`(
        `id`,
        `washingPointName`,
        `washingPointAddress`,
        `contactNumber`,
        `creationDate`
    )
VALUES(
    1,
    'XYZ Car Washing Point',
    'Tejgaon, Dhaka, Bangladesh - 1215',
    1236547890,
    '2021-12-13 16:21:20'
),
(
    2,
    'ABC Car Washing Point',
    'Sarulia, Demra, Dhaka - 1361',
    1234567890,
    '2021-12-13 16:22:38'
),
(
    3,
    'Matrix Car washing Point ',
    'Khilgaon, Dhaka, Bangladesh - 1219',
    12345825419,
    '2021-12-13 16:24:28'
);
--

-- Create Table for Teams
--

CREATE TABLE `teams`(
    `id` INT(11) NOT NULL,
    `name` VARCHAR(255) DEFAULT '',
    `roll` BIGINT(20) DEFAULT NULL,
    `github` VARCHAR(255) DEFAULT NULL,
    `email` VARCHAR(120) DEFAULT NULL,
    `image` VARCHAR(255) DEFAULT ''
) ENGINE = MyISAM DEFAULT CHARSET = latin1; INSERT INTO `teams`(
    `id`,
    `name`,
    `roll`,
    `github`,
    `email`,
    `image`
)
VALUES(
    1,
    'Mohammad Ali',
    559804,
    'itsproali',
    'itsproali@gmail.com',
    'https://res.cloudinary.com/itsproali/image/upload/v1666703838/factive/user/MohammadAliProfileSquare_fo5rg4.png'
),
(
    2,
    'Nafiul Islam Jim',
    559740,
    'Hellojimpro',
    'hellojimpro@gmail.com',
    'https://avatars.githubusercontent.com/u/134724719?v=4'
),
(
    3,
    'Soborna Akter',
    559542,
    'soborna837',
    'soborna837@gmail.com',
    'https://avatars.githubusercontent.com/u/134834127?v=4'
),
(
    4,
    'Mohaiminul Munir',
    559735,
    'munir2016',
    'md.mohaimunul2016@gmail.com',
    'https://avatars.githubusercontent.com/u/135091101?v=4'
),
(
    5,
    'Pramit Chakma',
    559543,
    'The-Pramit',
    'thepramit@gmail.com',
    'https://avatars.githubusercontent.com/u/133698139?v=4'
);
--

-- Indexes for dumped tables
--

--

-- Indexes for table `admin`
--

ALTER TABLE
    `admin` ADD PRIMARY KEY(`id`);
    --

    -- Indexes for table `tblcarwashbooking`
    --

ALTER TABLE
    `tblcarwashbooking` ADD PRIMARY KEY(`id`),
    ADD KEY `carWashPoint`(`carWashPoint`);
    --

    -- Indexes for table `tblenquiry`
    --

ALTER TABLE
    `tblenquiry` ADD PRIMARY KEY(`id`);
    --

    -- Indexes for table `tblpages`
    --

ALTER TABLE
    `tblpages` ADD PRIMARY KEY(`id`);
    --

    -- Indexes for table `tblwashingpoints`
    --

ALTER TABLE
    `tblwashingpoints` ADD PRIMARY KEY(`id`);
    --

    -- Indexes for table `teams`
    --

ALTER TABLE
    `teams` ADD PRIMARY KEY(`id`);
    --

    -- AUTO_INCREMENT for dumped tables
    --

    --

    -- AUTO_INCREMENT for table `admin`
    --

ALTER TABLE
    `admin` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;
    --

    -- AUTO_INCREMENT for table `tblcarwashbooking`
    --

ALTER TABLE
    `tblcarwashbooking` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 8;
    --

    -- AUTO_INCREMENT for table `tblenquiry`
    --

ALTER TABLE
    `tblenquiry` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
    --

    -- AUTO_INCREMENT for table `tblpages`
    --

ALTER TABLE
    `tblpages` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 22;
    --

    -- AUTO_INCREMENT for table `tblwashingpoints`
    --

ALTER TABLE
    `tblwashingpoints` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
    --

    -- AUTO_INCREMENT for table `teams`
    --

ALTER TABLE
    `teams` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
    --

    -- Constraints for dumped tables
    --

    --

    -- Constraints for table `tblcarwashbooking`
    --

ALTER TABLE
    `tblcarwashbooking` ADD CONSTRAINT `washingpointid` FOREIGN KEY(`carWashPoint`) REFERENCES `tblwashingpoints`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT
    ;
    /*!40101
SET
    CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
    /*!40101
SET
    CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
    /*!40101
SET
    COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;