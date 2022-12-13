package com.sdsc5003.worldcup.knockout;

import com.sdsc5003.worldcup.team.Team;

public interface KnockoutTeamInterface {

    Long getMatchId();

    Team getHomeTeam();

    Team getAwayTeam();

}
