package com.sdsc5003.worldcup.group;

import com.sdsc5003.worldcup.match.GroupMatch;
import com.sdsc5003.worldcup.match.GroupMatchRepository;
import com.sdsc5003.worldcup.match.Match;
import com.sdsc5003.worldcup.team.TeamRepository;
import com.sdsc5003.worldcup.results.ResultInterface;
import com.sdsc5003.worldcup.team.Group;
import com.sdsc5003.worldcup.team.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class GroupService {

    @Autowired
    private GroupMatchRepository groupMatchRepository;

    @Autowired
    private TeamRepository teamRepository;

    public <T extends ResultInterface> boolean isGroupFinished(Group groupId, List<T> matches) {
        List<GroupMatch> groupMatches = groupMatchRepository.findByGroupId(groupId);
        List<Long> matchesInGroup = groupMatches.stream().map(Match::getMatchId).collect(Collectors.toList());
        return matches.stream().map(ResultInterface::getMatchId).collect(Collectors.toList()).containsAll(matchesInGroup);
    }

    public <T extends ResultInterface> GroupStanding getGroupStanding(Group groupId, List<T> results) {
        List<GroupMatch> groupMatches = groupMatchRepository.findByGroupId(groupId);
        List<Team> teams = teamRepository.findByGroupId(groupId);
        return new GroupStanding(groupId, groupMatches, results, teams);
    }

    public Group getGroupIdByMatchId(Long matchId) {
        GroupMatch groupMatch = groupMatchRepository.findOne(matchId);
        return groupMatch.getGroupId();
    }

    public Team findTeamByCode(String code) {
        return teamRepository.findByCode(code);
    }

    public List<Team> getTeamsByGroup(Group groupId){
        return teamRepository.findByGroupId(groupId);
    }

    @Cacheable("allGroupMatchesCache")
    public List<GroupMatch> getAllGroupMatches() {
        return groupMatchRepository.findAll();
    }
}
