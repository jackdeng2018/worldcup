package com.sdsc5003.worldcup.group;

import com.sdsc5003.worldcup.match.GroupMatch;
import com.sdsc5003.worldcup.results.ResultInterface;
import com.sdsc5003.worldcup.team.Group;
import com.sdsc5003.worldcup.team.Team;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;

import java.util.List;
import java.util.TreeSet;

@Getter
public class GroupStanding {

    @JsonProperty(value = "groupId")
    private Group groupId;

    @JsonProperty(value = "teamsInGroup")
    private TreeSet<TeamInGroup<? super ResultInterface>> teamsInGroup;

    @SuppressWarnings("unchecked")
    <T extends ResultInterface> GroupStanding(Group group, List<GroupMatch> matches, List<T> results, List<Team> teams) {
        this.groupId = group;
        this.teamsInGroup = new TreeSet<>(TeamInGroup.comparator);
        for (Team team : teams) {
            TeamInGroup<? super ResultInterface> teamInGroup = new TeamInGroup(team, matches).addMatchResults(results);
            teamsInGroup.add(teamInGroup);
        }
    }

}
