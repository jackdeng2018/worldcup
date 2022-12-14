package com.sdsc5003.worldcup.web.api;

import com.sdsc5003.worldcup.group.GroupService;
import com.sdsc5003.worldcup.group.GroupStanding;
import com.sdsc5003.worldcup.team.Group;
import com.sdsc5003.worldcup.results.MatchResult;
import com.sdsc5003.worldcup.results.ResultsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/groups")
public class GroupController {

    @Autowired
    private GroupService groupService;

    @Autowired
    private ResultsService resultsService;

    @RequestMapping("/")
    public List<GroupStanding> getAllGroupStanding() {
        List<GroupStanding> list = new ArrayList<>();
        for (Group groupId : Group.values()) {
            List<MatchResult> matchResultList = resultsService.getMatchResultForGroup(groupId);
            GroupStanding groupStanding = groupService.getGroupStanding(groupId, matchResultList);
            list.add(groupStanding);
        }
        return list;
    }

    @RequestMapping("/{groupId}")
    public GroupStanding getGroupStanding(@PathVariable Group groupId) {
        List<MatchResult> matchResultList = resultsService.getMatchResultForGroup(groupId);
        return groupService.getGroupStanding(groupId, matchResultList);
    }

}