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

CREATE TABLE team (
  id              SERIAL PRIMARY KEY,
  name            varchar(20) UNIQUE,
  code            varchar(20) UNIQUE,
  fifaRanking     INT,
  appearances     INT,
  titles          INT,
  confederation   varchar(20) NOT NULL,
  groupId         varchar(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE matches (
  matchId         SERIAL PRIMARY KEY,
  kickoff         TIMESTAMP,
  status          varchar(20) NOT NULL DEFAULT 'SCHEDULED'
) ENGINE = InnoDB;

CREATE TABLE group_match (
  matchId         INT PRIMARY KEY,
  homeTeam        INT,
  awayTeam        INT,
  groupId         varchar(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE knockout_match (
  matchId         INT PRIMARY KEY,
  matchCode       varchar(20) NOT NULL UNIQUE,
  stageId         varchar(20) NOT NULL,
  homeTeamCode    varchar(20) NOT NULL,
  awayTeamCode    varchar(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE bet (
  id          SERIAL PRIMARY KEY,
  description varchar(20) NOT NULL,
  type        varchar(20) NOT NULL,
  matchId     INT,
  stageId     varchar(20) NOT NULL,
  lockTime   TIMESTAMP NOT NULL
) ENGINE = InnoDB;

CREATE TABLE knockout_team (
  matchId         INT PRIMARY KEY,
  homeTeam        INT,
  awayTeam        INT
) ENGINE = InnoDB;

CREATE TABLE match_result(
  matchId         INT PRIMARY KEY,
  homeTeam        INT ,
  awayTeam        INT ,
  homeTeamGoals   INT,
  awayTeamGoals   INT,
  matchQualifier  varchar(20)
) ENGINE = InnoDB;

CREATE TABLE user_bet(
  accountId         INT,
  betId             INT,
  homeTeam          INT,
  awayTeam          INT,
  homeTeamGoals     INT,
  awayTeamGoals     INT,
  qualifier         INT,
  knockoutTeamCode  varchar(20),
  PRIMARY KEY(accountId, betId),
  CONSTRAINT no_duplicate_bet UNIQUE (accountId, betId)
) ENGINE = InnoDB;

CREATE TABLE qualifier(
  knockoutTeamCode  varchar(20) PRIMARY KEY,
  teamId            INT,
  stageId           varchar(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE ranking (
  id          SERIAL PRIMARY KEY,
  date        TIMESTAMP,
  accountId   INT,
  points      INT,
  CONSTRAINT no_duplicate_ranking UNIQUE (accountId, date)
) ENGINE = InnoDB;