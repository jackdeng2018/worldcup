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


