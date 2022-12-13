drop table if exists account;
CREATE TABLE account (
  id              SERIAL PRIMARY KEY,
  email           varchar(20),
  password        varchar(20) NOT NULL,
  fullName        varchar(20),
  gender          varchar(20),
  location        varchar(20),
  validatedId     varchar(20),
  country         varchar(20),
  language        varchar(20),
  status          varchar(20)
);

drop table if exists team;
CREATE TABLE team (
  id              SERIAL PRIMARY KEY,
  name            varchar(20) UNIQUE,
  code            varchar(20) UNIQUE,
  fifaRanking     INT,
  appearances     INT,
  titles          INT,
  confederation   varchar(40) NOT NULL,
  groupId         varchar(20) NOT NULL
) ENGINE = InnoDB;

drop table if exists matches;
CREATE TABLE matches (
  matchId         SERIAL PRIMARY KEY,
  kickoff         TIMESTAMP,
  status          varchar(20) NOT NULL DEFAULT 'SCHEDULED'
) ENGINE = InnoDB;

drop table if exists group_match;
CREATE TABLE group_match (
  matchId         INT PRIMARY KEY,
  homeTeam        INT,
  awayTeam        INT,
  groupId         varchar(20) NOT NULL
) ENGINE = InnoDB;

drop table if exists qualifier;
CREATE TABLE qualifier(
  knockoutTeamCode  varchar(20) PRIMARY KEY,
  teamId            INT,
  stageId           varchar(20) NOT NULL
) ENGINE = InnoDB;

drop table if exists knockout_match;
CREATE TABLE knockout_match (
  matchId         INT PRIMARY KEY,
  matchCode       varchar(20) NOT NULL UNIQUE,
  stageId         varchar(20) NOT NULL,
  homeTeamCode    varchar(20) NOT NULL,
  awayTeamCode    varchar(20) NOT NULL
) ENGINE = InnoDB;

drop table if exists knockout_team;
CREATE TABLE knockout_team (
  matchId         INT PRIMARY KEY,
  homeTeam        INT,
  awayTeam        INT
) ENGINE = InnoDB;

drop table if exists match_result;
CREATE TABLE match_result(
  matchId         INT PRIMARY KEY,
  homeTeam        INT ,
  awayTeam        INT ,
  homeTeamGoals   INT,
  awayTeamGoals   INT,
  matchQualifier  varchar(20)
) ENGINE = InnoDB;

drop table if exists ranking;
CREATE TABLE ranking (
  id          SERIAL PRIMARY KEY,
  date        TIMESTAMP,
  accountId   INT,
  points      INT,
  CONSTRAINT no_duplicate_ranking UNIQUE (accountId, date)
) ENGINE = InnoDB;

drop table if exists team;
CREATE TABLE team (
  id              SERIAL PRIMARY KEY,
  name            varchar(20) UNIQUE,
  code            varchar(20) UNIQUE,
  fifaRanking     INT,
  appearances     INT,
  titles          INT,
  confederation   varchar(40) NOT NULL,
  groupId         varchar(20) NOT NULL
) ENGINE = InnoDB;

drop table if exists group_match;
CREATE TABLE group_match (
  matchId         INT PRIMARY KEY,
  homeTeam        INT,
  awayTeam        INT,
  groupId         varchar(20) NOT NULL
) ENGINE = InnoDB;

drop table if exists match_result;
CREATE TABLE match_result(
  matchId         INT PRIMARY KEY,
  homeTeam        INT ,
  awayTeam        INT ,
  homeTeamGoals   INT,
  awayTeamGoals   INT,
  matchQualifier  varchar(20)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`
(
    `PID`                       varchar(20) NOT NULL,
    `Name`                      varchar(30) DEFAULT NULL,
    `Age`                       int         DEFAULT NULL,
    `Position`                  varchar(30) DEFAULT NULL,
    `Height`                    varchar(20) DEFAULT NULL,
    `Weight`                    varchar(20) DEFAULT NULL,
    `Appearance` varchar(20) DEFAULT NULL,
    `Goal`                      int         DEFAULT NULL,
    `Assist`                    int         DEFAULT NULL,
    `AverageRating`            float       DEFAULT NULL,
    `Nationality`               varchar(20) DEFAULT NULL,
    PRIMARY KEY (`PID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

INSERT INTO matches (matchId, kickoff) VALUES
  (1, '2022-11-14 15:00:00'),
  (2, '2022-11-15 12:00:00'),
  (3, '2022-11-15 15:00:00'),
  (4, '2022-11-15 18:00:00'),
  (5, '2022-11-16 10:00:00'),
  (6, '2022-11-16 13:00:00'),
  (7, '2022-11-16 16:00:00'),
  (8, '2022-11-16 19:00:00'),
  (9, '2022-11-17 12:00:00'),
  (10, '2022-11-17 15:00:00'),
  (11, '2022-11-17 18:00:00'),
  (12, '2022-11-18 12:00:00'),
  (13, '2022-11-18 15:00:00'),
  (14, '2022-11-18 18:00:00'),
  (15, '2022-11-19 12:00:00'),
  (16, '2022-11-19 15:00:00'),
  (17, '2022-11-19 18:00:00'),
  (18, '2022-11-20 12:00:00'),
  (19, '2022-11-20 15:00:00'),
  (20, '2022-11-20 18:00:00'),
  (21, '2022-11-21 12:00:00'),
  (22, '2022-11-21 15:00:00'),
  (23, '2022-11-21 18:00:00'),
  (24, '2022-11-22 12:00:00'),
  (25, '2022-11-22 15:00:00'),
  (26, '2022-11-22 18:00:00'),
  (27, '2022-11-23 12:00:00'),
  (28, '2022-11-23 15:00:00'),
  (29, '2022-11-23 18:00:00'),
  (30, '2022-11-24 12:00:00'),
  (31, '2022-11-24 15:00:00'),
  (32, '2022-11-24 18:00:00'),
  (33, '2022-11-25 14:00:00'),
  (34, '2022-11-25 14:00:00'),
  (35, '2022-11-25 18:00:00'),
  (36, '2022-11-25 18:00:00'),
  (37, '2022-11-26 14:00:00'),
  (38, '2022-11-26 14:00:00'),
  (39, '2022-11-26 18:00:00'),
  (40, '2022-11-26 18:00:00'),
  (41, '2022-11-27 14:00:00'),
  (42, '2022-11-27 14:00:00'),
  (43, '2022-11-27 18:00:00'),
  (44, '2022-11-27 18:00:00'),
  (45, '2022-11-28 14:00:00'),
  (46, '2022-11-28 14:00:00'),
  (47, '2022-11-28 18:00:00'),
  (48, '2022-11-28 18:00:00'),
  (49, '2022-11-30 14:00:00'),
  (50, '2022-11-30 18:00:00'),
  (51, '2022-12-01 14:00:00'),
  (52, '2022-12-01 18:00:00'),
  (53, '2022-12-02 14:00:00'),
  (54, '2022-12-02 18:00:00'),
  (55, '2022-12-03 14:00:00'),
  (56, '2022-12-03 18:00:00'),
  (57, '2022-12-06 14:00:00'),
  (58, '2022-12-06 18:00:00'),
  (59, '2022-12-07 14:00:00'),
  (60, '2022-12-07 18:00:00'),
  (61, '2022-12-10 18:00:00'),
  (62, '2022-12-11 18:00:00'),
  (63, '2022-12-14 14:00:00'),
  (64, '2022-12-15 15:00:00');

INSERT INTO `player`
VALUES ('1035196', 'Ali Afif', 34, 'WB (L), M/AM (RL)', '176 cm', '68 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('1044457', 'Sosha Makani', 36, 'GK', '192 cm', '80 kg', '0', 0, 0, NULL, 'Iran');
INSERT INTO `player`
VALUES ('1045901', 'Abdullah Al-Mayouf', 35, 'GK', '187 cm', '82 kg', '0', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('12007662', 'Nicolas Nkoulou', 32, 'D (C)', '184 cm', '77 kg', '2(0)', 0, 0, 6.25, 'Cameroon');
INSERT INTO `player`
VALUES ('12011996', 'Youssef Msakni', 32, 'M (L), AM (LC)', '179 cm', '72 kg', '2(2)', 0, 1, 6.78, 'Tunisia');
INSERT INTO `player`
VALUES ('12028960', 'Issam Jebali', 31, 'AM (RLC), ST (C)', '186 cm', '84 kg', '0(1)', 0, 0, 6.9, 'Tunisia');
INSERT INTO `player`
VALUES ('12038077', 'Boualem Khoukhi', 32, 'D (C), DM', '183 cm', '76 kg', '3(0)', 0, 0, 6.7, 'Qatar');
INSERT INTO `player`
VALUES ('12043277', 'Taha Yassine Khenissi', 30, 'ST (C)', '180 cm', '71 kg', '0', 0, 0, NULL, 'Tunisia');
INSERT INTO `player`
VALUES ('12055780', 'Ali Abdi', 29, 'D/WB (RL)', '183 cm', '73 kg', '0(3)', 0, 0, 6.7, 'Tunisia');
INSERT INTO `player`
VALUES ('12056272', 'Seifeddine Jaziri', 29, 'AM (L), ST (C)', '180 cm', '75 kg', '5(0)', 1, 0, 6.86, 'Tunisia');
INSERT INTO `player`
VALUES ('12056378', 'Ali Maâloul', 32, 'D/WB (L)', '175 cm', '72 kg', '5(0)', 1, 0, 6.62, 'Tunisia');
INSERT INTO `player`
VALUES ('12056386', 'Ferjani Sassi', 30, 'DM, M (C)', '186 cm', '80 kg', '4(1)', 1, 0, 6.9, 'Tunisia');
INSERT INTO `player`
VALUES ('12056407', 'Fakhreddine Ben Youssef', 31, 'M (R), AM (RL), ST (C)', '189 cm', '80 kg', '0(4)', 2, 0, 7.03,
        'Tunisia');
INSERT INTO `player`
VALUES ('12063540', 'Mortadha Ben Ouannes', 28, 'D/M (L), AM (RL)', '182 cm', '78 kg', '4(1)', 1, 1, 6.76, 'Tunisia');
INSERT INTO `player`
VALUES ('12080051', 'Pape Matar Sarr', 20, 'M (C)', '184 cm', '70 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('13112672', 'Collins Fai', 30, 'D (RL), WB (R)', '165 cm', '72 kg', '2(0)', 0, 0, 6.65, 'Cameroon');
INSERT INTO `player`
VALUES ('13114942', 'Hamza Mathlouthi', 30, 'D (R)', '184 cm', '70 kg', '3(1)', 0, 1, 6.82, 'Tunisia');
INSERT INTO `player`
VALUES ('13117442', 'Baba Rahman', 28, 'D/WB (L)', '179 cm', '70 kg', '0(2)', 0, 0, 6.7, 'Ghana');
INSERT INTO `player`
VALUES ('13129289', 'Lawrence Zigi', 26, 'GK', '188 cm', '87 kg', '3(0)', 0, 0, 6.47, 'Ghana');
INSERT INTO `player`
VALUES ('13137140', 'Richard Ofori', 29, 'GK', '191 cm', '78 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('13137529', 'Léandre Tawamba', 33, 'AM (C), ST (C)', '189 cm', '85 kg', '0(3)', 0, 0, 6.43, 'Cameroon');
INSERT INTO `player`
VALUES ('13147491', 'Badr Benoun', 29, 'D (C)', '193 cm', '69 kg', '1(1)', 0, 0, 6.4, 'Morocco');
INSERT INTO `player`
VALUES ('13157239', 'Martin Hongla', 24, 'DM, M (C)', '181 cm', '79 kg', '0', 0, 0, NULL, 'Cameroon');
INSERT INTO `player`
VALUES ('13158416', 'Joseph Aidoo', 27, 'D (C)', '184 cm', '80 kg', '1(0)', 0, 0, 6.1, 'Ghana');
INSERT INTO `player`
VALUES ('13171659', 'Nicolas Moumi Ngamaleu', 28, 'M (R), AM (RL), ST (C)', '181 cm', '74 kg', '3(0)', 0, 0, 6.2,
        'Cameroon');
INSERT INTO `player`
VALUES ('13175071', 'Jaouad El Yamiq', 30, 'D (C)', '190 cm', '83 kg', '2(0)', 0, 0, 6.75, 'Morocco');
INSERT INTO `player`
VALUES ('13181623', 'Pathé Ciss', 28, 'DM, M (C)', '183 cm', '71 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('13183090', 'Kamal Sowah', 22, 'M (R), AM (RLC), ST (C)', '179 cm', '66 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('13191636', 'Krépin Diatta', 23, 'WB (R), M/AM (RLC)', '175 cm', '68 kg', '1(2)', 1, 0, 6.8, 'Senegal');
INSERT INTO `player`
VALUES ('13197862', 'Ayoub El Kaabi', 29, 'AM (RL), ST (C)', '182 cm', '79 kg', '0(2)', 0, 2, 8.5, 'Morocco');
INSERT INTO `player`
VALUES ('13198333', 'Ghaylene Chaalali', 28, 'DM, M (C)', '179 cm', '76 kg', '4(1)', 1, 1, 7.4, 'Tunisia');
INSERT INTO `player`
VALUES ('13198535', 'Montassar Talbi', 24, 'D (C)', '190 cm', '81 kg', '5(0)', 0, 0, 6.46, 'Tunisia');
INSERT INTO `player`
VALUES ('13199286', 'Nayef Aguerd', 26, 'D (C)', '188 cm', '76 kg', '0(1)', 0, 0, NULL, 'Morocco');
INSERT INTO `player`
VALUES ('13200568', 'Mohammed Kudus', 22, 'M/AM (C), ST (C)', '177 cm', '70 kg', '3(0)', 0, 0, 6.6, 'Ghana');
INSERT INTO `player`
VALUES ('13201310', 'Béchir Ben Saïd', 28, 'GK', '194 cm', '79 kg', '0', 0, 0, NULL, 'Tunisia');
INSERT INTO `player`
VALUES ('13203929', 'Simon Omossola', 24, 'GK', '187 cm', '77 kg', '0', 0, 0, NULL, 'Cameroon');
INSERT INTO `player`
VALUES ('13206636', 'Yassine Meriah', 29, 'D (C)', '190 cm', '83 kg', '4(0)', 0, 0, 6.65, 'Tunisia');
INSERT INTO `player`
VALUES ('13209390', 'Mohamed Firas Ben Larbi', 26, 'M (C), AM (RC), ST (C)', '171 cm', '66 kg', '0', 0, 0, NULL,
        'Tunisia');
INSERT INTO `player`
VALUES ('13229852', 'Aymen Dahmen', 25, 'GK', '188 cm', '83 kg', '5(0)', 0, 0, 6.98, 'Tunisia');
INSERT INTO `player`
VALUES ('13232231', 'Sedki Debchi', 23, 'GK', '196 cm', '91 kg', '0', 0, 0, NULL, 'Tunisia');
INSERT INTO `player`
VALUES ('14000219', 'Ángel Di María', 34, 'M/AM (RLC)', '180 cm', '75 kg', '3(0)', 0, 2, 7.27, 'Argentina');
INSERT INTO `player`
VALUES ('14004589', 'Nicolás Otamendi', 34, 'D (RC)', '183 cm', '81 kg', '3(0)', 0, 0, 6.9, 'Argentina');
INSERT INTO `player`
VALUES ('14008030', 'Nicolás Tagliafico', 30, 'D/WB/M (L)', '172 cm', '67 kg', '2(0)', 0, 0, 6.7, 'Argentina');
INSERT INTO `player`
VALUES ('14020367', 'Emiliano Martínez', 30, 'GK', '193 cm', '85 kg', '4(0)', 0, 0, 6.97, 'Argentina');
INSERT INTO `player`
VALUES ('14020763', 'Marcos Rojo', 32, 'D (C)', '187 cm', '80 kg', '1(0)', 0, 0, 6.9, 'Argentina');
INSERT INTO `player`
VALUES ('14023371', 'Germán Pezzella', 31, 'D (C)', '187 cm', '82 kg', '2(2)', 1, 0, 7.27, 'Argentina');
INSERT INTO `player`
VALUES ('14024702', 'Leandro Paredes', 28, 'DM, M (C)', '180 cm', '75 kg', '2(2)', 0, 0, 7.03, 'Argentina');
INSERT INTO `player`
VALUES ('14031132', 'Lucas Ocampos', 28, 'M/AM (RL)', '187 cm', '84 kg', '1(2)', 0, 0, 6.8, 'Argentina');
INSERT INTO `player`
VALUES ('14031138', 'Giovanni Simeone', 27, 'ST (C)', '180 cm', '81 kg', '0', 0, 0, NULL, 'Argentina');
INSERT INTO `player`
VALUES ('14043255', 'Guido Rodríguez', 28, 'DM, M (C)', '185 cm', '80 kg', '2(2)', 0, 0, 6.93, 'Argentina');
INSERT INTO `player`
VALUES ('14043349', 'Ángel Correa', 27, 'M (R), AM (RLC), ST (C)', '172 cm', '67 kg', '0(1)', 0, 0, 6.8, 'Argentina');
INSERT INTO `player`
VALUES ('14044037', 'Marcos Acuña', 31, 'D/WB/M/AM (L)', '172 cm', '72 kg', '2(1)', 0, 0, 6.97, 'Argentina');
INSERT INTO `player`
VALUES ('14044150', 'Paulo Dybala', 29, 'AM (RC), ST (C)', '177 cm', '79 kg', '4(0)', 1, 1, 7.32, 'Argentina');
INSERT INTO `player`
VALUES ('14048328', 'Juan Musso', 28, 'GK', '191 cm', '92 kg', '0', 0, 0, NULL, 'Argentina');
INSERT INTO `player`
VALUES ('14048343', 'Rodrigo De Paul', 28, 'M (C), AM (RLC)', '180 cm', '70 kg', '1(1)', 0, 0, 6.75, 'Argentina');
INSERT INTO `player`
VALUES ('14094572', 'Rodrigo Bentancur', 25, 'DM, M (C)', '187 cm', '77 kg', '2(1)', 0, 0, 7.03, 'Uruguay');
INSERT INTO `player`
VALUES ('14108651', 'Giovani Lo Celso', 26, 'DM, M (LC), AM (C)', '176 cm', '69 kg', '1(3)', 1, 0, 7.25, 'Argentina');
INSERT INTO `player`
VALUES ('14110660', 'Lautaro Martínez', 25, 'AM (C), ST (C)', '174 cm', '79 kg', '4(0)', 4, 1, 7.6, 'Argentina');
INSERT INTO `player`
VALUES ('14129337', 'Nahuel Molina', 24, 'D/WB/M (R)', '175 cm', '70 kg', '2(1)', 0, 0, 6.87, 'Argentina');
INSERT INTO `player`
VALUES ('14130029', 'Cristian Romero', 24, 'D (C)', '185 cm', '79 kg', '2(0)', 0, 0, 7.05, 'Argentina');
INSERT INTO `player`
VALUES ('14181375', 'Nicolás González', 24, 'M (L), AM (RL), ST (C)', '180 cm', '75 kg', '0', 0, 0, NULL, 'Argentina');
INSERT INTO `player`
VALUES ('14183207', 'Julián Álvarez', 22, 'AM (RLC), ST (C)', '170 cm', '70 kg', '0(3)', 0, 0, 6.8, 'Argentina');
INSERT INTO `player`
VALUES ('14186894', 'Juan Foyth', 24, 'D (RC), DM', '187 cm', '69 kg', '2(2)', 0, 0, 7.13, 'Argentina');
INSERT INTO `player`
VALUES ('14229525', 'Enzo Fernández', 21, 'DM, M/AM (C)', '178 cm', '70 kg', '3(0)', 0, 1, 7, 'Argentina');
INSERT INTO `player`
VALUES ('15002054', 'Andrew Redmayne', 33, 'GK', '194 cm', '83 kg', '0', 0, 0, NULL, 'Australia');
INSERT INTO `player`
VALUES ('15009268', 'Aziz Behich', 32, 'D/WB/M (L)', '170 cm', '67 kg', '1(0)', 0, 0, 6.7, 'Australia');
INSERT INTO `player`
VALUES ('15016604', 'Mathew Ryan', 30, 'GK', '184 cm', '84 kg', '3(0)', 0, 0, 7, 'Australia');
INSERT INTO `player`
VALUES ('15016697', 'Lawrence Thomas', 30, 'GK', '191 cm', '91 kg', '0', 0, 0, NULL, 'Australia');
INSERT INTO `player`
VALUES ('15020308', 'Kenny Dougall', 29, 'DM, M (C)', '184 cm', '78 kg', '2(1)', 0, 1, 6.63, 'Australia');
INSERT INTO `player`
VALUES ('15020738', 'Tom Rogić', 30, 'M/AM (C)', '188 cm', '89 kg', '3(0)', 0, 0, 6.4, 'Australia');
INSERT INTO `player`
VALUES ('15023545', 'Craig Goodwin', 31, 'D/WB/M/AM (L)', '180 cm', '83 kg', '2(0)', 0, 0, 6.8, 'Australia');
INSERT INTO `player`
VALUES ('15023766', 'Miloš Degenek', 28, 'D (RLC), DM', '187 cm', '81 kg', '2(0)', 0, 0, 5.95, 'Australia');
INSERT INTO `player`
VALUES ('15040452', 'Awer Mabil', 27, 'M/AM (RL)', '179 cm', '65 kg', '2(0)', 0, 0, 6.4, 'Australia');
INSERT INTO `player`
VALUES ('15045456', 'Daniel De Silva', 25, 'M/AM (RLC)', '170 cm', '60 kg', '1(0)', 0, 1, 7.5, 'Australia');
INSERT INTO `player`
VALUES ('15072078', 'Kye Rowles', 24, 'D (LC)', '185 cm', '82 kg', '1(0)', 0, 0, 6.3, 'Australia');
INSERT INTO `player`
VALUES ('15075193', 'Cameron Devlin', 24, 'DM, M (C)', '171 cm', '70 kg', '0(2)', 0, 0, 6.8, 'Australia');
INSERT INTO `player`
VALUES ('15075581', 'Riley McGree', 24, 'M/AM (C)', '178 cm', '72 kg', '0(3)', 1, 0, 6.83, 'Australia');
INSERT INTO `player`
VALUES ('15077289', 'Nathaniel Atkinson', 23, 'D/WB/M (R)', '181 cm', '77 kg', '1(0)', 0, 0, 6.6, 'Australia');
INSERT INTO `player`
VALUES ('1510305', 'Pedro', 35, 'AM (RLC)', '167 cm', '66 kg', '0(3)', 0, 0, 6.7, 'Spain');
INSERT INTO `player`
VALUES ('1510566', 'Sergio Busquets', 34, 'DM, M (C)', '189 cm', '75 kg', '4(0)', 2, 1, 7.4, 'Spain');
INSERT INTO `player`
VALUES ('16170436', 'Assim Omer Madibo', 26, 'D/WB (R), DM, M (C)', '168 cm', '70 kg', '2(1)', 0, 0, 6.55, 'Qatar');
INSERT INTO `player`
VALUES ('16182894', 'Dayot Upamecano', 24, 'D (C)', '186 cm', '90 kg', '5(1)', 0, 0, 6.92, 'France');
INSERT INTO `player`
VALUES ('16183022', 'Almoez Ali', 26, 'AM (RLC), ST (C)', '180 cm', '68 kg', '3(0)', 0, 0, 6.23, 'Qatar');
INSERT INTO `player`
VALUES ('16199712', 'Gideon Mensah', 24, 'D/WB (L)', '178 cm', '64 kg', '3(0)', 0, 0, 6.7, 'Ghana');
INSERT INTO `player`
VALUES ('16279486', 'Karim Adeyemi', 20, 'AM (R), ST (C)', '179 cm', '74 kg', '1(2)', 0, 1, 6.97, 'Germany');
INSERT INTO `player`
VALUES ('164247', 'Suk Hyun-Jun', 31, 'AM (C), ST (C)', '190 cm', '82 kg', '0', 0, 0, NULL, 'South Korea');
INSERT INTO `player`
VALUES ('18003360', 'Bryan Ruíz', 37, 'M/AM (LC)', '188 cm', '80 kg', '3(0)', 1, 0, 6.93, 'Costa Rica');
INSERT INTO `player`
VALUES ('18004418', 'Eden Hazard', 31, 'M (L), AM (RLC)', '173 cm', '76 kg', '4(0)', 0, 0, 6.43, 'Belgium');
INSERT INTO `player`
VALUES ('18004457', 'Kevin De Bruyne', 31, 'DM, M (RLC), AM (C)', '181 cm', '68 kg', '3(0)', 1, 1, 7, 'Belgium');
INSERT INTO `player`
VALUES ('18007344', 'Romelu Lukaku', 29, 'ST (C)', '191 cm', '93 kg', '2(0)', 2, 0, 8, 'Belgium');
INSERT INTO `player`
VALUES ('18010782', 'Koen Casteels', 30, 'GK', '197 cm', '86 kg', '0', 0, 0, NULL, 'Belgium');
INSERT INTO `player`
VALUES ('18022052', 'Cheikhou Kouyaté', 33, 'D (C), DM, M (C)', '192 cm', '83 kg', '2(1)', 0, 0, 7.03, 'Senegal');
INSERT INTO `player`
VALUES ('18026122', 'Thibaut Courtois', 30, 'GK', '199 cm', '96 kg', '4(0)', 0, 0, 6.78, 'Belgium');
INSERT INTO `player`
VALUES ('18027198', 'Yannick Carrasco', 29, 'WB (L), M/AM (RL)', '180 cm', '71 kg', '3(0)', 0, 1, 7.07, 'Belgium');
INSERT INTO `player`
VALUES ('18043393', 'Thomas Meunier', 31, 'D/WB/M (R)', '191 cm', '90 kg', '1(2)', 0, 1, 6.87, 'Belgium');
INSERT INTO `player`
VALUES ('18045342', 'Dennis Praet', 28, 'M/AM (C)', '181 cm', '78 kg', '0', 0, 0, NULL, 'Belgium');
INSERT INTO `player`
VALUES ('18051194', 'Hans Vanaken', 30, 'M/AM (C)', '195 cm', '77 kg', '0(1)', 0, 0, 6.8, 'Belgium');
INSERT INTO `player`
VALUES ('18054004', 'Leandro Trossard', 28, 'WB/M (L), AM (RLC), ST (C)', '172 cm', '67 kg', '1(0)', 0, 0, 6.4,
        'Belgium');
INSERT INTO `player`
VALUES ('18074558', 'Timothy Castagne', 27, 'D/WB/M (RL)', '185 cm', '80 kg', '2(2)', 0, 0, 7.03, 'Belgium');
INSERT INTO `player`
VALUES ('18077264', 'Youri Tielemans', 25, 'DM, M (C)', '176 cm', '72 kg', '3(1)', 0, 0, 6.78, 'Belgium');
INSERT INTO `player`
VALUES ('18081611', 'Jason Denayer', 27, 'D (C)', '184 cm', '80 kg', '4(0)', 0, 0, 6.78, 'Belgium');
INSERT INTO `player`
VALUES ('18083577', 'Wout Faes', 24, 'D (C), DM', '187 cm', '84 kg', '0(2)', 0, 0, 6.6, 'Belgium');
INSERT INTO `player`
VALUES ('18089862', 'Selim Amallah', 26, 'DM, M (RC), AM (RLC)', '186 cm', '82 kg', '0(2)', 0, 0, 6.5, 'Morocco');
INSERT INTO `player`
VALUES ('18091019', 'Akram Afif', 26, 'M (L), AM (RLC), ST (C)', '177 cm', '70 kg', '3(0)', 0, 0, 6.6, 'Qatar');
INSERT INTO `player`
VALUES ('18092575', 'Ryan Mmaee', 25, 'AM (RC), ST (C)', '185 cm', '82 kg', '0(1)', 0, 0, NULL, 'Morocco');
INSERT INTO `player`
VALUES ('18097159', 'Alexis Saelemaekers', 23, 'WB/M/AM (R)', '180 cm', '72 kg', '4(0)', 1, 2, 7.12, 'Belgium');
INSERT INTO `player`
VALUES ('18097160', 'Albert Sambi Lokonga', 23, 'DM, M (C)', '185 cm', '79 kg', '1(3)', 2, 0, 7.35, 'Belgium');
INSERT INTO `player`
VALUES ('18104332', 'Abdulmanaf Nurudeen', 23, 'GK', '190 cm', '77 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('18104869', 'Hamza Sanhaji', 28, 'ST (C)', '178 cm', '77 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('18106083', 'Jérémy Doku', 20, 'AM (RL), ST (C)', '171 cm', '67 kg', '0', 0, 0, NULL, 'Belgium');
INSERT INTO `player`
VALUES ('18108540', 'Jonathan David', 22, 'AM (RLC), ST (C)', '177 cm', '77 kg', '2(1)', 0, 1, 7.05, 'Canada');
INSERT INTO `player`
VALUES ('18110528', 'Charles De Ketelaere', 21, 'M/AM (C), ST (C)', '192 cm', '80 kg', '2(2)', 2, 0, 7.43, 'Belgium');
INSERT INTO `player`
VALUES ('19003703', 'Paulinho', 34, 'DM, M/AM (C)', '181 cm', '81 kg', '1(0)', 1, 0, 7.9, 'Brazil');
INSERT INTO `player`
VALUES ('19024412', 'Neymar', 30, 'M (L), AM (LC), ST (C)', '175 cm', '68 kg', '6(0)', 6, 0, 7.68, 'Brazil');
INSERT INTO `player`
VALUES ('19028921', 'Everton Ribeiro', 33, 'M/AM (RC)', '171 cm', '68 kg', '1(2)', 0, 0, 6.43, 'Brazil');
INSERT INTO `player`
VALUES ('19046041', 'Philippe Coutinho', 30, 'M/AM (LC)', '172 cm', '71 kg', '5(1)', 1, 0, 6.77, 'Brazil');
INSERT INTO `player`
VALUES ('19052304', 'Cesinha', 33, 'M/AM (C)', '177 cm', '74 kg', '1(2)', 0, 1, 7.2, 'South Korea');
INSERT INTO `player`
VALUES ('19058734', 'Alisson', 30, 'GK', '191 cm', '91 kg', '0', 0, 0, NULL, 'Brazil');
INSERT INTO `player`
VALUES ('19061518', 'Casemiro', 30, 'DM, M (C)', '185 cm', '84 kg', '4(1)', 1, 1, 7.25, 'Brazil');
INSERT INTO `player`
VALUES ('19067093', 'Alex Sandro', 31, 'D/WB/M (L)', '180 cm', '79 kg', '1(1)', 0, 0, 6.85, 'Brazil');
INSERT INTO `player`
VALUES ('19068857', 'Roberto Firmino', 31, 'AM (RLC), ST (C)', '181 cm', '76 kg', '4(1)', 2, 1, 6.86, 'Brazil');
INSERT INTO `player`
VALUES ('19073476', 'Lucas Mendes', 32, 'D (LC), WB (L)', '184 cm', '80 kg', '2(0)', 0, 0, 6.45, 'Qatar');
INSERT INTO `player`
VALUES ('19099575', 'Danilo', 31, 'D (RLC), WB (R)', '184 cm', '78 kg', '4(1)', 0, 0, 6.84, 'Brazil');
INSERT INTO `player`
VALUES ('19163495', 'Marquinhos', 28, 'D (C), DM', '183 cm', '75 kg', '7(0)', 0, 2, 7.27, 'Brazil');
INSERT INTO `player`
VALUES ('19183676', 'Fabinho', 29, 'D (RC), DM, M (C)', '188 cm', '78 kg', '2(1)', 0, 0, 6.63, 'Brazil');
INSERT INTO `player`
VALUES ('19186901', 'Otávio', 27, 'M/AM (RLC)', '172 cm', '65 kg', '2(3)', 0, 2, 7, 'Portugal');
INSERT INTO `player`
VALUES ('19220266', 'Gabriel Jesus', 25, 'AM (RL), ST (C)', '175 cm', '73 kg', '4(2)', 0, 2, 6.97, 'Brazil');
INSERT INTO `player`
VALUES ('19232508', 'Guilherme Arana', 25, 'D/WB/M (L)', '176 cm', '68 kg', '3(0)', 0, 1, 6.97, 'Brazil');
INSERT INTO `player`
VALUES ('19242277', 'Raphinha', 26, 'M (R), AM (RL)', '176 cm', '68 kg', '2(2)', 1, 0, 7.07, 'Brazil');
INSERT INTO `player`
VALUES ('19259566', 'Pedro', 25, 'ST (C)', '185 cm', '78 kg', '0', 0, 0, NULL, 'Brazil');
INSERT INTO `player`
VALUES ('19265858', 'Richarlison', 25, 'AM (RL), ST (C)', '181 cm', '71 kg', '0(3)', 0, 0, 6.8, 'Brazil');
INSERT INTO `player`
VALUES ('19270493', 'Bremer', 25, 'D (C)', '188 cm', '80 kg', '2(1)', 0, 0, 6.73, 'Brazil');
INSERT INTO `player`
VALUES ('19273276', 'Éder Militão', 24, 'D (C)', '186 cm', '79 kg', '6(0)', 0, 0, 6.9, 'Brazil');
INSERT INTO `player`
VALUES ('19297055', 'Bruno Guimarães', 25, 'DM, M (C)', '182 cm', '74 kg', '2(5)', 0, 0, 6.72, 'Brazil');
INSERT INTO `player`
VALUES ('19302146', 'Vinícius Júnior', 22, 'M (L), AM (RL)', '177 cm', '62 kg', '5(0)', 1, 0, 7.28, 'Brazil');
INSERT INTO `player`
VALUES ('19354849', 'Jackson Porozo', 22, 'D (C)', '193 cm', '85 kg', '1(2)', 0, 0, 6.5, 'Ecuador');
INSERT INTO `player`
VALUES ('2000022814', 'Jung Sang-Bin', 20, 'ST (C)', '175 cm', '74 kg', '0', 0, 0, NULL, 'South Korea');
INSERT INTO `player`
VALUES ('2000031469', 'Mohamed Ali Ben Hammouda', 24, 'AM (R), ST (C)', '190 cm', '84 kg', '0', 0, 0, NULL, 'Tunisia');
INSERT INTO `player`
VALUES ('2000041825', 'Mohammed Waad', 23, 'AM (C)', '179 cm', '68 kg', '3(0)', 0, 0, 6.5, 'Qatar');
INSERT INTO `player`
VALUES ('2000042460', 'Saud Abdulhamid', 23, 'D/WB (R)', '171 cm', '69 kg', '0', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('2000052135', 'Abdallah Sima', 21, 'AM (R), ST (C)', '188 cm', '74 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('2000080496', 'Garang Kuol', 18, 'AM (R), ST (C)', '176 cm', '64 kg', '3(0)', 0, 0, 6.23, 'Australia');
INSERT INTO `player`
VALUES ('20016296', 'Amir Abedzadeh', 29, 'GK', '186 cm', '82 kg', '3(0)', 0, 0, 7.13, 'Iran');
INSERT INTO `player`
VALUES ('20040254', 'Christian Bassogog', 27, 'AM (RL), ST (C)', '175 cm', '75 kg', '0(1)', 0, 0, 6.6, 'Cameroon');
INSERT INTO `player`
VALUES ('20041862', 'Alphonso Davies', 22, 'D/WB/M/AM (L)', '185 cm', '77 kg', '3(0)', 0, 0, 7.23, 'Canada');
INSERT INTO `player`
VALUES ('20042341', 'Nouhou Tolo', 25, 'D (LC), WB (L)', '178 cm', '80 kg', '1(0)', 0, 0, 6.2, 'Cameroon');
INSERT INTO `player`
VALUES ('20042816', 'Ayo Akinola', 22, 'AM (RL), ST (C)', '178 cm', '83 kg', '1(1)', 0, 0, 6.3, 'Canada');
INSERT INTO `player`
VALUES ('20046423', 'Brenden Aaronson', 22, 'M/AM (C)', '176 cm', '66 kg', '0(2)', 2, 0, 7.95, 'United States');
INSERT INTO `player`
VALUES ('2029963', 'Yassine Bounou', 31, 'GK', '191 cm', '80 kg', '3(0)', 0, 0, 6.23, 'Morocco');
INSERT INTO `player`
VALUES ('20501493', 'Mark-Anthony Kaye', 28, 'D (L), DM, M (LC)', '186 cm', '73 kg', '1(1)', 0, 0, 6.6, 'Canada');
INSERT INTO `player`
VALUES ('20503374', 'Joel Waterman', 26, 'D (C), DM', '188 cm', '83 kg', '0', 0, 0, NULL, 'Canada');
INSERT INTO `player`
VALUES ('211500', 'Bingourou Kamara', 26, 'GK', '196 cm', '92 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('23034077', 'Ehsan Hajsafi', 32, 'D/WB (L), DM, M (LC)', '178 cm', '74 kg', '3(0)', 0, 0, 6.73, 'Iran');
INSERT INTO `player`
VALUES ('23046562', 'Hasan Al-Haydos', 32, 'M/AM (R), ST (C)', '170 cm', '65 kg', '3(0)', 0, 0, 6.6, 'Qatar');
INSERT INTO `player`
VALUES ('23046614', 'Saad Al-Sheeb', 32, 'GK', '185 cm', '80 kg', '3(0)', 0, 0, 6.73, 'Qatar');
INSERT INTO `player`
VALUES ('23117278', 'Abdulaziz Hatem', 32, 'DM, M (C)', '182 cm', '69 kg', '3(0)', 0, 0, 6.9, 'Qatar');
INSERT INTO `player`
VALUES ('23127761', 'Ramin Rezaeian', 32, 'D/WB/M (R)', '185 cm', '82 kg', '1(1)', 0, 0, 7.9, 'Iran');
INSERT INTO `player`
VALUES ('23127918', 'Mehdi Taremi', 30, 'AM (LC), ST (C)', '187 cm', '82 kg', '2(0)', 0, 0, 6.45, 'Iran');
INSERT INTO `player`
VALUES ('23127927', 'Omid Ebrahimi', 35, 'DM, M (C)', '176 cm', '74 kg', '3(0)', 0, 1, 7.23, 'Iran');
INSERT INTO `player`
VALUES ('23128049', 'Morteza Pouraliganji', 30, 'D (C), DM', '182 cm', '75 kg', '2(0)', 0, 0, 7.3, 'Iran');
INSERT INTO `player`
VALUES ('23150518', 'Ali Farydon', 30, 'ST (C)', '178 cm', '74 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23155558', 'Luiz Ceará', 33, 'DM', '175 cm', '70 kg', '0(2)', 0, 0, 6.7, 'Qatar');
INSERT INTO `player`
VALUES ('23155600', 'Pedro Miguel', 32, 'D (RC), WB (R)', '188 cm', '70 kg', '1(1)', 0, 0, 6.5, 'Qatar');
INSERT INTO `player`
VALUES ('23155788', 'Ahmed Alaaeldin', 29, 'AM (RL), ST (C)', '177 cm', '72 kg', '0(1)', 0, 0, 6.8, 'Qatar');
INSERT INTO `player`
VALUES ('23167055', 'Fawaz Al-Qarni', 30, 'GK', '185 cm', '65 kg', '0', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23167067', 'Fahad Al-Muwallad', 28, 'M/AM (RL)', '168 cm', '59 kg', '2(1)', 0, 0, 6.65, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23167669', 'Yasser Al-Shahrani', 30, 'D (RL)', '171 cm', '62 kg', '3(0)', 0, 0, 6.73, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23167995', 'Salman Al-Faraj', 33, 'DM, M (LC)', '180 cm', '69 kg', '3(0)', 0, 0, 6.53, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23168001', 'Salem Al-Dawsari', 31, 'M/AM (RL)', '173 cm', '72 kg', '2(0)', 0, 0, 6.2, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23181485', 'Ahmed Yasser', 28, 'D (C)', '181 cm', '70 kg', '0(3)', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23194640', 'Mosaab Khoder', 29, 'D/WB (R)', '166 cm', '60 kg', '0(2)', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23208529', 'Mohammed Al-Owais', 31, 'GK', '187 cm', '77 kg', '3(0)', 0, 0, 6.4, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23227499', 'Hazza Al-Hazza', 31, 'ST (C)', '180 cm', '70 kg', '0(1)', 0, 0, 6.7, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23227502', 'Abdullah Madu', 29, 'D (C)', '186 cm', '87 kg', '0(1)', 0, 0, 6.2, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23227533', 'Mohammed Al-Kuwaykibi', 28, 'AM (RLC)', '167 cm', '61 kg', '2(0)', 0, 0, 6.2, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23245775', 'Mohammed Muntari', 29, 'ST (C)', '194 cm', '86 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23248146', 'Abdulmajeed Al-Sulaiheem', 28, 'M (C)', '169 cm', '63 kg', '0(1)', 0, 0, 6.7, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23248782', 'Mohammed Al-Burayk', 30, 'D/WB (R)', '173 cm', '69 kg', '0(2)', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23251718', 'Hossein Kanaani', 28, 'D (C)', '186 cm', '82 kg', '2(1)', 0, 0, 6.6, 'Iran');
INSERT INTO `player`
VALUES ('23254428', 'Vahid Amiri', 34, 'D (L), M/AM (LC)', '179 cm', '70 kg', '1(1)', 0, 0, 6.3, 'Iran');
INSERT INTO `player`
VALUES ('23255640', 'Rouzbeh Cheshmi', 29, 'D (C), DM', '192 cm', '80 kg', '1(0)', 0, 0, 7.3, 'Iran');
INSERT INTO `player`
VALUES ('23255642', 'Farshid Esmaeili', 28, 'M (C), AM (RLC)', '172 cm', '67 kg', '1(1)', 0, 0, 6.8, 'Iran');
INSERT INTO `player`
VALUES ('23260427', 'Alireza Beiranvand', 30, 'GK', '196 cm', '85 kg', '0', 0, 0, NULL, 'Iran');
INSERT INTO `player`
VALUES ('23260451', 'Sadegh Moharrami', 26, 'D/WB (R)', '174 cm', '71 kg', '2(0)', 0, 0, 6.4, 'Iran');
INSERT INTO `player`
VALUES ('23260457', 'Ali Gholizadeh', 26, 'AM (RL)', '176 cm', '69 kg', '0', 0, 0, NULL, 'Iran');
INSERT INTO `player`
VALUES ('23260467', 'Majid Hosseini', 26, 'D (C)', '187 cm', '78 kg', '1(0)', 0, 0, 6.2, 'Iran');
INSERT INTO `player`
VALUES ('23305480', 'Motaz Hawsawi', 30, 'D (C)', '179 cm', '77 kg', '0(1)', 0, 0, 6.9, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23309575', 'Mehdi Torabi', 28, 'M (L), AM (RLC)', '185 cm', '79 kg', '0', 0, 0, NULL, 'Iran');
INSERT INTO `player`
VALUES ('23309885', 'Ahmad Nourollahi', 29, 'DM, M (C)', '185 cm', '73 kg', '3(0)', 0, 1, 7.17, 'Iran');
INSERT INTO `player`
VALUES ('23334185', 'Abdulfattah Adam', 27, 'ST (C)', '180 cm', '73 kg', '0(1)', 0, 0, 6.4, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23340580', 'Omid Noorafkan', 25, 'D (L), DM, M (C)', '181 cm', '78 kg', '2(1)', 0, 0, 7.07, 'Iran');
INSERT INTO `player`
VALUES ('23349097', 'Milad Mohammadi', 29, 'D/WB (L)', '178 cm', '79 kg', '1(0)', 0, 0, 6.7, 'Iran');
INSERT INTO `player`
VALUES ('23349118', 'Mehrdad Mohammadi', 29, 'AM (RL), ST (C)', '178 cm', '74 kg', '0', 0, 0, NULL, 'Iran');
INSERT INTO `player`
VALUES ('23359977', 'Yousef Hassan', 26, 'GK', '180 cm', '74 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23374866', 'Sami Al-Najai', 25, 'DM, M/AM (C)', '176 cm', '59 kg', '0(1)', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23374871', 'Sultan Al-Ghanam', 28, 'D/WB/M (R)', '173 cm', '67 kg', '3(0)', 0, 0, 6.53, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23397306', 'Abdulaziz Al-Aryani', 26, 'ST (C)', '166 cm', '65 kg', '0', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23400728', 'Ahmed Suhail', 23, 'D (C)', '183 cm', '78 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23414228', 'Firas Al-Buraikan', 22, 'ST (C)', '181 cm', '75 kg', '3(0)', 0, 0, 6.17, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23439033', 'Homam Ahmed', 23, 'D/WB (L)', '186 cm', '71 kg', '1(1)', 0, 0, 6.75, 'Qatar');
INSERT INTO `player`
VALUES ('23442016', 'Bassam Al-Rawi', 25, 'D (RC), WB (R), DM, M (C)', '175 cm', '73 kg', '3(0)', 0, 0, 6.4, 'Qatar');
INSERT INTO `player`
VALUES ('23458634', 'Meshaal Barsham', 24, 'GK', '181 cm', '74 kg', '0', 0, 0, NULL, 'Qatar');
INSERT INTO `player`
VALUES ('23463750', 'Mehdi Ghaedi', 24, 'AM (RLC), ST (C)', '173 cm', '65 kg', '0(1)', 0, 0, NULL, 'Iran');
INSERT INTO `player`
VALUES ('23470654', 'Nasser Al-Dawsari', 24, 'D (L), DM, M (C)', '177 cm', '76 kg', '0', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23470658', 'Hamdan Al-Shammrani', 26, 'D/WB (L)', '180 cm', '71 kg', '0', 0, 0, NULL, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23470691', 'Turki Al-Ammar', 23, 'M/AM (C)', '177 cm', '68 kg', '3(0)', 0, 0, 6.63, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23471178', 'Hassan Tambakti', 23, 'D (C)', '182 cm', '79 kg', '3(0)', 0, 0, 6.17, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('23471216', 'Haroune Camara', 24, 'AM (RL), ST (C)', '182 cm', '72 kg', '0(3)', 0, 0, 6.5, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('24000971', 'Dejan Lovren', 33, 'D (C)', '190 cm', '84 kg', '1(2)', 0, 0, 6.7, 'Croatia');
INSERT INTO `player`
VALUES ('24003525', 'Domagoj Vida', 33, 'D (C)', '184 cm', '76 kg', '3(1)', 0, 0, 6.75, 'Croatia');
INSERT INTO `player`
VALUES ('24003746', 'Ante Budimir', 31, 'ST (C)', '190 cm', '75 kg', '1(0)', 0, 0, 6.3, 'Croatia');
INSERT INTO `player`
VALUES ('24003757', 'Lovre Kalinić', 32, 'GK', '201 cm', '96 kg', '0', 0, 0, NULL, 'Croatia');
INSERT INTO `player`
VALUES ('24004434', 'Andrej Kramarić', 31, 'AM (C), ST (C)', '177 cm', '73 kg', '4(0)', 5, 0, 7.47, 'Croatia');
INSERT INTO `player`
VALUES ('24012760', 'Marko Livaja', 29, 'AM (LC), ST (C)', '182 cm', '84 kg', '0(2)', 0, 0, 6.55, 'Croatia');
INSERT INTO `player`
VALUES ('24014057', 'Mislav Oršić', 29, 'M/AM (L), ST (C)', '179 cm', '69 kg', '2(0)', 0, 0, 7, 'Croatia');
INSERT INTO `player`
VALUES ('24016529', 'Marcelo Brozović', 30, 'DM, M (C)', '181 cm', '68 kg', '4(1)', 0, 0, 6.88, 'Croatia');
INSERT INTO `player`
VALUES ('24016925', 'Mateo Kovačić', 28, 'DM, M/AM (C)', '178 cm', '78 kg', '2(1)', 0, 2, 7.3, 'Croatia');
INSERT INTO `player`
VALUES ('24019989', 'Tomi Juric', 31, 'AM (C), ST (C)', '191 cm', '85 kg', '0', 0, 0, NULL, 'Australia');
INSERT INTO `player`
VALUES ('24021244', 'Mario Pašalić', 27, 'M/AM (C)', '188 cm', '82 kg', '4(1)', 2, 0, 6.92, 'Croatia');
INSERT INTO `player`
VALUES ('24025298', 'Dominik Livaković', 27, 'GK', '187 cm', '79 kg', '3(0)', 0, 0, 6.73, 'Croatia');
INSERT INTO `player`
VALUES ('24039427', 'Duje Ćaleta-Car', 26, 'D (C)', '192 cm', '89 kg', '3(0)', 0, 0, 6.73, 'Croatia');
INSERT INTO `player`
VALUES ('24039513', 'Marko Pjaca', 27, 'AM (RLC), ST (C)', '186 cm', '80 kg', '0(3)', 1, 0, 6.87, 'Croatia');
INSERT INTO `player`
VALUES ('24039527', 'Fran Karacic', 26, 'D/WB (R)', '181 cm', '75 kg', '1(1)', 0, 0, 6.8, 'Australia');
INSERT INTO `player`
VALUES ('24039948', 'Nikola Vlašić', 25, 'M (C), AM (RLC), ST (C)', '178 cm', '79 kg', '4(0)', 0, 3, 7.3, 'Croatia');
INSERT INTO `player`
VALUES ('24047634', 'Josip Juranović', 27, 'D (RL), WB (R)', '173 cm', '69 kg', '1(1)', 1, 0, 6.9, 'Croatia');
INSERT INTO `player`
VALUES ('24048099', 'Borna Sosa', 24, 'D/WB/M (L)', '187 cm', '79 kg', '2(1)', 0, 1, 7.17, 'Croatia');
INSERT INTO `player`
VALUES ('24048100', 'Dani Olmo', 24, 'M (C), AM (RLC)', '179 cm', '72 kg', '0(2)', 0, 0, 6.85, 'Spain');
INSERT INTO `player`
VALUES ('24051635', 'Kristijan Jakić', 25, 'DM, M (C)', '177 cm', '75 kg', '0', 0, 0, NULL, 'Croatia');
INSERT INTO `player`
VALUES ('24051702', 'Luka Ivanušec', 24, 'M/AM (RLC)', '174 cm', '76 kg', '1(1)', 0, 0, 6.8, 'Croatia');
INSERT INTO `player`
VALUES ('24053458', 'Lovro Majer', 24, 'M/AM (C)', '176 cm', '75 kg', '1(3)', 1, 1, 7.12, 'Croatia');
INSERT INTO `player`
VALUES ('24058106', 'Josip Šutalo', 22, 'D (C)', '190 cm', '82 kg', '2(1)', 0, 0, 6.77, 'Croatia');
INSERT INTO `player`
VALUES ('24060473', 'Joško Gvardiol', 20, 'D (LC)', '185 cm', '80 kg', '4(0)', 0, 1, 7.1, 'Croatia');
INSERT INTO `player`
VALUES ('27002693', 'Thomas Delaney', 31, 'DM, M (C)', '182 cm', '79 kg', '3(0)', 0, 0, 7, 'Denmark');
INSERT INTO `player`
VALUES ('27010680', 'Christian Eriksen', 30, 'DM, M/AM (C)', '182 cm', '76 kg', '2(1)', 1, 1, 7.27, 'Denmark');
INSERT INTO `player`
VALUES ('27013113', 'Martin Braithwaite', 31, 'AM (RL), ST (C)', '177 cm', '77 kg', '2(0)', 1, 2, 7.95, 'Denmark');
INSERT INTO `player`
VALUES ('27013431', 'Jannik Vestergaard', 30, 'D (C)', '197 cm', '96 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27013502', 'Nicolai Boilesen', 30, 'D (LC), WB (L)', '186 cm', '75 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27014576', 'Frederik Rønnow', 30, 'GK', '190 cm', '81 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27039017', 'Christian Nørgaard', 28, 'D (C), DM, M (C)', '187 cm', '76 kg', '0(1)', 0, 0, 6.9, 'Denmark');
INSERT INTO `player`
VALUES ('27051813', 'Yussuf Poulsen', 28, 'M/AM (R), ST (C)', '192 cm', '84 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27058392', 'Pierre-Emile Højbjerg', 27, 'DM, M (C)', '185 cm', '84 kg', '2(1)', 0, 0, 6.63, 'Denmark');
INSERT INTO `player`
VALUES ('27066387', 'Andreas Christensen', 26, 'D (RC), DM, M (C)', '188 cm', '78 kg', '3(0)', 0, 0, 6.93, 'Denmark');
INSERT INTO `player`
VALUES ('27069975', 'Joachim Andersen', 26, 'D (C)', '192 cm', '85 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27088228', 'Marcus Ingvartsen', 26, 'AM (C), ST (C)', '187 cm', '79 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27094768', 'Robert Skov', 26, 'D (L), WB/M/AM (RL)', '185 cm', '81 kg', '2(1)', 0, 0, 6.25, 'Denmark');
INSERT INTO `player`
VALUES ('27097478', 'Joakim Mæhle', 25, 'D/WB (RL), M (R)', '184 cm', '81 kg', '3(0)', 0, 0, 6.97, 'Denmark');
INSERT INTO `player`
VALUES ('27102380', 'Kasper Dolberg', 25, 'AM (L), ST (C)', '187 cm', '82 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27107366', 'Victor Nelsson', 24, 'D (C), DM', '185 cm', '83 kg', '3(0)', 0, 0, 6.53, 'Denmark');
INSERT INTO `player`
VALUES ('27112672', 'Jacob Bruun Larsen', 24, 'M/AM (RL)', '183 cm', '75 kg', '0(1)', 0, 0, 6.5, 'Denmark');
INSERT INTO `player`
VALUES ('27122565', 'Jonas Wind', 23, 'AM (C), ST (C)', '190 cm', '82 kg', '1(2)', 1, 0, 6.75, 'Denmark');
INSERT INTO `player`
VALUES ('27128912', 'Andreas Skov Olsen', 22, 'WB/M/AM (R)', '187 cm', '70 kg', '2(0)', 1, 0, 7.5, 'Denmark');
INSERT INTO `player`
VALUES ('27128916', 'Abdul Mumin', 24, 'D (C)', '188 cm', '80 kg', '0(1)', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('27128917', 'Mikkel Damsgaard', 22, 'M (RL), AM (RLC)', '180 cm', '71 kg', '2(1)', 0, 1, 6.7, 'Denmark');
INSERT INTO `player`
VALUES ('27129532', 'Alexander Bah', 25, 'D/WB/M/AM (R)', '183 cm', '79 kg', '2(0)', 0, 0, 6.45, 'Denmark');
INSERT INTO `player`
VALUES ('27132703', 'Morten Hjulmand', 23, 'DM, M (C)', '185 cm', '77 kg', '0(1)', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27137069', 'Oliver Christensen', 23, 'GK', '190 cm', '82 kg', '0', 0, 0, NULL, 'Denmark');
INSERT INTO `player`
VALUES ('27143432', 'Jesper Lindstrøm', 22, 'M (C), AM (RLC)', '182 cm', '66 kg', '0(2)', 0, 0, 6.5, 'Denmark');
INSERT INTO `player`
VALUES ('28000482', 'Junior Hoilett', 32, 'WB/M/AM (RL)', '173 cm', '69 kg', '0', 0, 0, NULL, 'Canada');
INSERT INTO `player`
VALUES ('28005568', 'Jordan Henderson', 32, 'DM, M (C)', '183 cm', '80 kg', '1(1)', 0, 0, 6.9, 'England');
INSERT INTO `player`
VALUES ('28009441', 'Kyle Walker', 32, 'D/WB (R)', '178 cm', '83 kg', '4(0)', 0, 1, 6.97, 'England');
INSERT INTO `player`
VALUES ('28009478', 'Wojciech Szczęsny', 32, 'GK', '195 cm', '90 kg', '4(0)', 0, 0, 7.05, 'Poland');
INSERT INTO `player`
VALUES ('28016318', 'Aaron Mooy', 32, 'DM, M (RLC), AM (C)', '179 cm', '69 kg', '2(0)', 0, 0, 6.5, 'Australia');
INSERT INTO `player`
VALUES ('28016969', 'Nam Tae-Hee', 31, 'M (R), AM (RC)', '174 cm', '72 kg', '0(3)', 0, 0, 6.9, 'South Korea');
INSERT INTO `player`
VALUES ('28019224', 'Dedryck Boyata', 32, 'D (C)', '188 cm', '83 kg', '2(0)', 0, 0, 6.5, 'Belgium');
INSERT INTO `player`
VALUES ('28049320', 'Harry Kane', 29, 'AM (LC), ST (C)', '188 cm', '86 kg', '3(0)', 2, 0, 7.13, 'England');
INSERT INTO `player`
VALUES ('28049740', 'Harry Maguire', 29, 'D (C)', '194 cm', '100 kg', '4(0)', 1, 0, 7.2, 'England');
INSERT INTO `player`
VALUES ('28049754', 'Ben Davies', 29, 'D (LC), WB (L)', '182 cm', '76 kg', '1(0)', 0, 0, 6.8, 'Wales');
INSERT INTO `player`
VALUES ('28051370', 'Bailey Wright', 30, 'D (RC)', '183 cm', '81 kg', '0(1)', 0, 0, 6.6, 'Australia');
INSERT INTO `player`
VALUES ('28054109', 'Raheem Sterling', 28, 'M/AM (RL)', '170 cm', '69 kg', '2(3)', 3, 2, 7.62, 'England');
INSERT INTO `player`
VALUES ('28054565', 'Jordan Pickford', 28, 'GK', '187 cm', '77 kg', '0', 0, 0, NULL, 'England');
INSERT INTO `player`
VALUES ('28058330', 'Tom Lawrence', 28, 'M (L), AM (RLC), ST (C)', '180 cm', '75 kg', '0(2)', 0, 0, 6.55, 'Wales');
INSERT INTO `player`
VALUES ('28058862', 'Jamie Maclaren', 29, 'ST (C)', '179 cm', '76 kg', '2(0)', 1, 0, 6.9, 'Australia');
INSERT INTO `player`
VALUES ('28059632', 'Patrick Bamford', 29, 'AM (C), ST (C)', '185 cm', '81 kg', '0', 0, 0, NULL, 'England');
INSERT INTO `player`
VALUES ('28060397', 'John Stones', 28, 'D (C)', '188 cm', '72 kg', '4(0)', 0, 0, 7.15, 'England');
INSERT INTO `player`
VALUES ('28066082', 'Héctor Bellerín', 27, 'D/WB (R)', '177 cm', '74 kg', '3(1)', 0, 0, 7, 'Spain');
INSERT INTO `player`
VALUES ('28066083', 'Serge Gnabry', 27, 'M/AM (RL), ST (C)', '176 cm', '77 kg', '4(1)', 5, 0, 7.4, 'Germany');
INSERT INTO `player`
VALUES ('28070894', 'Miloš Veljković', 27, 'D (C), DM', '188 cm', '85 kg', '4(0)', 0, 0, 6.8, 'Serbia');
INSERT INTO `player`
VALUES ('28087373', 'Connor Roberts', 27, 'D (RC), WB (R)', '175 cm', '71 kg', '3(0)', 0, 0, 6.17, 'Wales');
INSERT INTO `player`
VALUES ('28094949', 'Harry Wilson', 25, 'AM (RLC)', '173 cm', '64 kg', '0(2)', 0, 0, 6.55, 'Wales');
INSERT INTO `player`
VALUES ('28095352', 'David Brooks', 25, 'M/AM (RC)', '173 cm', '65 kg', '2(1)', 0, 0, 6.43, 'Wales');
INSERT INTO `player`
VALUES ('28097980', 'Fikayo Tomori', 25, 'D (C)', '185 cm', '79 kg', '2(0)', 2, 0, 8.05, 'England');
INSERT INTO `player`
VALUES ('28097985', 'Tammy Abraham', 25, 'ST (C)', '196 cm', '87 kg', '0(3)', 2, 2, 7.73, 'England');
INSERT INTO `player`
VALUES ('28100266', 'Marcus Rashford', 25, 'M (L), AM (RL), ST (C)', '185 cm', '70 kg', '3(1)', 4, 1, 7.62, 'England');
INSERT INTO `player`
VALUES ('28100477', 'Joe Rodon', 25, 'D (C)', '193 cm', '76 kg', '2(0)', 0, 0, 6.45, 'Wales');
INSERT INTO `player`
VALUES ('28100767', 'Cameron Carter-Vickers', 24, 'D (C)', '185 cm', '92 kg', '2(0)', 0, 0, 6.7, 'United States');
INSERT INTO `player`
VALUES ('28103590', 'Mason Mount', 23, 'M (C), AM (RLC)', '178 cm', '70 kg', '4(0)', 1, 1, 7.12, 'England');
INSERT INTO `player`
VALUES ('28103592', 'Iké Ugbo', 24, 'AM (RL), ST (C)', '186 cm', '73 kg', '1(1)', 1, 1, 7.15, 'Canada');
INSERT INTO `player`
VALUES ('28105799', 'Tyler Roberts', 23, 'AM (RLC), ST (C)', '182 cm', '70 kg', '0', 0, 0, NULL, 'Wales');
INSERT INTO `player`
VALUES ('28106360', 'Lukas Nmecha', 24, 'AM (RLC), ST (C)', '185 cm', '80 kg', '0', 0, 0, NULL, 'Germany');
INSERT INTO `player`
VALUES ('28106491', 'Declan Rice', 23, 'D (C), DM, M (C)', '185 cm', '80 kg', '2(1)', 0, 1, 7.13, 'England');
INSERT INTO `player`
VALUES ('28108035', 'Reece James', 23, 'D (RC), WB (R), DM', '175 cm', '90 kg', '3(1)', 1, 2, 7.25, 'England');
INSERT INTO `player`
VALUES ('28108494', 'Phil Foden', 22, 'AM (RLC)', '171 cm', '64 kg', '2(1)', 1, 2, 7.93, 'England');
INSERT INTO `player`
VALUES ('28109697', 'Liam Millar', 23, 'AM (L), ST (C)', '181 cm', '75 kg', '0(2)', 1, 0, 7.25, 'Canada');
INSERT INTO `player`
VALUES ('28112993', 'Tariq Lamptey', 22, 'D/WB (RL), M (R)', '164 cm', '61 kg', '2(0)', 0, 0, 6.2, 'Ghana');
INSERT INTO `player`
VALUES ('28115792', 'Neco Williams', 21, 'D/WB (RL), AM (R)', '183 cm', '77 kg', '2(1)', 0, 0, 6.47, 'Wales');
INSERT INTO `player`
VALUES ('28122642', 'Bukayo Saka', 21, 'AM (RL)', '178 cm', '69 kg', '1(3)', 2, 1, 7.4, 'England');
INSERT INTO `player`
VALUES ('28124579', 'Jamal Musiala', 19, 'M (C), AM (RLC), ST (C)', '184 cm', '70 kg', '4(2)', 1, 0, 7.02, 'Germany');
INSERT INTO `player`
VALUES ('28129089', 'Yunus Musah', 20, 'DM, M/AM (RC)', '178 cm', '71 kg', '0(3)', 0, 0, 6.85, 'United States');
INSERT INTO `player`
VALUES ('29000737', 'Aaron Ramsey', 32, 'DM, M (C), AM (RLC)', '178 cm', '75 kg', '3(0)', 0, 0, 6.37, 'Wales');
INSERT INTO `player`
VALUES ('29007955', 'Joe Allen', 32, 'DM, M (C)', '168 cm', '62 kg', '1(0)', 0, 0, 6.7, 'Wales');
INSERT INTO `player`
VALUES ('29045055', 'Jeffrey Schlupp', 30, 'WB (L), M (LC), AM (L)', '178 cm', '74 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('29058892', 'Danny Ward', 29, 'GK', '193 cm', '88 kg', '3(0)', 0, 0, 6.33, 'Wales');
INSERT INTO `player`
VALUES ('29072558', 'Will Vaulks', 29, 'DM, M (C)', '181 cm', '70 kg', '1(1)', 0, 0, 6.5, 'Wales');
INSERT INTO `player`
VALUES ('29074544', 'Tyrone Mings', 29, 'D (LC)', '196 cm', '78 kg', '2(1)', 0, 0, 7.2, 'England');
INSERT INTO `player`
VALUES ('29076105', 'Luke Shaw', 27, 'D/WB (L)', '181 cm', '75 kg', '2(0)', 0, 0, 7.15, 'England');
INSERT INTO `player`
VALUES ('29083750', 'Nick Pope', 30, 'GK', '196 cm', '78 kg', '0', 0, 0, NULL, 'England');
INSERT INTO `player`
VALUES ('29087734', 'Tom Lockyer', 28, 'D (C)', '183 cm', '73 kg', '2(0)', 0, 0, 6.05, 'Wales');
INSERT INTO `player`
VALUES ('29113879', 'Kalvin Phillips', 27, 'DM, M (C)', '178 cm', '72 kg', '3(2)', 0, 0, 7.12, 'England');
INSERT INTO `player`
VALUES ('29123128', 'Dominic Calvert-Lewin', 25, 'AM (L), ST (C)', '187 cm', '71 kg', '0', 0, 0, NULL, 'England');
INSERT INTO `player`
VALUES ('29125265', 'Antonee Robinson', 25, 'D/WB (L)', '183 cm', '70 kg', '2(1)', 0, 1, 7.37, 'United States');
INSERT INTO `player`
VALUES ('29128536', 'Ben Chilwell', 26, 'D/WB (L)', '178 cm', '77 kg', '3(0)', 0, 1, 7.47, 'England');
INSERT INTO `player`
VALUES ('29130351', 'Joe Morrell', 25, 'DM, M (C)', '168 cm', '76 kg', '1(2)', 0, 0, 6.47, 'Wales');
INSERT INTO `player`
VALUES ('29134274', 'Chris Mepham', 25, 'D (C)', '191 cm', '75 kg', '1(1)', 0, 0, 7.05, 'Wales');
INSERT INTO `player`
VALUES ('29137172', 'Aaron Ramsdale', 24, 'GK', '191 cm', '85 kg', '5(0)', 0, 0, 7.24, 'England');
INSERT INTO `player`
VALUES ('29141133', 'Tom Lowery', 24, 'DM, M (C)', '168 cm', '61 kg', '0(1)', 0, 0, 6.5, 'Wales');
INSERT INTO `player`
VALUES ('29141472', 'Benjamin White', 25, 'D (RC), DM', '185 cm', '78 kg', '0(2)', 0, 0, 6.9, 'England');
INSERT INTO `player`
VALUES ('29147447', 'Matty Cash', 25, 'D/WB/M (R)', '185 cm', '79 kg', '3(0)', 0, 0, 6.63, 'Poland');
INSERT INTO `player`
VALUES ('29175064', 'Ethan Ampadu', 22, 'D (C), DM, M (C)', '182 cm', '78 kg', '3(0)', 0, 0, 6.47, 'Wales');
INSERT INTO `player`
VALUES ('29189400', 'Brennan Johnson', 21, 'AM (RC), ST (C)', '180 cm', '72 kg', '1(2)', 0, 0, 6.43, 'Wales');
INSERT INTO `player`
VALUES ('29191224', 'Jack Vale', 21, 'ST (C)', '186 cm', '70 kg', '0', 0, 0, NULL, 'Wales');
INSERT INTO `player`
VALUES ('29193986', 'Rhys Norrington-Davies', 23, 'D (LC), WB (L)', '181 cm', '72 kg', '1(0)', 0, 0, 6.3, 'Wales');
INSERT INTO `player`
VALUES ('29223444', 'Allahyar Sayyadmanesh', 21, 'AM (RL), ST (C)', '182 cm', '78 kg', '0(2)', 1, 0, 7, 'Iran');
INSERT INTO `player`
VALUES ('29232937', 'Jude Bellingham', 19, 'DM, M (C)', '186 cm', '75 kg', '4(1)', 0, 0, 7.04, 'England');
INSERT INTO `player`
VALUES ('30035404', 'Gabriel Barbosa', 26, 'AM (R), ST (C)', '178 cm', '74 kg', '0(3)', 2, 0, 7.63, 'Brazil');
INSERT INTO `player`
VALUES ('315542', 'Daniel Alves', 39, 'D/WB (R), M (RC)', '170 cm', '68 kg', '3(1)', 0, 1, 6.68, 'Brazil');
INSERT INTO `player`
VALUES ('34000647', 'Olivier Giroud', 36, 'ST (C)', '192 cm', '93 kg', '2(2)', 1, 0, 6.88, 'France');
INSERT INTO `player`
VALUES ('34009070', 'Allan Nyom', 34, 'D/WB/M (R)', '189 cm', '79 kg', '2(0)', 0, 0, 6.55, 'Cameroon');
INSERT INTO `player`
VALUES ('34010721', 'Jordan Ayew', 31, 'M (R), AM (RL)', '182 cm', '78 kg', '0(2)', 0, 0, 6.6, 'Ghana');
INSERT INTO `player`
VALUES ('34011589', 'Wahbi Khazri', 31, 'AM (LC), ST (C)', '182 cm', '76 kg', '3(1)', 0, 0, 6.72, 'Tunisia');
INSERT INTO `player`
VALUES ('34012402', 'Grzegorz Krychowiak', 32, 'DM, M (C)', '187 cm', '87 kg', '4(0)', 0, 0, 6.88, 'Poland');
INSERT INTO `player`
VALUES ('34012563', 'Ivan Perišić', 33, 'D/WB/M/AM (L)', '186 cm', '80 kg', '3(0)', 0, 0, 6.8, 'Croatia');
INSERT INTO `player`
VALUES ('35007944', 'Mats Hummels', 34, 'D (C)', '191 cm', '94 kg', '4(0)', 0, 0, 6.85, 'Germany');
INSERT INTO `player`
VALUES ('35011448', 'Thomas Müller', 33, 'M/AM (RC), ST (C)', '185 cm', '76 kg', '7(0)', 3, 1, 7.21, 'Germany');
INSERT INTO `player`
VALUES ('35015916', 'Eric Maxim Choupo-Moting', 33, 'AM (RLC), ST (C)', '191 cm', '91 kg', '3(0)', 0, 0, 6.2,
        'Cameroon');
INSERT INTO `player`
VALUES ('35017428', 'Marc-André ter Stegen', 30, 'GK', '187 cm', '85 kg', '2(0)', 0, 0, 7.05, 'Germany');
INSERT INTO `player`
VALUES ('35018013', 'Kevin Trapp', 32, 'GK', '189 cm', '88 kg', '0', 0, 0, NULL, 'Germany');
INSERT INTO `player`
VALUES ('36515158', 'Habib Diallo', 27, 'ST (C)', '186 cm', '79 kg', '0(2)', 1, 0, 7.3, 'Senegal');
INSERT INTO `player`
VALUES ('37001123', 'Nordin Amrabat', 35, 'M (R), AM (RLC), ST (C)', '179 cm', '77 kg', '0(1)', 0, 0, 6.7, 'Morocco');
INSERT INTO `player`
VALUES ('37001813', 'Marten de Roon', 31, 'DM, M (C)', '185 cm', '76 kg', '0(2)', 0, 0, 6.7, 'Netherlands');
INSERT INTO `player`
VALUES ('37001814', 'Stefan de Vrij', 30, 'D (C)', '189 cm', '78 kg', '1(4)', 0, 0, 6.68, 'Netherlands');
INSERT INTO `player`
VALUES ('37002936', 'Jasper Cillessen', 33, 'GK', '187 cm', '82 kg', '0', 0, 0, NULL, 'Netherlands');
INSERT INTO `player`
VALUES ('37005632', 'Daley Blind', 32, 'D (LC), WB (L), DM', '180 cm', '72 kg', '3(2)', 0, 0, 6.74, 'Netherlands');
INSERT INTO `player`
VALUES ('37008621', 'Luuk de Jong', 32, 'ST (C)', '189 cm', '87 kg', '0(1)', 0, 0, 6.7, 'Netherlands');
INSERT INTO `player`
VALUES ('37024025', 'Virgil van Dijk', 31, 'D (C)', '193 cm', '92 kg', '6(1)', 1, 0, 6.94, 'Netherlands');
INSERT INTO `player`
VALUES ('37024265', 'Steven Berghuis', 31, 'M (RC), AM (RLC), ST (C)', '182 cm', '69 kg', '1(2)', 0, 1, 7.05,
        'Netherlands');
INSERT INTO `player`
VALUES ('37024470', 'Memphis Depay', 28, 'AM (LC), ST (C)', '176 cm', '78 kg', '6(1)', 2, 0, 6.83, 'Netherlands');
INSERT INTO `player`
VALUES ('37025551', 'Nathan Aké', 27, 'D (LC), DM', '180 cm', '75 kg', '2(4)', 0, 0, 6.74, 'Netherlands');
INSERT INTO `player`
VALUES ('37026994', 'Wout Weghorst', 30, 'ST (C)', '197 cm', '84 kg', '3(2)', 0, 0, 6.8, 'Netherlands');
INSERT INTO `player`
VALUES ('37039753', 'Mimoun Mahi', 28, 'AM (RLC), ST (C)', '181 cm', '69 kg', '0', 0, 0, NULL, 'Morocco');
INSERT INTO `player`
VALUES ('37040604', 'Hakim Ziyech', 29, 'M/AM (RLC)', '181 cm', '68 kg', '3(0)', 1, 1, 7.1, 'Morocco');
INSERT INTO `player`
VALUES ('37041773', 'Robin Gosens', 28, 'D/WB/M (L)', '184 cm', '76 kg', '1(5)', 0, 0, 6.78, 'Germany');
INSERT INTO `player`
VALUES ('37044889', 'Alireza Jahanbakhsh', 29, 'M (RL), AM (RLC)', '180 cm', '78 kg', '2(1)', 2, 0, 7.3, 'Iran');
INSERT INTO `player`
VALUES ('37045879', 'Sofyan Amrabat', 26, 'DM, M (C)', '185 cm', '70 kg', '2(0)', 0, 0, 6.95, 'Morocco');
INSERT INTO `player`
VALUES ('37047745', 'Frenkie de Jong', 25, 'D (C), DM, M (C)', '181 cm', '69 kg', '4(0)', 0, 0, 7.05, 'Netherlands');
INSERT INTO `player`
VALUES ('37048153', 'Donny van de Beek', 25, 'DM, M/AM (C)', '184 cm', '67 kg', '3(2)', 3, 0, 7.4, 'Netherlands');
INSERT INTO `player`
VALUES ('37050136', 'Justin Bijlow', 24, 'GK', '188 cm', '84 kg', '7(0)', 0, 0, 6.96, 'Netherlands');
INSERT INTO `player`
VALUES ('37050140', 'Steven Bergwijn', 25, 'M (RL), AM (RLC), ST (C)', '178 cm', '78 kg', '4(1)', 0, 2, 6.92,
        'Netherlands');
INSERT INTO `player`
VALUES ('37051305', 'Arnaut Danjuma', 25, 'M (L), AM (RL)', '178 cm', '74 kg', '4(0)', 0, 0, 6.8, 'Netherlands');
INSERT INTO `player`
VALUES ('37052470', 'Noussair Mazraoui', 25, 'D/WB (R), DM, M (RC), AM (R)', '183 cm', '65 kg', '2(1)', 0, 0, 6.47,
        'Morocco');
INSERT INTO `player`
VALUES ('37052727', 'Oussama Idrissi', 26, 'M/AM (RL)', '183 cm', '78 kg', '1(0)', 0, 0, 6.5, 'Morocco');
INSERT INTO `player`
VALUES ('37052843', 'Denzel Dumfries', 26, 'D/WB/M (R)', '189 cm', '80 kg', '3(3)', 0, 1, 7.32, 'Netherlands');
INSERT INTO `player`
VALUES ('37055841', 'Justin Kluivert', 23, 'M/AM (RL)', '172 cm', '66 kg', '2(4)', 0, 0, 6.68, 'Netherlands');
INSERT INTO `player`
VALUES ('37055843', 'Matthijs de Ligt', 23, 'D (C)', '189 cm', '89 kg', '6(1)', 0, 0, 6.96, 'Netherlands');
INSERT INTO `player`
VALUES ('37057982', 'Teun Koopmeiners', 24, 'DM, M (C)', '184 cm', '77 kg', '5(1)', 2, 0, 7.35, 'Netherlands');
INSERT INTO `player`
VALUES ('37058363', 'Tyrell Malacia', 23, 'D/WB (L)', '169 cm', '67 kg', '3(0)', 0, 0, 6.93, 'Netherlands');
INSERT INTO `player`
VALUES ('37059452', 'Pascal Struijk', 23, 'D (C)', '190 cm', '75 kg', '3(0)', 0, 0, 6.67, 'Belgium');
INSERT INTO `player`
VALUES ('37059574', 'Calvin Stengs', 24, 'M (R), AM (RC)', '182 cm', '68 kg', '1(0)', 0, 0, 6.5, 'Netherlands');
INSERT INTO `player`
VALUES ('37062185', 'Cody Gakpo', 23, 'M (L), AM (RL), ST (C)', '189 cm', '76 kg', '4(0)', 0, 0, 6.6, 'Netherlands');
INSERT INTO `player`
VALUES ('37063644', 'Jurriën Timber', 21, 'D (RC), WB (R), DM', '179 cm', '79 kg', '4(0)', 0, 0, 7.05, 'Netherlands');
INSERT INTO `player`
VALUES ('37065767', 'Sergiño Dest', 22, 'D/WB (RL)', '171 cm', '62 kg', '3(1)', 0, 0, 6.93, 'United States');
INSERT INTO `player`
VALUES ('37073317', 'Kenneth Taylor', 20, 'DM, M/AM (C)', '182 cm', '66 kg', '0(5)', 0, 0, 6.76, 'Netherlands');
INSERT INTO `player`
VALUES ('43068478', 'Caleb Ekuban', 28, 'AM (RC), ST (C)', '182 cm', '82 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('43077666', 'Alfred Gomis', 29, 'GK', '196 cm', '80 kg', '3(0)', 0, 0, 6.83, 'Senegal');
INSERT INTO `player`
VALUES ('43084308', 'Alfred Duncan', 29, 'DM, M (C)', '178 cm', '78 kg', '3(0)', 0, 0, 6.5, 'Ghana');
INSERT INTO `player`
VALUES ('43090555', 'Ivica Ivušić', 27, 'GK', '195 cm', '88 kg', '2(0)', 0, 0, 6.55, 'Croatia');
INSERT INTO `player`
VALUES ('43090927', 'Chris Ikonomidis', 27, 'M (L), AM (RLC)', '180 cm', '80 kg', '0', 0, 0, NULL, 'Australia');
INSERT INTO `player`
VALUES ('43093171', 'Piotr Zieliński', 28, 'M/AM (C)', '180 cm', '69 kg', '2(2)', 0, 0, 6.6, 'Poland');
INSERT INTO `player`
VALUES ('43112998', 'Emmanuel Gyasi', 28, 'M (L), AM (RL), ST (C)', '182 cm', '74 kg', '2(1)', 0, 0, 6.55, 'Ghana');
INSERT INTO `player`
VALUES ('43124203', 'Bruno Fernandes', 28, 'M/AM (C)', '179 cm', '69 kg', '3(0)', 1, 1, 7.17, 'Portugal');
INSERT INTO `player`
VALUES ('43130133', 'Bruno Petković', 28, 'AM (C), ST (C)', '193 cm', '88 kg', '0(2)', 0, 0, 6.65, 'Croatia');
INSERT INTO `player`
VALUES ('43193946', 'Youssef Maleh', 24, 'DM, M (LC), AM (C)', '179 cm', '70 kg', '1(1)', 0, 0, 6.4, 'Morocco');
INSERT INTO `player`
VALUES ('43201830', 'Lucas Torreira', 26, 'DM, M (C)', '168 cm', '64 kg', '2(0)', 0, 0, 6.7, 'Uruguay');
INSERT INTO `player`
VALUES ('43426126', 'Nicola Zalewski', 20, 'D/WB/M/AM (L)', '175 cm', '63 kg', '4(0)', 1, 2, 7.12, 'Poland');
INSERT INTO `player`
VALUES ('45005892', 'Maya Yoshida', 34, 'D (C)', '189 cm', '90 kg', '2(1)', 0, 0, 6.83, 'Japan');
INSERT INTO `player`
VALUES ('45015136', 'Genki Haraguchi', 31, 'M/AM (RLC)', '176 cm', '70 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45030130', 'Gaku Shibasaki', 30, 'DM, M/AM (LC)', '175 cm', '62 kg', '0(1)', 0, 0, 6.5, 'Japan');
INSERT INTO `player`
VALUES ('45030305', 'Kim Young-Gwon', 32, 'D (LC)', '185 cm', '74 kg', '0', 0, 0, NULL, 'South Korea');
INSERT INTO `player`
VALUES ('45030953', 'Wataru Endô', 29, 'D (C), DM, M (C)', '178 cm', '76 kg', '3(0)', 0, 0, 7.1, 'Japan');
INSERT INTO `player`
VALUES ('45034094', 'Daniel Schmidt', 30, 'GK', '196 cm', '90 kg', '3(0)', 0, 0, 6.67, 'Japan');
INSERT INTO `player`
VALUES ('45035329', 'Jung Woo-Young', 33, 'D (C), DM, M (C)', '186 cm', '78 kg', '4(0)', 0, 0, 6.65, 'South Korea');
INSERT INTO `player`
VALUES ('45046862', 'Lee Ki-Je', 31, 'D/WB (L)', '168 cm', '66 kg', '3(1)', 0, 1, 6.75, 'South Korea');
INSERT INTO `player`
VALUES ('45052601', 'Kim Jin-Su', 30, 'D/WB (L)', '177 cm', '68 kg', '1(1)', 0, 0, 6.4, 'South Korea');
INSERT INTO `player`
VALUES ('45064891', 'Takumi Minamino', 27, 'M (R), AM (RLC), ST (C)', '174 cm', '68 kg', '3(0)', 0, 0, 6.63, 'Japan');
INSERT INTO `player`
VALUES ('45077880', 'Naomichi Ueda', 28, 'D (C)', '186 cm', '77 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45077916', 'Kôsuke Nakamura', 27, 'GK', '185 cm', '82 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45083656', 'Yûta Nakayama', 25, 'D (LC), WB (L), DM', '181 cm', '73 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45092573', 'Ryôya Ogawa', 26, 'D/WB (L)', '183 cm', '78 kg', '1(0)', 0, 0, 6.2, 'Japan');
INSERT INTO `player`
VALUES ('45092658', 'Kô Itakura', 25, 'D (C), DM, M (C)', '188 cm', '74 kg', '3(0)', 0, 0, 6.8, 'Japan');
INSERT INTO `player`
VALUES ('45092714', 'Daichi Kamada', 26, 'M (C), AM (RLC)', '184 cm', '76 kg', '0(3)', 0, 0, 6.8, 'Japan');
INSERT INTO `player`
VALUES ('45092815', 'Jun\'ya Itô', 29, 'M/AM (R)', '176 cm', '66 kg', '2(1)', 2, 0, 7.15, 'Japan');
INSERT INTO `player`
VALUES ('45095490', 'Takehiro Tomiyasu', 24, 'D (RLC), WB (RL)', '188 cm', '78 kg', '3(0)', 0, 0, 6.73, 'Japan');
INSERT INTO `player`
VALUES ('45095522', 'Sei Muroya', 28, 'D/WB (R)', '176 cm', '69 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45101691', 'Daizen Maeda', 25, 'AM (L), ST (C)', '173 cm', '67 kg', '2(1)', 0, 1, 6.9, 'Japan');
INSERT INTO `player`
VALUES ('45104266', 'Kyôsuke Tagawa', 23, 'AM (RL), ST (C)', '181 cm', '70 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45104608', 'Takefusa Kubo', 21, 'M (R), AM (RC), ST (C)', '167 cm', '60 kg', '2(0)', 0, 0, 6.85, 'Japan');
INSERT INTO `player`
VALUES ('45105555', 'Kyôgo Furuhashi', 27, 'AM (RL), ST (C)', '170 cm', '63 kg', '2(0)', 0, 0, 6.4, 'Japan');
INSERT INTO `player`
VALUES ('45109024', 'Hiroki Itô', 23, 'D (LC), WB (L), DM', '186 cm', '78 kg', '3(0)', 0, 0, 6.8, 'Japan');
INSERT INTO `player`
VALUES ('45109174', 'Hidemasa Morita', 27, 'DM, M (C)', '177 cm', '74 kg', '3(0)', 0, 0, 6.73, 'Japan');
INSERT INTO `player`
VALUES ('45109770', 'Daiki Hashioka', 23, 'D (RC), WB/M (R)', '182 cm', '73 kg', '0(2)', 0, 0, 6.8, 'Japan');
INSERT INTO `player`
VALUES ('45111868', 'Ayase Ueda', 24, 'ST (C)', '182 cm', '76 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('45111893', 'Reo Hatate', 25, 'DM, M/AM (C)', '171 cm', '70 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('48030711', 'André-Franck Zambo Anguissa', 27, 'DM, M (C)', '184 cm', '78 kg', '3(0)', 0, 0, 6.53, 'Cameroon');
INSERT INTO `player`
VALUES ('48031394', 'Pape Cissé', 27, 'D (C)', '197 cm', '90 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('48034615', 'Nordi Mukiele', 25, 'D (RC), WB (R)', '187 cm', '84 kg', '5(2)', 0, 3, 7.1, 'France');
INSERT INTO `player`
VALUES ('48036304', 'Jules Koundé', 24, 'D (RC), WB (R)', '178 cm', '70 kg', '3(2)', 0, 0, 6.6, 'France');
INSERT INTO `player`
VALUES ('48036350', 'Aïssa Laidouni', 26, 'DM, M (C)', '183 cm', '77 kg', '1(2)', 0, 0, 6.67, 'Tunisia');
INSERT INTO `player`
VALUES ('48036760', 'Alexander Djiku', 28, 'D (C), DM', '182 cm', '74 kg', '2(1)', 0, 0, 6.57, 'Ghana');
INSERT INTO `player`
VALUES ('48037362', 'Moussa Niakhaté', 26, 'D (LC)', '190 cm', '82 kg', '1(0)', 0, 0, 6.9, 'Senegal');
INSERT INTO `player`
VALUES ('48037720', 'Jeando Fuchs', 25, 'DM, M (C)', '174 cm', '70 kg', '1(2)', 0, 0, 6.53, 'Cameroon');
INSERT INTO `player`
VALUES ('48042326', 'Aurélien Tchouameni', 22, 'DM, M (C)', '187 cm', '81 kg', '6(0)', 0, 1, 7.17, 'France');
INSERT INTO `player`
VALUES ('48042432', 'Timothy Weah', 22, 'AM (RLC), ST (C)', '185 cm', '66 kg', '1(0)', 0, 0, 6.3, 'United States');
INSERT INTO `player`
VALUES ('48042658', 'Bryan Mbeumo', 23, 'M (L), AM (RL), ST (C)', '171 cm', '70 kg', '2(0)', 0, 2, 7.7, 'Cameroon');
INSERT INTO `player`
VALUES ('48042766', 'Ismaïla Sarr', 24, 'M (R), AM (RL), ST (C)', '185 cm', '76 kg', '1(1)', 0, 0, 6.75, 'Senegal');
INSERT INTO `player`
VALUES ('48043484', 'Pape Gueye', 23, 'DM, M (C)', '183 cm', '65 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('48043729', 'Hamza Mendyl', 25, 'D/WB (L)', '179 cm', '70 kg', '3(0)', 0, 0, 6.4, 'Morocco');
INSERT INTO `player`
VALUES ('48043981', 'Dylan Bronn', 27, 'D (RC)', '186 cm', '76 kg', '0(2)', 0, 0, 6.8, 'Tunisia');
INSERT INTO `player`
VALUES ('48044026', 'Zachary Brault-Guillard', 23, 'D (R), WB (RL)', '171 cm', '66 kg', '0', 0, 0, NULL, 'Canada');
INSERT INTO `player`
VALUES ('49037900', 'Wesley Fofana', 22, 'D (C)', '190 cm', '76 kg', '4(0)', 0, 0, 6.88, 'France');
INSERT INTO `player`
VALUES ('49040115', 'Illan Meslier', 22, 'GK', '196 cm', '74 kg', '0', 0, 0, NULL, 'France');
INSERT INTO `player`
VALUES ('49056243', 'Eduardo Camavinga', 20, 'DM, M (C)', '182 cm', '68 kg', '3(3)', 0, 0, 6.8, 'France');
INSERT INTO `player`
VALUES ('49056369', 'Hannibal', 19, 'M (C), AM (LC)', '182 cm', '70 kg', '3(0)', 0, 0, 6.53, 'Tunisia');
INSERT INTO `player`
VALUES ('49058321', 'Darlin Yongwa', 22, 'D/WB/M/AM (L)', '180 cm', '68 kg', '1(0)', 0, 0, 5.9, 'Cameroon');
INSERT INTO `player`
VALUES ('49060803', 'Salis Abdul Samed', 22, 'DM, M (C)', '179 cm', '69 kg', '0(1)', 0, 1, 7.1, 'Ghana');
INSERT INTO `player`
VALUES ('50065334', 'Boulaye Dia', 26, 'AM (R), ST (C)', '180 cm', '75 kg', '3(0)', 0, 0, 6.5, 'Senegal');
INSERT INTO `player`
VALUES ('5006568', 'Wayne Hennessey', 35, 'GK', '196 cm', '90 kg', '0', 0, 0, NULL, 'Wales');
INSERT INTO `player`
VALUES ('51000001', 'Carlos Vela', 33, 'AM (RLC), ST (C)', '178 cm', '74 kg', '0(3)', 0, 0, 6.63, 'Mexico');
INSERT INTO `player`
VALUES ('51000042', 'Héctor Moreno', 34, 'D (LC)', '182 cm', '78 kg', '3(0)', 0, 0, 6.4, 'Mexico');
INSERT INTO `player`
VALUES ('51001380', 'Chicharito', 34, 'ST (C)', '175 cm', '73 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51012751', 'Jesús Corona', 29, 'WB/M (R), AM (RL)', '173 cm', '66 kg', '3(0)', 0, 0, 6.67, 'Mexico');
INSERT INTO `player`
VALUES ('51013463', 'Raúl Jiménez', 31, 'ST (C)', '190 cm', '76 kg', '3(0)', 1, 0, 6.87, 'Mexico');
INSERT INTO `player`
VALUES ('51040877', 'Henry Martín', 30, 'ST (C)', '177 cm', '73 kg', '0(2)', 0, 0, 6.75, 'Mexico');
INSERT INTO `player`
VALUES ('51042313', 'Hirving Lozano', 27, 'AM (RL), ST (C)', '175 cm', '70 kg', '3(0)', 0, 1, 7.13, 'Mexico');
INSERT INTO `player`
VALUES ('51042458', 'Luis Romo', 27, 'D (C), DM, M (C)', '182 cm', '82 kg', '2(0)', 0, 0, 6.9, 'Mexico');
INSERT INTO `player`
VALUES ('51043734', 'Erick Aguirre', 25, 'D (RL), DM, M (C)', '170 cm', '60 kg', '0(2)', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51045753', 'Roberto Alvarado', 24, 'M (L), AM (RL)', '172 cm', '70 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51049312', 'Jesús Gallardo', 28, 'D/WB/M/AM (L)', '177 cm', '68 kg', '2(0)', 0, 1, 7.3, 'Mexico');
INSERT INTO `player`
VALUES ('51049414', 'Luis Chávez', 26, 'DM, M (LC), AM (L)', '178 cm', '73 kg', '0(1)', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51049626', 'Carlos Acevedo', 26, 'GK', '184 cm', '74 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51052239', 'Orbelín Pineda', 26, 'M (C), AM (LC)', '168 cm', '60 kg', '1(0)', 0, 0, 6.8, 'Mexico');
INSERT INTO `player`
VALUES ('51052599', 'Víctor Guzmán', 27, 'M/AM (C)', '175 cm', '75 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51054011', 'Edson Álvarez', 25, 'D (C), DM, M (C)', '185 cm', '73 kg', '2(1)', 0, 0, 6.77, 'Mexico');
INSERT INTO `player`
VALUES ('51054788', 'Alexis Vega', 25, 'AM (RLC), ST (C)', '172 cm', '72 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('51055610', 'César Montes', 25, 'D (C)', '191 cm', '70 kg', '1(1)', 0, 0, 6.8, 'Mexico');
INSERT INTO `player`
VALUES ('51055617', 'Carlos Rodríguez', 25, 'M/AM (C)', '176 cm', '66 kg', '0(1)', 0, 0, 6.6, 'Mexico');
INSERT INTO `player`
VALUES ('51055820', 'Jesús Angulo', 24, 'D (LC)', '180 cm', '73 kg', '1(2)', 0, 0, 7.1, 'Mexico');
INSERT INTO `player`
VALUES ('51055821', 'Jorge Sánchez', 25, 'D (RL), WB (R)', '175 cm', '66 kg', '3(0)', 0, 0, 6.63, 'Mexico');
INSERT INTO `player`
VALUES ('51055829', 'Uriel Antuna', 25, 'M (L), AM (RL), ST (C)', '174 cm', '59 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('5114022', 'Kasper Schmeichel', 36, 'GK', '189 cm', '84 kg', '3(0)', 0, 0, 6.9, 'Denmark');
INSERT INTO `player`
VALUES ('5132312', 'Gareth Bale', 33, 'M (L), AM (RLC), ST (C)', '185 cm', '82 kg', '2(1)', 0, 0, 6.37, 'Wales');
INSERT INTO `player`
VALUES ('53056897', 'Kara Mbodj', 33, 'D (C), DM', '190 cm', '88 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('53094972', 'Ethan Horvath', 27, 'GK', '195 cm', '89 kg', '0', 0, 0, NULL, 'United States');
INSERT INTO `player`
VALUES ('5385080', 'Randall Azofeifa', 37, 'DM, M (C)', '183 cm', '82 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('54005896', 'Mateusz Klich', 32, 'M/AM (C)', '183 cm', '84 kg', '4(0)', 1, 1, 7.03, 'Poland');
INSERT INTO `player`
VALUES ('54009099', 'Łukasz Skorupski', 31, 'GK', '187 cm', '84 kg', '0', 0, 0, NULL, 'Poland');
INSERT INTO `player`
VALUES ('55000929', 'Rui Patrício', 34, 'GK', '190 cm', '84 kg', '0', 0, 0, NULL, 'Portugal');
INSERT INTO `player`
VALUES ('55006634', 'Steven Vitória', 35, 'D (C)', '195 cm', '86 kg', '1(1)', 0, 0, 6.25, 'Canada');
INSERT INTO `player`
VALUES ('55012106', 'William Carvalho', 30, 'DM, M (C)', '187 cm', '83 kg', '0(3)', 0, 0, 7, 'Portugal');
INSERT INTO `player`
VALUES ('55013032', 'Danilo Pereira', 31, 'D (C), DM, M (C)', '188 cm', '83 kg', '4(1)', 0, 2, 7.22, 'Portugal');
INSERT INTO `player`
VALUES ('55022391', 'João Mário', 29, 'M (RLC), AM (LC)', '179 cm', '73 kg', '1(2)', 2, 2, 8.05, 'Portugal');
INSERT INTO `player`
VALUES ('55032265', 'Eric Dier', 28, 'D (C), DM', '188 cm', '90 kg', '1(0)', 0, 0, 7.3, 'England');
INSERT INTO `player`
VALUES ('55041623', 'João Cancelo', 28, 'D/WB (RL), M (R)', '182 cm', '74 kg', '4(1)', 1, 0, 6.96, 'Portugal');
INSERT INTO `player`
VALUES ('55041632', 'Bernardo Silva', 28, 'M/AM (RC)', '173 cm', '64 kg', '4(0)', 0, 2, 7.15, 'Portugal');
INSERT INTO `player`
VALUES ('55041694', 'André Silva', 27, 'ST (C)', '185 cm', '84 kg', '0', 0, 0, NULL, 'Portugal');
INSERT INTO `player`
VALUES ('55041710', 'Gonçalo Guedes', 26, 'M (RL), AM (RLC), ST (C)', '179 cm', '68 kg', '2(2)', 3, 2, 7.88,
        'Portugal');
INSERT INTO `player`
VALUES ('55057659', 'Ederson', 29, 'GK', '188 cm', '86 kg', '7(0)', 0, 0, 6.8, 'Brazil');
INSERT INTO `player`
VALUES ('55063454', 'Abdullah Otayf', 30, 'DM, M (C)', '177 cm', '68 kg', '3(0)', 0, 0, 6.5, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('55070298', 'Renato Sanches', 25, 'DM, M (C), AM (RC)', '176 cm', '76 kg', '0(2)', 0, 0, 6.8, 'Portugal');
INSERT INTO `player`
VALUES ('55070299', 'Rúben Dias', 25, 'D (C)', '186 cm', '83 kg', '4(0)', 1, 1, 7.22, 'Portugal');
INSERT INTO `player`
VALUES ('55079798', 'Stephen Eustáquio', 26, 'DM, M (C)', '178 cm', '71 kg', '3(0)', 0, 1, 7.07, 'Canada');
INSERT INTO `player`
VALUES ('55082360', 'Emmanuel Boateng', 26, 'AM (R), ST (C)', '175 cm', '70 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('55083779', 'Diogo Jota', 26, 'AM (RL), ST (C)', '178 cm', '73 kg', '3(0)', 1, 0, 7.03, 'Portugal');
INSERT INTO `player`
VALUES ('5664830', 'Héctor Herrera', 32, 'DM, M (C)', '178 cm', '72 kg', '3(0)', 0, 0, 6.73, 'Mexico');
INSERT INTO `player`
VALUES ('5666269', 'Hugo González', 32, 'GK', '183 cm', '84 kg', '0', 0, 0, NULL, 'Mexico');
INSERT INTO `player`
VALUES ('5666492', 'Guillermo Ochoa', 37, 'GK', '185 cm', '78 kg', '3(0)', 0, 0, 7.07, 'Mexico');
INSERT INTO `player`
VALUES ('5667723', 'Andrés Guardado', 36, 'DM, M/AM (LC)', '169 cm', '60 kg', '3(0)', 1, 0, 6.83, 'Mexico');
INSERT INTO `player`
VALUES ('57189533', 'Theo Corbeanu', 20, 'AM (RL), ST (C)', '187 cm', '76 kg', '0(1)', 0, 0, 6.3, 'Canada');
INSERT INTO `player`
VALUES ('5747078', 'Darko Lazović', 32, 'WB/M (RL), AM (L)', '181 cm', '66 kg', '4(0)', 0, 1, 6.97, 'Serbia');
INSERT INTO `player`
VALUES ('5788648', 'Dušan Tadić', 34, 'M (LC), AM (RLC), ST (C)', '181 cm', '76 kg', '2(0)', 0, 1, 6.55, 'Serbia');
INSERT INTO `player`
VALUES ('58098760', 'Sardar Azmoun', 27, 'ST (C)', '186 cm', '82 kg', '1(2)', 1, 0, 6.9, 'Iran');
INSERT INTO `player`
VALUES ('61039990', 'Martin Boyle', 29, 'WB/M/AM (R), ST (C)', '173 cm', '69 kg', '1(2)', 0, 0, 6.67, 'Australia');
INSERT INTO `player`
VALUES ('61041668', 'Jackson Irvine', 29, 'DM, M/AM (C)', '189 cm', '82 kg', '2(0)', 0, 0, 6.75, 'Australia');
INSERT INTO `player`
VALUES ('61064592', 'Jason Cummings', 27, 'ST (C)', '178 cm', '68 kg', '0(2)', 0, 0, 6.55, 'Australia');
INSERT INTO `player`
VALUES ('61069532', 'Harry Souttar', 24, 'D (C)', '199 cm', '94 kg', '2(1)', 0, 0, 6.4, 'Australia');
INSERT INTO `player`
VALUES ('62013411', 'Aleksandar Ignjovski', 31, 'D (RL), WB (R), DM, M (C)', '175 cm', '71 kg', '0(4)', 1, 0, 7,
        'Serbia');
INSERT INTO `player`
VALUES ('62013805', 'Nemanja Gudelj', 31, 'D (C), DM, M (C)', '186 cm', '77 kg', '3(1)', 0, 0, 6.8, 'Serbia');
INSERT INTO `player`
VALUES ('62031623', 'Stefan Mitrović', 32, 'D (C)', '189 cm', '84 kg', '2(0)', 0, 0, 6.15, 'Serbia');
INSERT INTO `player`
VALUES ('62038612', 'Marko Dmitrović', 30, 'GK', '190 cm', '81 kg', '4(0)', 0, 0, 6.72, 'Serbia');
INSERT INTO `player`
VALUES ('62055271', 'Matija Nastasić', 29, 'D (C)', '188 cm', '83 kg', '0(1)', 0, 0, NULL, 'Serbia');
INSERT INTO `player`
VALUES ('62070416', 'Filip Kostić', 30, 'WB/M/AM (L)', '184 cm', '84 kg', '3(0)', 0, 1, 6.83, 'Serbia');
INSERT INTO `player`
VALUES ('62076152', 'Predrag Rajković', 27, 'GK', '191 cm', '88 kg', '0', 0, 0, NULL, 'Serbia');
INSERT INTO `player`
VALUES ('62085429', 'Marko Grujić', 26, 'DM, M (C)', '191 cm', '82 kg', '1(3)', 0, 0, 6.67, 'Serbia');
INSERT INTO `player`
VALUES ('62096212', 'Mijat Gaćinović', 27, 'M (C), AM (LC)', '175 cm', '67 kg', '0(1)', 0, 0, 6.7, 'Serbia');
INSERT INTO `player`
VALUES ('62096282', 'Aleksandar Mitrović', 28, 'ST (C)', '189 cm', '82 kg', '2(0)', 3, 0, 8.05, 'Serbia');
INSERT INTO `player`
VALUES ('62097340', 'Nemanja Maksimović', 27, 'DM, M (RC)', '184 cm', '75 kg', '3(0)', 0, 1, 6.97, 'Serbia');
INSERT INTO `player`
VALUES ('62113639', 'Luka Jović', 25, 'ST (C)', '181 cm', '79 kg', '1(1)', 0, 0, 6.45, 'Serbia');
INSERT INTO `player`
VALUES ('62124117', 'Saša Lukić', 26, 'DM, M/AM (C)', '182 cm', '77 kg', '0(1)', 0, 0, 6.6, 'Serbia');
INSERT INTO `player`
VALUES ('62127037', 'Sergej Milinković-Savić', 27, 'M/AM (C)', '191 cm', '82 kg', '4(0)', 1, 0, 7.35, 'Serbia');
INSERT INTO `player`
VALUES ('62137429', 'Mihailo Ristić', 27, 'D/WB (L), M (LC)', '180 cm', '79 kg', '1(0)', 0, 0, 6.8, 'Serbia');
INSERT INTO `player`
VALUES ('62142830', 'Vanja Milinković-Savić', 25, 'GK', '202 cm', '92 kg', '0', 0, 0, NULL, 'Serbia');
INSERT INTO `player`
VALUES ('62175142', 'Đorđe Jovanović', 23, 'ST (C)', '187 cm', '79 kg', '0', 0, 0, NULL, 'Serbia');
INSERT INTO `player`
VALUES ('62175144', 'Dejan Joveljić', 23, 'ST (C)', '182 cm', '76 kg', '0', 0, 0, NULL, 'Serbia');
INSERT INTO `player`
VALUES ('62182055', 'Dušan Vlahović', 22, 'ST (C)', '191 cm', '81 kg', '3(0)', 3, 0, 7.83, 'Serbia');
INSERT INTO `player`
VALUES ('62191195', 'Nikola Milenković', 25, 'D (RC)', '195 cm', '92 kg', '3(0)', 0, 0, 7.03, 'Serbia');
INSERT INTO `player`
VALUES ('62201068', 'Ivan Ilić', 21, 'DM, M/AM (C)', '182 cm', '75 kg', '1(2)', 0, 1, 7.4, 'Serbia');
INSERT INTO `player`
VALUES ('62206980', 'Derek Cornelius', 25, 'D (C)', '188 cm', '87 kg', '0(1)', 0, 0, 6.5, 'Canada');
INSERT INTO `player`
VALUES ('62219051', 'Strahinja Eraković', 21, 'D (RC)', '184 cm', '75 kg', '1(2)', 0, 0, 6.5, 'Serbia');
INSERT INTO `player`
VALUES ('62220026', 'Strahinja Pavlović', 21, 'D (C)', '194 cm', '84 kg', '2(0)', 0, 0, 7.2, 'Serbia');
INSERT INTO `player`
VALUES ('63027630', 'James Lawrence', 30, 'D (LC), DM', '188 cm', '81 kg', '3(0)', 0, 0, 6.2, 'Wales');
INSERT INTO `player`
VALUES ('66000930', 'Kim Seung-Gyu', 32, 'GK', '187 cm', '76 kg', '4(0)', 0, 0, 6.75, 'South Korea');
INSERT INTO `player`
VALUES ('66010145', 'Hong Jeong-Ho', 33, 'D (C)', '186 cm', '77 kg', '3(0)', 0, 0, 6.57, 'South Korea');
INSERT INTO `player`
VALUES ('66014588', 'Hwang Hee-Chan', 26, 'M/AM (RL), ST (C)', '177 cm', '77 kg', '2(0)', 0, 0, 6.3, 'South Korea');
INSERT INTO `player`
VALUES ('66028999', 'Kwon Chang-Hoon', 28, 'M (C), AM (RC)', '173 cm', '72 kg', '3(0)', 0, 1, 6.9, 'South Korea');
INSERT INTO `player`
VALUES ('66029640', 'Hwang Ui-Jo', 30, 'ST (C)', '185 cm', '82 kg', '0(2)', 1, 0, 6.8, 'South Korea');
INSERT INTO `player`
VALUES ('66029657', 'Park Ji-Soo', 28, 'D (C)', '187 cm', '70 kg', '2(0)', 0, 0, 6.3, 'South Korea');
INSERT INTO `player`
VALUES ('66032157', 'Lee Jae-Sung', 30, 'M/AM (LC), ST (C)', '180 cm', '70 kg', '1(1)', 0, 0, 6.3, 'South Korea');
INSERT INTO `player`
VALUES ('66034886', 'Hwang In-Beom', 26, 'DM, M/AM (C)', '177 cm', '70 kg', '2(1)', 0, 0, 6.73, 'South Korea');
INSERT INTO `player`
VALUES ('66037117', 'Kim Dong-Jun', 28, 'GK', '189 cm', '85 kg', '0', 0, 0, NULL, 'South Korea');
INSERT INTO `player`
VALUES ('66040782', 'Song Bum-Keun', 25, 'GK', '194 cm', '88 kg', '0', 0, 0, NULL, 'South Korea');
INSERT INTO `player`
VALUES ('66047066', 'Seol Yung-Woo', 24, 'D/AM (RL)', '180 cm', '72 kg', '2(1)', 0, 0, 6.5, 'South Korea');
INSERT INTO `player`
VALUES ('67030171', 'David De Gea', 32, 'GK', '192 cm', '76 kg', '0', 0, 0, NULL, 'Spain');
INSERT INTO `player`
VALUES ('67030699', 'Kamil Glik', 34, 'D (C)', '190 cm', '80 kg', '2(0)', 1, 0, 7.05, 'Poland');
INSERT INTO `player`
VALUES ('67045428', 'Pablo Sarabia', 30, 'M/AM (RLC)', '174 cm', '70 kg', '0', 0, 0, NULL, 'Spain');
INSERT INTO `player`
VALUES ('67046662', 'Mauro Icardi', 29, 'ST (C)', '181 cm', '75 kg', '0', 0, 0, NULL, 'Argentina');
INSERT INTO `player`
VALUES ('67061770', 'Munir Mohand', 33, 'GK', '190 cm', '89 kg', '0', 0, 0, NULL, 'Morocco');
INSERT INTO `player`
VALUES ('67086280', 'Rodrigo', 31, 'M (C), AM (RLC), ST (C)', '182 cm', '77 kg', '0(1)', 0, 0, 6.8, 'Spain');
INSERT INTO `player`
VALUES ('67086656', 'Antoine Griezmann', 31, 'AM (RLC), ST (C)', '175 cm', '71 kg', '1(4)', 0, 1, 6.72, 'France');
INSERT INTO `player`
VALUES ('67115823', 'Gerard Moreno', 30, 'AM (R), ST (C)', '180 cm', '77 kg', '3(0)', 0, 1, 6.7, 'Spain');
INSERT INTO `player`
VALUES ('67139735', 'Dani Carvajal', 30, 'D/WB (R)', '173 cm', '74 kg', '0(1)', 0, 0, 7, 'Spain');
INSERT INTO `player`
VALUES ('67157624', 'Kepa Arrizabalaga', 28, 'GK', '186 cm', '90 kg', '0', 0, 0, NULL, 'Spain');
INSERT INTO `player`
VALUES ('67173048', 'Borja Iglesias', 29, 'ST (C)', '187 cm', '86 kg', '0(3)', 0, 0, 6.7, 'Spain');
INSERT INTO `player`
VALUES ('67174735', 'Munir', 27, 'AM (RLC), ST (C)', '175 cm', '69 kg', '2(0)', 0, 0, 5.9, 'Morocco');
INSERT INTO `player`
VALUES ('67175052', 'Thomas Partey', 29, 'DM, M (C)', '185 cm', '80 kg', '3(0)', 0, 0, 6.63, 'Ghana');
INSERT INTO `player`
VALUES ('67178177', 'José Gayà', 27, 'D/WB/M/AM (L)', '172 cm', '66 kg', '3(0)', 0, 1, 7.3, 'Spain');
INSERT INTO `player`
VALUES ('67184349', 'Iñaki Williams', 28, 'M (RL), AM (RLC), ST (C)', '186 cm', '80 kg', '3(0)', 0, 1, 7.03, 'Ghana');
INSERT INTO `player`
VALUES ('67191240', 'Paik Seung-Ho', 25, 'DM, M (C)', '180 cm', '78 kg', '1(3)', 0, 0, 6.68, 'South Korea');
INSERT INTO `player`
VALUES ('67196204', 'Carlos Soler', 25, 'WB (R), DM, M/AM (RC)', '180 cm', '76 kg', '0(1)', 0, 0, 6.8, 'Spain');
INSERT INTO `player`
VALUES ('67197125', 'Marco Asensio', 26, 'AM (RLC)', '182 cm', '76 kg', '2(1)', 0, 0, 6.93, 'Spain');
INSERT INTO `player`
VALUES ('67197145', 'Lucas Hernández', 26, 'D (LC)', '184 cm', '79 kg', '5(0)', 0, 0, 6.84, 'France');
INSERT INTO `player`
VALUES ('67200923', 'Unai Simón', 25, 'GK', '190 cm', '88 kg', '4(0)', 0, 0, 7.47, 'Spain');
INSERT INTO `player`
VALUES ('67201634', 'André Onana', 26, 'GK', '192 cm', '93 kg', '3(0)', 0, 0, 6.63, 'Cameroon');
INSERT INTO `player`
VALUES ('67207191', 'Seung-Woo Lee', 24, 'AM (LC), ST (C)', '173 cm', '62 kg', '0', 0, 0, NULL, 'South Korea');
INSERT INTO `player`
VALUES ('67211690', 'Pierre Kunde', 27, 'DM, M (C)', '180 cm', '79 kg', '0', 0, 0, NULL, 'Cameroon');
INSERT INTO `player`
VALUES ('67211695', 'Theo Hernández', 25, 'D/WB/M (L)', '184 cm', '81 kg', '3(1)', 0, 0, 6.77, 'France');
INSERT INTO `player`
VALUES ('67213756', 'Amath N\'Diaye', 26, 'AM (RL), ST (C)', '175 cm', '67 kg', '2(1)', 0, 0, 6.6, 'Senegal');
INSERT INTO `player`
VALUES ('67215284', 'Marc Cucurella', 24, 'D (LC), WB/M (L)', '172 cm', '68 kg', '1(1)', 0, 0, 6.9, 'Spain');
INSERT INTO `player`
VALUES ('67216151', 'Toni Martínez', 25, 'ST (C)', '187 cm', '84 kg', '0', 0, 0, NULL, 'Spain');
INSERT INTO `player`
VALUES ('67216396', 'Fabián', 26, 'DM, M/AM (C)', '189 cm', '73 kg', '2(2)', 0, 0, 6.85, 'Spain');
INSERT INTO `player`
VALUES ('67217522', 'Pau Torres', 25, 'D (C), DM', '191 cm', '80 kg', '1(2)', 0, 0, 7.17, 'Spain');
INSERT INTO `player`
VALUES ('67217524', 'Rodri', 26, 'DM, M (C)', '191 cm', '75 kg', '3(0)', 0, 1, 7.27, 'Spain');
INSERT INTO `player`
VALUES ('67228634', 'Achraf Hakimi', 24, 'D/WB/M (R)', '181 cm', '73 kg', '3(0)', 0, 0, 6.93, 'Morocco');
INSERT INTO `player`
VALUES ('67229630', 'Youssef En-Nesyri', 25, 'AM (L), ST (C)', '189 cm', '73 kg', '3(0)', 2, 0, 6.9, 'Morocco');
INSERT INTO `player`
VALUES ('67233494', 'Iddrisu Baba', 26, 'DM, M (C)', '182 cm', '73 kg', '0(3)', 0, 0, 6.7, 'Ghana');
INSERT INTO `player`
VALUES ('67245193', 'Tarek Salman', 25, 'D (C)', '186 cm', '83 kg', '0(3)', 0, 0, 6.7, 'Qatar');
INSERT INTO `player`
VALUES ('67260506', 'Kang-In Lee', 21, 'M/AM (RLC)', '173 cm', '68 kg', '3(1)', 1, 1, 6.68, 'South Korea');
INSERT INTO `player`
VALUES ('67270690', 'Mohammed Salisu', 23, 'D (C)', '191 cm', '82 kg', '2(0)', 0, 0, 6.3, 'Ghana');
INSERT INTO `player`
VALUES ('67276122', 'Ansu Fati', 20, 'AM (RL), ST (C)', '178 cm', '66 kg', '3(0)', 4, 0, 7.87, 'Spain');
INSERT INTO `player`
VALUES ('67293495', 'Pedri', 20, 'M (C), AM (RLC)', '176 cm', '65 kg', '4(0)', 1, 0, 7.18, 'Spain');
INSERT INTO `player`
VALUES ('68006529', 'Adam Davies', 30, 'GK', '185 cm', '77 kg', '0', 0, 0, NULL, 'Wales');
INSERT INTO `player`
VALUES ('69000199', 'Yann Sommer', 34, 'GK', '183 cm', '79 kg', '3(0)', 0, 0, 6.43, 'Switzerland');
INSERT INTO `player`
VALUES ('69004248', 'Haris Seferovic', 30, 'ST (C)', '186 cm', '83 kg', '1(2)', 0, 0, 6.5, 'Switzerland');
INSERT INTO `player`
VALUES ('719601', 'Robert Lewandowski', 34, 'ST (C)', '185 cm', '81 kg', '3(0)', 0, 0, 6.77, 'Poland');
INSERT INTO `player`
VALUES ('72022685', 'Doneil Henry', 29, 'D (C)', '188 cm', '89 kg', '2(0)', 0, 0, 7.1, 'Canada');
INSERT INTO `player`
VALUES ('72022967', 'Maxime Crépeau', 28, 'GK', '183 cm', '88 kg', '2(0)', 0, 0, 6.55, 'Canada');
INSERT INTO `player`
VALUES ('72038783', 'Gyasi Zardes', 31, 'AM (RL), ST (C)', '186 cm', '85 kg', '4(0)', 0, 0, 6.45, 'United States');
INSERT INTO `player`
VALUES ('72038786', 'Walker Zimmerman', 29, 'D (C)', '191 cm', '88 kg', '3(0)', 0, 1, 7.07, 'United States');
INSERT INTO `player`
VALUES ('72040331', 'Jonathan Osorio', 30, 'M/AM (RLC)', '176 cm', '73 kg', '3(0)', 1, 0, 7.27, 'Canada');
INSERT INTO `player`
VALUES ('72041404', 'Tesho Akindele', 30, 'AM (RL), ST (C)', '186 cm', '78 kg', '0', 0, 0, NULL, 'Canada');
INSERT INTO `player`
VALUES ('72041431', 'Aaron Long', 30, 'D (C), DM', '186 cm', '87 kg', '1(1)', 0, 0, 6.35, 'United States');
INSERT INTO `player`
VALUES ('72044151', 'Cyle Larin', 27, 'AM (RL), ST (C)', '188 cm', '90 kg', '2(0)', 0, 1, 7.3, 'Canada');
INSERT INTO `player`
VALUES ('72044871', 'Alejandro Zendejas', 24, 'M (LC), AM (RL)', '165 cm', '64 kg', '1(2)', 0, 0, 6.7, 'United States');
INSERT INTO `player`
VALUES ('72044918', 'Tyler Adams', 23, 'D/WB (R), DM, M (C)', '175 cm', '72 kg', '3(1)', 0, 0, 6.68, 'United States');
INSERT INTO `player`
VALUES ('72045915', 'Richie Laryea', 27, 'D/WB (RL)', '176 cm', '69 kg', '3(0)', 0, 0, 6.63, 'Canada');
INSERT INTO `player`
VALUES ('72046373', 'Jordan Morris', 28, 'AM (RL), ST (C)', '183 cm', '84 kg', '0(1)', 0, 0, 6.8, 'United States');
INSERT INTO `player`
VALUES ('72046884', 'Matt Turner', 28, 'GK', '191 cm', '89 kg', '0', 0, 0, NULL, 'United States');
INSERT INTO `player`
VALUES ('72048035', 'Weston McKennie', 24, 'DM, M/AM (RC)', '185 cm', '84 kg', '4(0)', 0, 0, 6.8, 'United States');
INSERT INTO `player`
VALUES ('72048181', 'Reggie Cannon', 24, 'D (RC), WB (R)', '180 cm', '74 kg', '2(1)', 0, 0, 6.9, 'United States');
INSERT INTO `player`
VALUES ('72048183', 'Jesus Ferreira', 22, 'M (C), AM (RLC), ST (C)', '176 cm', '69 kg', '0', 0, 0, NULL,
        'United States');
INSERT INTO `player`
VALUES ('72051281', 'Giovanni Reyna', 20, 'M/AM (LC)', '185 cm', '79 kg', '3(0)', 0, 0, 6.63, 'United States');
INSERT INTO `player`
VALUES ('72051563', 'Chris Richards', 22, 'D (RC)', '188 cm', '78 kg', '2(2)', 0, 0, 6.77, 'United States');
INSERT INTO `player`
VALUES ('72051619', 'Joe Scally', 19, 'D/WB (RL)', '185 cm', '80 kg', '1(0)', 0, 0, 6.7, 'United States');
INSERT INTO `player`
VALUES ('72052898', 'Kamal Miller', 25, 'D (LC)', '183 cm', '84 kg', '3(0)', 0, 0, 6.13, 'Canada');
INSERT INTO `player`
VALUES ('72053648', 'Thomas Hasal', 23, 'GK', '188 cm', '80 kg', '0', 0, 0, NULL, 'Canada');
INSERT INTO `player`
VALUES ('72056139', 'Alistair Johnston', 24, 'D (RC), WB (R)', '181 cm', '78 kg', '0(1)', 0, 0, 6.5, 'Canada');
INSERT INTO `player`
VALUES ('74032588', 'Ryan Hedges', 27, 'M (C), AM (RC)', '185 cm', '65 kg', '1(0)', 0, 0, 6.6, 'Wales');
INSERT INTO `player`
VALUES ('744539', 'João Moutinho', 36, 'DM, M/AM (C)', '170 cm', '61 kg', '2(1)', 0, 1, 6.9, 'Portugal');
INSERT INTO `player`
VALUES ('7458500', 'Lionel Messi', 35, 'AM (RC), ST (C)', '169 cm', '67 kg', '3(1)', 1, 2, 7.12, 'Argentina');
INSERT INTO `player`
VALUES ('776491', 'Eiji Kawashima', 39, 'GK', '185 cm', '82 kg', '0', 0, 0, NULL, 'Japan');
INSERT INTO `player`
VALUES ('78000335', 'Luis Suárez', 35, 'ST (C)', '182 cm', '86 kg', '1(2)', 1, 0, 6.93, 'Uruguay');
INSERT INTO `player`
VALUES ('78001113', 'Fernando Muslera', 36, 'GK', '190 cm', '83 kg', '3(0)', 0, 0, 6.53, 'Uruguay');
INSERT INTO `player`
VALUES ('78005742', 'Edinson Cavani', 35, 'ST (C)', '184 cm', '70 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78010878', 'Martín Cáceres', 35, 'D (RLC)', '181 cm', '77 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78018171', 'Nicolás Lodeiro', 33, 'M/AM (RLC)', '171 cm', '69 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78018507', 'Milan Borjan', 35, 'GK', '195 cm', '87 kg', '1(0)', 0, 0, 6.2, 'Canada');
INSERT INTO `player`
VALUES ('78026896', 'Kendall Waston', 34, 'D (C)', '196 cm', '97 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('78043711', 'Nico López', 29, 'AM (RLC), ST (C)', '175 cm', '67 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78058339', 'Lucas Cavallini', 30, 'ST (C)', '182 cm', '84 kg', '3(0)', 2, 1, 6.93, 'Canada');
INSERT INTO `player`
VALUES ('78059800', 'Giorgian De Arrascaeta', 28, 'M (L), AM (LC)', '173 cm', '73 kg', '0(3)', 0, 1, 7.05, 'Uruguay');
INSERT INTO `player`
VALUES ('78060464', 'José Giménez', 27, 'D (C)', '185 cm', '77 kg', '3(0)', 0, 0, 6.47, 'Uruguay');
INSERT INTO `player`
VALUES ('78062662', 'Jonathan Rodríguez', 29, 'AM (L), ST (C)', '181 cm', '78 kg', '1(2)', 1, 0, 7, 'Uruguay');
INSERT INTO `player`
VALUES ('78063165', 'Sergio Rochet', 29, 'GK', '191 cm', '82 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78064881', 'Mauro Arambarri', 27, 'DM, M (RC)', '174 cm', '71 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78067540', 'Santiago Mele', 25, 'GK', '185 cm', '78 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78071163', 'Giovanni González', 28, 'D (RL), WB/M (R)', '173 cm', '73 kg', '0(2)', 0, 0, 6.65, 'Uruguay');
INSERT INTO `player`
VALUES ('78074594', 'Federico Valverde', 24, 'DM, M (RC), AM (R)', '181 cm', '74 kg', '3(0)', 0, 0, 6.63, 'Uruguay');
INSERT INTO `player`
VALUES ('78076343', 'Mathías Olivera', 25, 'D/WB/M (L)', '184 cm', '78 kg', '1(1)', 0, 1, 6.9, 'Uruguay');
INSERT INTO `player`
VALUES ('78078886', 'Maximiliano Gómez', 26, 'ST (C)', '186 cm', '85 kg', '0', 0, 0, NULL, 'Uruguay');
INSERT INTO `player`
VALUES ('78079444', 'Nicolás de la Cruz', 25, 'M (RLC), AM (LC)', '167 cm', '65 kg', '0(1)', 0, 0, 6.8, 'Uruguay');
INSERT INTO `player`
VALUES ('78081848', 'Matías Viña', 25, 'D/WB/M (L)', '180 cm', '70 kg', '2(0)', 0, 0, 6.7, 'Uruguay');
INSERT INTO `player`
VALUES ('78084541', 'Manuel Ugarte', 21, 'DM, M (C)', '182 cm', '77 kg', '2(1)', 0, 0, 6.7, 'Uruguay');
INSERT INTO `player`
VALUES ('78085068', 'Ronald Araujo', 23, 'D (C)', '188 cm', '91 kg', '3(0)', 0, 0, 7.03, 'Uruguay');
INSERT INTO `player`
VALUES ('78088646', 'Facundo Torres', 22, 'AM (RLC), ST (C)', '177 cm', '71 kg', '3(0)', 0, 0, 6.37, 'Uruguay');
INSERT INTO `player`
VALUES ('78089395', 'Bruno Méndez', 23, 'D (RC)', '181 cm', '81 kg', '2(0)', 0, 0, 6.5, 'Uruguay');
INSERT INTO `player`
VALUES ('78090138', 'Darwin Núñez', 23, 'AM (L), ST (C)', '187 cm', '82 kg', '2(0)', 0, 0, 6.7, 'Uruguay');
INSERT INTO `player`
VALUES ('788545', 'Shinji Okazaki', 36, 'AM (C), ST (C)', '174 cm', '70 kg', '1(1)', 0, 0, 6.5, 'Japan');
INSERT INTO `player`
VALUES ('80000931', 'Celso Borges', 34, 'M (C)', '188 cm', '76 kg', '3(0)', 0, 0, 6.4, 'Costa Rica');
INSERT INTO `player`
VALUES ('80000942', 'Giancarlo González', 34, 'D (C)', '186 cm', '84 kg', '3(0)', 0, 1, 6.53, 'Costa Rica');
INSERT INTO `player`
VALUES ('80000968', 'Cristian Gamboa', 33, 'D/WB (R)', '175 cm', '70 kg', '2(1)', 0, 0, 6.47, 'Costa Rica');
INSERT INTO `player`
VALUES ('80006910', 'Esteban', 33, 'GK', '193 cm', '82 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80006923', 'Bryan Oviedo', 32, 'D/WB/M (L)', '172 cm', '70 kg', '1(1)', 0, 1, 6.95, 'Costa Rica');
INSERT INTO `player`
VALUES ('80010050', 'David Guzmán', 32, 'DM, M (C)', '176 cm', '79 kg', '3(0)', 1, 0, 6.6, 'Costa Rica');
INSERT INTO `player`
VALUES ('80010070', 'Ariel Rodriguez', 33, 'AM (RL), ST (C)', '176 cm', '77 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80010074', 'Joel Campbell', 30, 'M/AM (RL), ST (C)', '178 cm', '70 kg', '2(0)', 0, 0, 7, 'Costa Rica');
INSERT INTO `player`
VALUES ('80011917', 'Jose Salvatierra', 33, 'D/WB (R)', '178 cm', '70 kg', '0(1)', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80011921', 'Jose Miguel Cubero', 35, 'D (C), DM, M (C)', '178 cm', '72 kg', '0(1)', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80011933', 'Oscar Duarte', 33, 'D (C)', '185 cm', '83 kg', '1(1)', 0, 0, 6.2, 'Costa Rica');
INSERT INTO `player`
VALUES ('80012754', 'Leonel Moreira', 32, 'GK', '176 cm', '70 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80013376', 'Yeltsin Tejeda', 30, 'DM, M (C)', '179 cm', '71 kg', '1(1)', 0, 0, 6.65, 'Costa Rica');
INSERT INTO `player`
VALUES ('80013377', 'John Ruiz', 28, 'M (R), AM (RL)', '175 cm', '68 kg', '1(1)', 0, 1, 7.15, 'Costa Rica');
INSERT INTO `player`
VALUES ('80024628', 'Elias Aguilar', 31, 'M/AM (LC)', '174 cm', '65 kg', '2(1)', 0, 0, 6.25, 'Costa Rica');
INSERT INTO `player`
VALUES ('80026188', 'David Ramírez', 29, 'AM (RL), ST (C)', '175 cm', '69 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80026190', 'Rónald Matarrita', 28, 'D/WB/M/AM (L)', '176 cm', '70 kg', '2(0)', 0, 0, 6.3, 'Costa Rica');
INSERT INTO `player`
VALUES ('80026191', 'Jose Guillermo Ortiz', 30, 'AM (RL), ST (C)', '173 cm', '69 kg', '0(3)', 0, 0, 6.6, 'Costa Rica');
INSERT INTO `player`
VALUES ('80027474', 'Randall Leal', 25, 'M (RC), AM (RLC)', '171 cm', '67 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('80028750', 'Juan Pablo Vargas', 27, 'D (C)', '192 cm', '88 kg', '3(0)', 0, 0, 6.73, 'Costa Rica');
INSERT INTO `player`
VALUES ('80034923', 'Manfred Ugalde', 20, 'AM (RLC), ST (C)', '171 cm', '68 kg', '3(0)', 1, 0, 6.57, 'Costa Rica');
INSERT INTO `player`
VALUES ('8150316', 'Jan Vertonghen', 35, 'D (LC)', '189 cm', '79 kg', '1(1)', 0, 0, 6.7, 'Belgium');
INSERT INTO `player`
VALUES ('8167246', 'Simon Mignolet', 34, 'GK', '193 cm', '88 kg', '0', 0, 0, NULL, 'Belgium');
INSERT INTO `player`
VALUES ('8169215', 'Axel Witsel', 33, 'D (C), DM, M (C)', '186 cm', '81 kg', '4(0)', 1, 1, 7.18, 'Belgium');
INSERT INTO `player`
VALUES ('8169242', 'Toby Alderweireld', 33, 'D (RC)', '187 cm', '90 kg', '0', 0, 0, NULL, 'Belgium');
INSERT INTO `player`
VALUES ('8169425', 'Dries Mertens', 35, 'AM (LC), ST (C)', '169 cm', '61 kg', '0', 0, 0, NULL, 'Belgium');
INSERT INTO `player`
VALUES ('83105845', 'Diogo Dalot', 23, 'D (RL), WB/M (R)', '184 cm', '75 kg', '1(4)', 0, 1, 6.94, 'Portugal');
INSERT INTO `player`
VALUES ('83111483', 'Rafael Leão', 23, 'AM (L), ST (C)', '188 cm', '80 kg', '3(1)', 3, 1, 7.62, 'Portugal');
INSERT INTO `player`
VALUES ('83169226', 'Diogo Costa', 23, 'GK', '186 cm', '80 kg', '5(0)', 0, 0, 7, 'Portugal');
INSERT INTO `player`
VALUES ('83169822', 'João Félix', 23, 'AM (RLC), ST (C)', '178 cm', '74 kg', '2(0)', 0, 0, 6.9, 'Portugal');
INSERT INTO `player`
VALUES ('83209468', 'Gonçalo Ramos', 21, 'ST (C)', '185 cm', '80 kg', '0(2)', 2, 0, 7.7, 'Portugal');
INSERT INTO `player`
VALUES ('83209641', 'Aziz Yakubu', 24, 'ST (C)', '187 cm', '80 kg', '2(1)', 2, 0, 7.23, 'Ghana');
INSERT INTO `player`
VALUES ('83228124', 'Beto', 24, 'ST (C)', '194 cm', '78 kg', '0', 0, 0, NULL, 'Portugal');
INSERT INTO `player`
VALUES ('83228731', 'Gonçalo Inácio', 21, 'D (C)', '188 cm', '80 kg', '1(1)', 0, 0, 7.15, 'Portugal');
INSERT INTO `player`
VALUES ('83261910', 'Nuno Mendes', 20, 'D/WB (L)', '176 cm', '70 kg', '3(0)', 0, 1, 7.27, 'Portugal');
INSERT INTO `player`
VALUES ('83262111', 'Jeremy Sarmiento', 20, 'AM (RLC)', '182 cm', '75 kg', '2(1)', 0, 1, 6.7, 'Ecuador');
INSERT INTO `player`
VALUES ('84154064', 'Zeki Amdouni', 22, 'AM (C), ST (C)', '185 cm', '79 kg', '0', 0, 0, NULL, 'Switzerland');
INSERT INTO `player`
VALUES ('8428653', 'Hugo Lloris', 36, 'GK', '188 cm', '82 kg', '0', 0, 0, NULL, 'France');
INSERT INTO `player`
VALUES ('8435089', 'Karim Benzema', 35, 'AM (C), ST (C)', '185 cm', '82 kg', '5(1)', 2, 1, 7.12, 'France');
INSERT INTO `player`
VALUES ('8442448', 'André Ayew', 33, 'M (R), AM (RLC), ST (C)', '175 cm', '72 kg', '2(0)', 0, 0, 6.2, 'Ghana');
INSERT INTO `player`
VALUES ('85003956', 'Anthony Lopes', 32, 'GK', '184 cm', '81 kg', '0', 0, 0, NULL, 'Portugal');
INSERT INTO `player`
VALUES ('85010871', 'Nampalys Mendy', 30, 'DM, M (C)', '167 cm', '73 kg', '1(0)', 0, 0, 6.9, 'Senegal');
INSERT INTO `player`
VALUES ('85023676', 'Thorgan Hazard', 29, 'M (RL), AM (RLC), ST (C)', '175 cm', '71 kg', '0(3)', 0, 2, 7.27, 'Belgium');
INSERT INTO `player`
VALUES ('85027975', 'Ibrahim Amadou', 29, 'DM, M (C)', '184 cm', '81 kg', '0', 0, 0, NULL, 'Cameroon');
INSERT INTO `player`
VALUES ('85027981', 'Karim Boudiaf', 32, 'D (C), DM, M (C)', '187 cm', '88 kg', '3(0)', 0, 0, 6.6, 'Qatar');
INSERT INTO `player`
VALUES ('85028014', 'Paul Pogba', 29, 'M/AM (LC)', '191 cm', '84 kg', '0(1)', 0, 0, 6.6, 'France');
INSERT INTO `player`
VALUES ('85032335', 'Idrissa Gueye', 33, 'DM, M (C)', '174 cm', '66 kg', '3(0)', 0, 0, 7, 'Senegal');
INSERT INTO `player`
VALUES ('85045409', 'Raphaël Guerreiro', 29, 'D/WB (L), M (LC)', '170 cm', '71 kg', '2(1)', 0, 1, 6.8, 'Portugal');
INSERT INTO `player`
VALUES ('85045654', 'Devis Epassy', 29, 'GK', '187 cm', '80 kg', '0', 0, 0, NULL, 'Cameroon');
INSERT INTO `player`
VALUES ('85051236', 'M’Baye Niang', 28, 'AM (RL), ST (C)', '188 cm', '83 kg', '1(1)', 0, 1, 7.8, 'Senegal');
INSERT INTO `player`
VALUES ('85057304', 'Youssouf Sabaly', 29, 'D/WB (R)', '174 cm', '68 kg', '1(2)', 0, 0, 6.7, 'Senegal');
INSERT INTO `player`
VALUES ('85059261', 'Naïm Sliti', 30, 'M (RL), AM (RLC)', '173 cm', '76 kg', '1(2)', 0, 0, 6.3, 'Tunisia');
INSERT INTO `player`
VALUES ('85065498', 'Adrien Tameze', 28, 'DM, M/AM (C)', '180 cm', '78 kg', '2(1)', 0, 0, 6.83, 'Cameroon');
INSERT INTO `player`
VALUES ('85068487', 'Jean-Charles Castelletto', 27, 'D (RC)', '185 cm', '76 kg', '1(2)', 0, 0, 6.55, 'Cameroon');
INSERT INTO `player`
VALUES ('85071175', 'Wissam Ben Yedder', 32, 'AM (C), ST (C)', '170 cm', '68 kg', '2(2)', 3, 1, 7.7, 'France');
INSERT INTO `player`
VALUES ('85072773', 'Bouna Sarr', 30, 'D/WB/M/AM (R)', '178 cm', '71 kg', '2(1)', 0, 0, 6.45, 'Senegal');
INSERT INTO `player`
VALUES ('85075595', 'Kurt Zouma', 28, 'D (RC)', '190 cm', '96 kg', '0(2)', 0, 0, 6.7, 'France');
INSERT INTO `player`
VALUES ('85081880', 'N\'Golo Kanté', 31, 'DM, M (C)', '168 cm', '72 kg', '5(1)', 0, 2, 7.17, 'France');
INSERT INTO `player`
VALUES ('85084000', 'Fayçal Fajr', 34, 'M/AM (C)', '179 cm', '69 kg', '0(1)', 0, 0, 6.7, 'Morocco');
INSERT INTO `player`
VALUES ('85084594', 'Jean-Pierre Nsamé', 29, 'ST (C)', '188 cm', '89 kg', '0', 0, 0, NULL, 'Cameroon');
INSERT INTO `player`
VALUES ('85085378', 'Aymeric Laporte', 28, 'D (C)', '191 cm', '85 kg', '4(0)', 0, 0, 7.3, 'Spain');
INSERT INTO `player`
VALUES ('85085653', 'Karl Toko Ekambi', 30, 'AM (RL), ST (C)', '185 cm', '74 kg', '3(0)', 2, 0, 7.1, 'Cameroon');
INSERT INTO `player`
VALUES ('85086031', 'Adrien Rabiot', 27, 'DM, M (LC)', '188 cm', '71 kg', '0(3)', 0, 0, 6.5, 'France');
INSERT INTO `player`
VALUES ('85094520', 'Mike Maignan', 27, 'GK', '191 cm', '89 kg', '7(0)', 0, 0, 6.76, 'France');
INSERT INTO `player`
VALUES ('85100464', 'Samuel Piette', 28, 'DM, M (C)', '171 cm', '78 kg', '0(1)', 0, 0, NULL, 'Canada');
INSERT INTO `player`
VALUES ('85103980', 'Georges-Kévin Nkoudou', 27, 'AM (L)', '175 cm', '73 kg', '1(2)', 0, 0, 6.57, 'Cameroon');
INSERT INTO `player`
VALUES ('85104424', 'Kingsley Coman', 26, 'M/AM (RL)', '179 cm', '75 kg', '0', 0, 0, NULL, 'France');
INSERT INTO `player`
VALUES ('85104863', 'Sofiane Boufal', 29, 'AM (RLC), ST (C)', '175 cm', '75 kg', '1(1)', 0, 0, 6.5, 'Morocco');
INSERT INTO `player`
VALUES ('85116519', 'Romain Saïss', 32, 'D (C), DM', '188 cm', '84 kg', '3(0)', 0, 0, 6.5, 'Morocco');
INSERT INTO `player`
VALUES ('85120721', 'Abdou Diallo', 26, 'D (LC), DM', '187 cm', '79 kg', '3(0)', 0, 0, 7.03, 'Senegal');
INSERT INTO `player`
VALUES ('85126092', 'Ellyes Skhiri', 27, 'DM, M (C)', '185 cm', '73 kg', '3(1)', 0, 0, 6.65, 'Tunisia');
INSERT INTO `player`
VALUES ('85128159', 'Tanguy Ndombele', 26, 'DM, M/AM (C)', '181 cm', '76 kg', '0(6)', 0, 0, 6.82, 'France');
INSERT INTO `player`
VALUES ('85128238', 'Jordan Siebatcheu', 26, 'AM (R), ST (C)', '190 cm', '87 kg', '0(4)', 0, 1, 6.93, 'United States');
INSERT INTO `player`
VALUES ('85133751', 'Ferland Mendy', 27, 'D/WB (L)', '180 cm', '73 kg', '4(2)', 0, 1, 7.18, 'France');
INSERT INTO `player`
VALUES ('85134218', 'Yvan Neyou', 25, 'DM, M/AM (RC)', '180 cm', '63 kg', '0(1)', 0, 0, 6.5, 'Cameroon');
INSERT INTO `player`
VALUES ('85135912', 'Jérôme Onguéné', 25, 'D (C), DM', '186 cm', '79 kg', '2(0)', 0, 0, 6.7, 'Cameroon');
INSERT INTO `player`
VALUES ('85137101', 'Amine Harit', 25, 'M (LC), AM (RLC)', '180 cm', '67 kg', '2(0)', 0, 0, 6.8, 'Morocco');
INSERT INTO `player`
VALUES ('85139014', 'Kylian Mbappé', 24, 'AM (RL), ST (C)', '178 cm', '73 kg', '4(1)', 6, 0, 7.72, 'France');
INSERT INTO `player`
VALUES ('85140178', 'Ousmane Dembélé', 25, 'M/AM (RL)', '178 cm', '67 kg', '0', 0, 0, NULL, 'France');
INSERT INTO `player`
VALUES ('85140284', 'Fodé Ballo-Touré', 25, 'D/WB/M (L)', '182 cm', '70 kg', '2(0)', 0, 0, 6.65, 'Senegal');
INSERT INTO `player`
VALUES ('85140301', 'Christopher Nkunku', 25, 'M/AM (RLC), ST (C)', '175 cm', '72 kg', '7(0)', 1, 1, 6.93, 'France');
INSERT INTO `player`
VALUES ('85141999', 'Presnel Kimpembe', 27, 'D (C)', '183 cm', '77 kg', '6(0)', 0, 0, 6.87, 'France');
INSERT INTO `player`
VALUES ('859612', 'Georginio Wijnaldum', 32, 'DM, M (C), AM (LC)', '175 cm', '74 kg', '5(1)', 0, 0, 6.98,
        'Netherlands');
INSERT INTO `player`
VALUES ('86009323', 'Ángel Mena', 34, 'M (R), AM (RL)', '170 cm', '70 kg', '3(1)', 0, 1, 6.75, 'Ecuador');
INSERT INTO `player`
VALUES ('86011987', 'Robert Arboleda', 31, 'D (C)', '187 cm', '83 kg', '3(0)', 0, 0, 6.57, 'Ecuador');
INSERT INTO `player`
VALUES ('86012153', 'Enner Valencia', 33, 'AM (RL), ST (C)', '177 cm', '74 kg', '3(1)', 2, 0, 6.72, 'Ecuador');
INSERT INTO `player`
VALUES ('86029647', 'Carlos Gruezo', 27, 'DM, M (C)', '171 cm', '67 kg', '0(2)', 0, 0, 6.55, 'Ecuador');
INSERT INTO `player`
VALUES ('86029992', 'Junior Sornoza', 28, 'M (C), AM (RC), ST (C)', '169 cm', '65 kg', '4(0)', 1, 0, 7, 'Ecuador');
INSERT INTO `player`
VALUES ('86035420', 'Michael Estrada', 26, 'AM (L), ST (C)', '187 cm', '86 kg', '2(1)', 0, 0, 6.57, 'Ecuador');
INSERT INTO `player`
VALUES ('86043784', 'Bryan Angulo', 27, 'ST (C)', '183 cm', '70 kg', '0', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86045711', 'Jordy Caicedo', 25, 'AM (R), ST (C)', '185 cm', '82 kg', '0', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86045976', 'Pervis Estupiñán', 24, 'D/WB/M (L)', '175 cm', '73 kg', '3(0)', 0, 0, 6.93, 'Ecuador');
INSERT INTO `player`
VALUES ('86050956', 'Pedro Ortiz', 32, 'GK', '187 cm', '70 kg', '0', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86053825', 'Byron Castillo', 24, 'D/WB/M/AM (R)', '171 cm', '61 kg', '3(0)', 0, 0, 6.53, 'Ecuador');
INSERT INTO `player`
VALUES ('86057914', 'Félix Torres', 25, 'D (C)', '187 cm', '80 kg', '1(1)', 0, 0, 6.5, 'Ecuador');
INSERT INTO `player`
VALUES ('86059015', 'Joao Rojas', 25, 'M (L), AM (RL), ST (C)', '172 cm', '69 kg', '0(1)', 0, 0, 6.7, 'Ecuador');
INSERT INTO `player`
VALUES ('86060139', 'José Cifuentes', 23, 'DM, M (C)', '175 cm', '72 kg', '0(3)', 0, 0, 6.67, 'Ecuador');
INSERT INTO `player`
VALUES ('86065934', 'Leonardo Campana', 22, 'ST (C)', '188 cm', '82 kg', '0', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86066842', 'Alejandro Cabeza', 25, 'M/AM (R), ST (C)', '184 cm', '81 kg', '2(1)', 0, 0, 6.75, 'Ecuador');
INSERT INTO `player`
VALUES ('86066843', 'Moisés Ramírez', 22, 'GK', '186 cm', '75 kg', '0', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86066845', 'Ángelo Preciado', 24, 'D/WB/M (R)', '173 cm', '74 kg', '0(1)', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86066846', 'Gonzalo Plata', 22, 'AM (RLC), ST (C)', '178 cm', '66 kg', '0', 0, 0, NULL, 'Ecuador');
INSERT INTO `player`
VALUES ('86066853', 'Piero Hincapié', 20, 'D (LC)', '184 cm', '75 kg', '3(1)', 0, 0, 6.47, 'Ecuador');
INSERT INTO `player`
VALUES ('86078360', 'Moisés Caicedo', 21, 'DM, M (C)', '178 cm', '73 kg', '4(0)', 1, 0, 7.07, 'Ecuador');
INSERT INTO `player`
VALUES ('8718372', 'Manuel Neuer', 36, 'GK', '193 cm', '92 kg', '5(0)', 0, 0, 7.42, 'Germany');
INSERT INTO `player`
VALUES ('88026764', 'Gianni Stensness', 23, 'D (C), DM, M (C)', '185 cm', '82 kg', '2(0)', 0, 0, 6.3, 'Australia');
INSERT INTO `player`
VALUES ('8826848', 'Diego Godín', 36, 'D (C)', '187 cm', '78 kg', '1(0)', 0, 0, 6.3, 'Uruguay');
INSERT INTO `player`
VALUES ('8826969', 'Keylor Navas', 36, 'GK', '185 cm', '80 kg', '3(0)', 0, 0, 6.33, 'Costa Rica');
INSERT INTO `player`
VALUES ('8833553', 'Cássio', 35, 'GK', '195 cm', '92 kg', '0', 0, 0, NULL, 'Brazil');
INSERT INTO `player`
VALUES ('89038587', 'Kieffer Moore', 30, 'ST (C)', '196 cm', '83 kg', '0', 0, 0, NULL, 'Wales');
INSERT INTO `player`
VALUES ('89056845', 'Ferran Torres', 22, 'M (R), AM (RL), ST (C)', '184 cm', '77 kg', '3(1)', 1, 1, 6.88, 'Spain');
INSERT INTO `player`
VALUES ('89063073', 'Kim Min-Jae', 26, 'D (C)', '190 cm', '88 kg', '4(0)', 1, 0, 7.07, 'South Korea');
INSERT INTO `player`
VALUES ('89063107', 'Iliman N\'Diaye', 22, 'AM (RLC), ST (C)', '175 cm', '69 kg', '2(1)', 0, 0, 6.63, 'Senegal');
INSERT INTO `player`
VALUES ('91003875', 'İlkay Gündogan', 32, 'DM, M/AM (C)', '180 cm', '80 kg', '1(6)', 0, 0, 6.95, 'Germany');
INSERT INTO `player`
VALUES ('91014650', 'Kevin Volland', 30, 'M (R), AM (RC), ST (C)', '179 cm', '85 kg', '0', 0, 0, NULL, 'Germany');
INSERT INTO `player`
VALUES ('91104807', 'Leon Goretzka', 27, 'DM, M/AM (C)', '189 cm', '82 kg', '5(1)', 0, 0, 7.05, 'Germany');
INSERT INTO `player`
VALUES ('91107360', 'Niklas Süle', 27, 'D (RC)', '195 cm', '99 kg', '4(0)', 0, 0, 7.3, 'Germany');
INSERT INTO `player`
VALUES ('91119700', 'Jonathan Tah', 26, 'D (C)', '195 cm', '94 kg', '2(0)', 0, 0, 7.2, 'Germany');
INSERT INTO `player`
VALUES ('91123789', 'Michael Ngadeu-Ngadjui', 32, 'D (C), DM', '190 cm', '87 kg', '1(0)', 0, 0, 6.4, 'Cameroon');
INSERT INTO `player`
VALUES ('91124144', 'Julian Weigl', 27, 'DM, M (C)', '186 cm', '80 kg', '4(2)', 1, 0, 6.98, 'Germany');
INSERT INTO `player`
VALUES ('91134708', 'Lukas Klostermann', 26, 'D (RLC), WB (R)', '187 cm', '87 kg', '0(2)', 0, 0, NULL, 'Germany');
INSERT INTO `player`
VALUES ('91138280', 'Leroy Sané', 26, 'M (RL), AM (RLC)', '183 cm', '80 kg', '0(4)', 0, 0, 6.7, 'Germany');
INSERT INTO `player`
VALUES ('91151081', 'Kai Havertz', 23, 'M/AM (C), ST (C)', '186 cm', '77 kg', '4(3)', 0, 0, 6.7, 'Germany');
INSERT INTO `player`
VALUES ('91155475', 'Mohamed Dräger', 26, 'D/WB/M (R)', '178 cm', '72 kg', '2(0)', 0, 0, 6.6, 'Tunisia');
INSERT INTO `player`
VALUES ('91156033', 'Zack Steffen', 27, 'GK', '191 cm', '86 kg', '4(0)', 0, 0, 6.88, 'United States');
INSERT INTO `player`
VALUES ('91175517', 'David Raum', 24, 'D/WB/M (L)', '180 cm', '75 kg', '6(0)', 0, 2, 7.08, 'Germany');
INSERT INTO `player`
VALUES ('91187679', 'Malik Tillman', 20, 'M (C), AM (RLC), ST (C)', '187 cm', '71 kg', '0', 0, 0, NULL,
        'United States');
INSERT INTO `player`
VALUES ('91187682', 'Woo-yeong Jeong', 23, 'M/AM (RL)', '179 cm', '70 kg', '2(0)', 0, 0, 6.4, 'South Korea');
INSERT INTO `player`
VALUES ('91187786', 'Omar Rekik', 21, 'D (C), DM', '186 cm', '75 kg', '1(1)', 0, 0, 6.6, 'Tunisia');
INSERT INTO `player`
VALUES ('91190673', 'Josip Stanišić', 22, 'D (RLC), WB (R)', '187 cm', '77 kg', '4(0)', 1, 0, 6.88, 'Croatia');
INSERT INTO `player`
VALUES ('92019045', 'Sonny Kittel', 29, 'M/AM (RLC)', '179 cm', '71 kg', '0', 0, 0, NULL, 'Poland');
INSERT INTO `player`
VALUES ('92020288', 'Heung-Min Son', 30, 'M/AM (L), ST (C)', '183 cm', '77 kg', '4(0)', 1, 0, 6.4, 'South Korea');
INSERT INTO `player`
VALUES ('92021718', 'Emre Can', 28, 'D (RC), DM, M (C)', '186 cm', '86 kg', '0(4)', 1, 0, 7.13, 'Germany');
INSERT INTO `player`
VALUES ('92023410', 'Antonio Rüdiger', 29, 'D (C)', '190 cm', '85 kg', '7(0)', 0, 0, 7.23, 'Germany');
INSERT INTO `player`
VALUES ('92025867', 'Rafael Czichos', 32, 'D (LC), WB (L)', '186 cm', '93 kg', '3(0)', 0, 0, 6.3, 'Saudi Arabia');
INSERT INTO `player`
VALUES ('92039023', 'Joshua Kimmich', 27, 'D/WB (R), DM, M (C)', '177 cm', '74 kg', '7(0)', 0, 3, 7.21, 'Germany');
INSERT INTO `player`
VALUES ('92051583', 'Timo Werner', 26, 'M/AM (L), ST (C)', '180 cm', '75 kg', '1(0)', 0, 0, 6.1, 'Germany');
INSERT INTO `player`
VALUES ('92056834', 'Mark Flekken', 29, 'GK', '194 cm', '82 kg', '0', 0, 0, NULL, 'Netherlands');
INSERT INTO `player`
VALUES ('92060753', 'Cristian Ramírez', 28, 'D (RL), WB (L)', '172 cm', '76 kg', '2(2)', 0, 1, 6.67, 'Ecuador');
INSERT INTO `player`
VALUES ('92074020', 'Christian Pulisic', 24, 'M (RL), AM (RLC)', '173 cm', '73 kg', '3(0)', 1, 0, 6.93,
        'United States');
INSERT INTO `player`
VALUES ('92079338', 'Ridle Baku', 24, 'D/WB (R), M (RC), AM (R)', '176 cm', '72 kg', '4(2)', 0, 1, 6.98, 'Germany');
INSERT INTO `player`
VALUES ('92088306', 'Nico Schlotterbeck', 23, 'D (LC)', '191 cm', '89 kg', '4(1)', 0, 0, 7.1, 'Germany');
INSERT INTO `player`
VALUES ('92092175', 'Josh Sargent', 22, 'AM (RL), ST (C)', '185 cm', '80 kg', '1(0)', 0, 0, 6.6, 'United States');
INSERT INTO `player`
VALUES ('93019439', 'Majeed Waris', 31, 'AM (L), ST (C)', '172 cm', '71 kg', '0', 0, 0, NULL, 'Ghana');
INSERT INTO `player`
VALUES ('93033389', 'Saman Ghoddos', 29, 'M (C), AM (RLC)', '176 cm', '75 kg', '2(0)', 0, 0, 6.3, 'Iran');
INSERT INTO `player`
VALUES ('93034815', 'Daniel Amartey', 28, 'D (RC), DM, M (C)', '186 cm', '79 kg', '2(1)', 0, 0, 6.27, 'Ghana');
INSERT INTO `player`
VALUES ('93059921', 'Ari Lassiter', 28, 'AM (RL), ST (C)', '178 cm', '71 kg', '0', 0, 0, NULL, 'Costa Rica');
INSERT INTO `player`
VALUES ('947424', 'Simon Kjær ', 33, 'D (C)', '190 cm', '86 kg', '3(0)', 0, 0, 6.8, 'Denmark');
INSERT INTO `player`
VALUES ('96008522', 'Paweł Wszołek', 30, 'WB/M/AM (R)', '184 cm', '77 kg', '2(0)', 0, 0, 6.35, 'Poland');
INSERT INTO `player`
VALUES ('96011201', 'Bartosz Bereszyńskier', 30, 'D/WB (R)', '183 cm', '77 kg', '1(2)', 0, 0, 6.5, 'Poland');
INSERT INTO `player`
VALUES ('96026541', 'Arkadiusz Milik', 28, 'ST (C)', '186 cm', '80 kg', '0(1)', 1, 0, 8.2, 'Poland');
INSERT INTO `player`
VALUES ('96029863', 'Jacek Góralski', 30, 'DM, M (C)', '172 cm', '66 kg', '0(1)', 0, 0, NULL, 'Poland');
INSERT INTO `player`
VALUES ('96032464', 'Karol Linetty', 27, 'DM, M/AM (C)', '176 cm', '73 kg', '2(2)', 0, 1, 6.8, 'Poland');
INSERT INTO `player`
VALUES ('96047750', 'Jan Bednarek', 26, 'D (C)', '189 cm', '77 kg', '4(0)', 0, 0, 6.9, 'Poland');
INSERT INTO `player`
VALUES ('96048686', 'Arkadiusz Reca', 27, 'D/WB/M (L)', '187 cm', '81 kg', '2(0)', 0, 0, 6.9, 'Poland');
INSERT INTO `player`
VALUES ('96052559', 'Bartłomiej Drągowski', 25, 'GK', '191 cm', '74 kg', '0', 0, 0, NULL, 'Poland');
INSERT INTO `player`
VALUES ('96054420', 'Krzysztof Piątek', 27, 'ST (C)', '183 cm', '77 kg', '1(0)', 1, 0, 7.4, 'Poland');
INSERT INTO `player`
VALUES ('96055358', 'Adam Buksa', 26, 'AM (L), ST (C)', '191 cm', '78 kg', '0', 0, 0, NULL, 'Poland');
INSERT INTO `player`
VALUES ('96059426', 'Mateusz Wieteska', 25, 'D (C), DM', '187 cm', '77 kg', '1(0)', 0, 0, 6.9, 'Poland');
INSERT INTO `player`
VALUES ('96075512', 'Krystian Bielik', 24, 'D (C), DM, M (C)', '189 cm', '78 kg', '0(1)', 0, 0, 6.9, 'Poland');
INSERT INTO `player`
VALUES ('96086694', 'Tymoteusz Puchacz', 23, 'D/WB/M/AM (L)', '183 cm', '78 kg', '1(1)', 0, 0, 6.75, 'Poland');
INSERT INTO `player`
VALUES ('96088503', 'Sebastian Szymańskier', 23, 'M (C), AM (RLC)', '174 cm', '59 kg', '2(0)', 0, 0, 6.75, 'Poland');
INSERT INTO `player`
VALUES ('96102946', 'Jakub Kiwior', 22, 'D (LC), WB (L), DM', '188 cm', '78 kg', '2(0)', 0, 0, 7.05, 'Poland');
INSERT INTO `player`
VALUES ('96111859', 'Patryk Szysz', 24, 'M/AM (RL), ST (C)', '177 cm', '70 kg', '0(4)', 0, 1, 6.75, 'Poland');
INSERT INTO `player`
VALUES ('978694', 'Atiba Hutchinson', 39, 'DM, M (C)', '187 cm', '83 kg', '2(0)', 0, 0, 6.6, 'Canada');
INSERT INTO `player`
VALUES ('98003635', 'Ricardo Rodríguez', 30, 'D (LC), WB (L)', '182 cm', '77 kg', '2(0)', 0, 0, 6.5, 'Switzerland');
INSERT INTO `player`
VALUES ('98003821', 'Granit Xhaka', 30, 'DM, M (C)', '185 cm', '82 kg', '2(0)', 0, 0, 6.35, 'Switzerland');
INSERT INTO `player`
VALUES ('98003827', 'Xherdan Shaqiri', 31, 'AM (RLC)', '169 cm', '72 kg', '3(0)', 2, 1, 7.37, 'Switzerland');
INSERT INTO `player`
VALUES ('98007212', 'Fabian Schär', 31, 'D (C)', '188 cm', '84 kg', '1(1)', 0, 0, 6.1, 'Switzerland');
INSERT INTO `player`
VALUES ('98010781', 'Silvan Widmer', 29, 'D (RC), WB (R)', '183 cm', '79 kg', '3(0)', 0, 1, 7.07, 'Switzerland');
INSERT INTO `player`
VALUES ('98029078', 'Renato Steffen', 31, 'WB (L), M/AM (RL)', '170 cm', '65 kg', '0', 0, 0, NULL, 'Switzerland');
INSERT INTO `player`
VALUES ('98029123', 'Seny Dieng', 28, 'GK', '193 cm', '90 kg', '0', 0, 0, NULL, 'Senegal');
INSERT INTO `player`
VALUES ('98029336', 'Kevin Mbabu', 27, 'D/WB (R)', '184 cm', '80 kg', '0(1)', 0, 0, 6.8, 'Switzerland');
INSERT INTO `player`
VALUES ('98029385', 'Breel Embolo', 25, 'M (R), AM (RC), ST (C)', '187 cm', '88 kg', '2(0)', 1, 1, 7.25, 'Switzerland');
INSERT INTO `player`
VALUES ('98029947', 'Albian Ajeti', 25, 'ST (C)', '183 cm', '78 kg', '0', 0, 0, NULL, 'Switzerland');
INSERT INTO `player`
VALUES ('98030084', 'Edimilson Fernandes', 26, 'D (C), WB (R), DM, M (LC)', '187 cm', '77 kg', '0(3)', 0, 1, 6.9,
        'Switzerland');
INSERT INTO `player`
VALUES ('98031331', 'Manuel Akanji', 27, 'D (C)', '187 cm', '91 kg', '3(0)', 0, 0, 7.17, 'Switzerland');
INSERT INTO `player`
VALUES ('98033057', 'Nico Elvedi', 26, 'D (RLC)', '189 cm', '84 kg', '3(0)', 0, 0, 6.53, 'Switzerland');
INSERT INTO `player`
VALUES ('98033113', 'Jonas Omlin', 28, 'GK', '189 cm', '80 kg', '0', 0, 0, NULL, 'Switzerland');
INSERT INTO `player`
VALUES ('98033448', 'Christian Fassnacht', 29, 'M/AM (RL), ST (C)', '185 cm', '77 kg', '0(2)', 2, 0, 7.5,
        'Switzerland');
INSERT INTO `player`
VALUES ('98033710', 'Eray Cömert', 24, 'D (C)', '183 cm', '80 kg', '0', 0, 0, NULL, 'Switzerland');
INSERT INTO `player`
VALUES ('98033713', 'Charles Pickel', 25, 'D (C), DM, M (C)', '184 cm', '76 kg', '2(1)', 0, 0, 6.6, 'Switzerland');
INSERT INTO `player`
VALUES ('98034373', 'Djibril Sow', 25, 'DM, M (C)', '184 cm', '76 kg', '3(0)', 0, 1, 7, 'Switzerland');
INSERT INTO `player`
VALUES ('98034601', 'Denis Zakaria', 26, 'DM, M (C)', '191 cm', '81 kg', '2(0)', 0, 0, 6.5, 'Switzerland');
INSERT INTO `player`
VALUES ('98034815', 'Andi Zeqiri', 23, 'M (L), AM (RL), ST (C)', '185 cm', '81 kg', '0(2)', 0, 0, 6.8, 'Switzerland');
INSERT INTO `player`
VALUES ('98037853', 'Sandro Lauper', 26, 'D (C), DM, M (C)', '186 cm', '73 kg', '0(1)', 0, 0, 6.7, 'Switzerland');
INSERT INTO `player`
VALUES ('98040226', 'Noah Okafor', 22, 'M (L), AM (RL)', '185 cm', '80 kg', '3(0)', 1, 0, 6.6, 'Switzerland');
INSERT INTO `player`
VALUES ('98040383', 'Gregor Kobel', 25, 'GK', '195 cm', '88 kg', '0', 0, 0, NULL, 'Switzerland');
INSERT INTO `player`
VALUES ('98041219', 'Filip Ugrinić', 23, 'M/AM (C)', '184 cm', '88 kg', '0', 0, 0, NULL, 'Switzerland');


INSERT INTO team (id, name, code, appearances, titles, fifaRanking, confederation, groupId) VALUES
  -- Africa
  (1, 'GHANA', 'gha', 4, 0, 60, 'AFRICA', 'H'),
  (2, 'SENEGAL', 'sen', 3 , 0, 20, 'AFRICA', 'A'),
  (3, 'TUNISIA', 'tun', 6 , 0, 35, 'AFRICA', 'D'),
  (4, 'MOROCCO', 'mor', 6 , 0, 24, 'AFRICA','F'),
  (5, 'CAMEROON', 'cam', 8, 0, 37, 'AFRICA', 'G'),
  -- Asia
  (6, 'QATAR', 'qat', 1, 0, 50, 'ASIA', 'A'),
  (7, 'IR IRAN', 'irn', 6 , 0, 21, 'ASIA','B'),
  (8, 'KOREA REPUBLIC', 'kor', 11 , 0, 29, 'ASIA', 'H'),
  (9, 'JAPAN', 'jpn', 7 , 0, 23, 'ASIA', 'E'),
  (10, 'SAUDI ARABIA', 'ksa', 6 , 0, 49, 'ASIA', 'C'),
  (11, 'AUSTRALIA', 'aus', 6, 0, 42, 'ASIA', 'D'),
  -- Europe
  (12, 'GERMANY', 'ger', 20 , 4, 12, 'EUROPE', 'E'),
  (13, 'DENMARK', 'den', 6, 0, 11, 'EUROPE', 'D'),
  (14, 'FRANCE', 'fra', 16 , 2, 3, 'EUROPE', 'D'),
  (15, 'BELGIUM', 'bel', 14 , 0, 2, 'EUROPE', 'F'),
  (16, 'CROATIA', 'cro', 6 , 0, 16, 'EUROPE', 'F'),
  (17, 'SPAIN', 'esp', 16 , 1, 7, 'EUROPE','E'),
  (18, 'SERBIA', 'srb', 4 , 0, 25, 'EUROPE', 'G'),
  (19, 'ENGLAND', 'enl', 16, 1, 5, 'EUROPE', 'B'),
  (20, 'SWITZERLAND', 'sui', 12 , 0, 14, 'EUROPE', 'G'),
  (21, 'NETHERLANDS', 'net', 11, 0, 10, 'EUROPE', 'A'),
  (22, 'PORTUGAL', 'por', 8 , 0, 8, 'EUROPE','H'),
  (23, 'POLAND', 'pol', 9 , 0, 26, 'EUROPE', 'C'),
  (24, 'WALES', 'wal', 2, 0, 18, 'EUROPE', 'B'),
  -- North, Central America and Caribbean
  (25, 'CANADA', 'can', 2, 0, 38, 'NORTH_CENTRAL_AMERICA_AND_CARIBBEAN', 'F'),
  (26, 'USA', 'usa', 11, 0, 15, 'NORTH_CENTRAL_AMERICA_AND_CARIBBEAN', 'B'),
  (27, 'MEXICO', 'mex', 17 , 0, 9, 'NORTH_CENTRAL_AMERICA_AND_CARIBBEAN', 'C'),
  (28, 'COSTA RICA', 'crc', 6 , 0, 31, 'NORTH_CENTRAL_AMERICA_AND_CARIBBEAN', 'E'),
  -- South America
  (29, 'BRAZIL', 'bra', 22 , 5, 1, 'SOUTH_AMERICA', 'G'),
  (30, 'ARGENTINA', 'arg', 18 , 2, 4, 'SOUTH_AMERICA', 'C'),
  (31, 'ECUADOR', 'ecu', 4, 0, 46, 'SOUTH_AMERICA', 'A'),
  (32, 'URUGUAY', 'uru', 14 , 2, 13, 'SOUTH_AMERICA', 'H');

  INSERT INTO group_match (matchId, homeTeam, awayTeam, groupId) VALUES
  (1, 6, 31, 'A'),
  (2, 2, 21, 'A'),
  (3, 19, 7, 'B'),
  (4, 26, 24, 'B'),
  (5, 14, 11, 'D'),
  (6, 13, 3, 'D'),
  (7, 27, 23, 'C'),
  (8, 30, 10, 'C'),
  (9, 15, 25, 'F'),
  (10, 17, 28, 'E'),
  (11, 12, 9, 'E'),
  (12, 4, 16, 'F'),
  (13, 20, 5, 'G'),
  (14, 32, 8, 'H'),
  (15, 22, 1, 'H'),
  (16, 29, 18, 'G'),
  (17, 24, 7, 'B'),
  (18, 6, 2, 'A'),
  (19, 21, 31, 'A'),
  (20, 19, 26, 'B'),
  (21, 3, 11, 'D'),
  (22, 23, 10, 'C'),
  (23, 14, 13, 'D'),
  (24, 30, 27, 'C'),
  (25, 9, 28, 'E'),
  (26, 15, 4, 'F'),
  (27, 16, 25, 'F'),
  (28, 17, 12, 'E'),
  (29, 5, 18, 'G'),
  (30, 8, 1, 'H'),
  (31, 29, 20, 'G'),
  (32, 23, 32, 'H'),
  (33, 24, 19, 'B'),
  (34, 7, 26, 'B'),
  (35, 31, 2, 'A'),
  (36, 21, 6, 'A'),
  (37, 11, 13, 'D'),
  (38, 3, 14, 'D'),
  (39, 23, 30, 'C'),
  (40, 10, 27, 'C'),
  (41, 16, 15, 'F'),
  (42, 25, 4, 'F'),
  (43, 9, 17, 'E'),
  (44, 28, 12, 'E'),
  (45, 1, 32, 'H'),
  (46, 8, 22, 'H'),
  (47, 18, 20, 'G'),
  (48, 5, 29, 'G');

  INSERT INTO match_result (matchId, homeTeam, awayTeam, homeTeamGoals, awayTeamGoals) VALUES
  (1, 6, 31, 0, 2),
  (2, 2, 21, 0, 2),
  (3, 19, 7, 6, 2),
  (4, 26, 24, 1, 1),
  (5, 14, 11, 4, 1),
  (6, 13, 3, 0, 0),
  (7, 27, 23, 0, 0),
  (8, 30, 10, 1, 2),
  (9, 15, 25, 1, 0),
  (10, 17, 28, 7, 0),
  (11, 12, 9, 1, 2),
  (12, 4, 16, 0, 0),
  (13, 20, 5, 1, 0),
  (14, 32, 8, 0, 0),
  (15, 22, 1, 3, 2),
  (16, 29, 18, 2, 0),
  (17, 24, 7, 0, 2),
  (18, 6, 2, 1, 3),
  (19, 21, 31, 1, 1),
  (20, 19, 26, 0, 0),
  (21, 3, 11, 0, 1),
  (22, 23, 10, 2, 0),
  (23, 14, 13, 2, 1),
  (24, 30, 27, 2, 0),
  (25, 9, 28, 0, 1),
  (26, 15, 4, 0, 2),
  (27, 16, 25, 4, 1),
  (28, 17, 12, 1, 1),
  (29, 5, 18, 3, 3),
  (30, 8, 1, 2, 3),
  (31, 29, 20, 1, 0),
  (32, 23, 32, 2, 0),
  (33, 24, 19, 0, 3),
  (34, 7, 26, 0, 1),
  (35, 31, 2, 1, 2),
  (36, 21, 6, 2, 0),
  (37, 11, 13, 1, 0),
  (38, 3, 14, 1, 0),
  (39, 23, 30, 1, 2),
  (40, 10, 27, 0, 2),
  (41, 16, 15, 0, 0),
  (42, 25, 4, 1, 2),
  (43, 9, 17, 2, 1),
  (44, 28, 12, 2, 4),
  (45, 1, 32, 0, 2),
  (46, 8, 22, 2, 1),
  (47, 18, 20, 2, 3),
  (48, 5, 29, 1, 0);

INSERT INTO knockout_match(matchId, matchCode, stageId, homeTeamCode, awayTeamCode) VALUES
  (49, 'ROS1', 'ROUND_OF_16', 'WINNER_GROUP_C', 'RUNNER_UP_GROUP_D'),
  (50, 'ROS2', 'ROUND_OF_16', 'WINNER_GROUP_A', 'RUNNER_UP_GROUP_B' ),
  (51, 'ROS3', 'ROUND_OF_16', 'WINNER_GROUP_B', 'RUNNER_UP_GROUP_A'),
  (52, 'ROS4', 'ROUND_OF_16', 'WINNER_GROUP_D', 'RUNNER_UP_GROUP_C'),
  (53, 'ROS5', 'ROUND_OF_16', 'WINNER_GROUP_E', 'RUNNER_UP_GROUP_F'),
  (54, 'ROS6', 'ROUND_OF_16', 'WINNER_GROUP_G', 'RUNNER_UP_GROUP_H'),
  (55, 'ROS7', 'ROUND_OF_16', 'WINNER_GROUP_F', 'RUNNER_UP_GROUP_E'),
  (56, 'ROS8', 'ROUND_OF_16', 'WINNER_GROUP_H', 'RUNNER_UP_GROUP_G'),
  (57, 'QF1', 'QUARTER_FINAL','WINNER_ROS1','WINNER_ROS2'),
  (58, 'QF2', 'QUARTER_FINAL','WINNER_ROS5','WINNER_ROS6'),
  (59, 'QF3', 'QUARTER_FINAL','WINNER_ROS3','WINNER_ROS4'),
  (60, 'QF4', 'QUARTER_FINAL','WINNER_ROS7','WINNER_ROS8'),
  (61, 'SF1', 'SEMI_FINAL','WINNER_QF1','WINNER_QF2'),
  (62, 'SF2', 'SEMI_FINAL', 'WINNER_QF3','WINNER_QF4'),
  (63, 'TP', 'THIRD_PLACE','LOSER_SF1','LOSER_SF2'),
  (64, 'F', 'FINAL', 'WINNER_SF1','WINNER_SF2');


insert into account (id, password, email) values (1,'1', '1@test.com');