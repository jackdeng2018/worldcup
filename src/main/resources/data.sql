drop table if exists account;
CREATE TABLE account (
  id              SERIAL PRIMARY KEY,
  email           varchar(20),
  password        varchar(20) NOT NULL,
  firstName       varchar(20),
  lastName        varchar(20),
  fullName        varchar(20),
  displayName     varchar(20),
  gender          varchar(20),
  location        varchar(20),
  validatedId     varchar(20),
  profileImageUrl varchar(20),
  providerId      varchar(20) NOT NULL,
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


insert into account (id, password, email, providerId, displayName) values
  (1,'1', '1@gmail.com','googleplus', 'TestItay');