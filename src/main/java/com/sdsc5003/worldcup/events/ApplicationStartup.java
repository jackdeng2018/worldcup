package com.sdsc5003.worldcup.events;

import com.sdsc5003.worldcup.group.GroupService;
import com.sdsc5003.worldcup.match.GroupMatch;
import com.sdsc5003.worldcup.match.MatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ApplicationStartup implements ApplicationListener<ApplicationReadyEvent> {

    private final GroupService groupService;

    private final MatchService matchService;

    @Autowired
    public ApplicationStartup(GroupService groupService, MatchService matchService) {
        this.groupService = groupService;
        this.matchService = matchService;
    }


    @Override
    public void onApplicationEvent(final ApplicationReadyEvent event) {
        List<GroupMatch> groupMatches = groupService.getAllGroupMatches();
        groupMatches.forEach(matchService::onMatchFinish);
    }
}
