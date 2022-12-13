package com.sdsc5003.worldcup.match;


import com.sdsc5003.worldcup.BeanUtil;
import com.sdsc5003.worldcup.results.MatchResult;

import javax.persistence.PostPersist;
import javax.persistence.PostUpdate;

public class MatchResultEntityListener {


    @PostPersist
    @PostUpdate
    public void matchFinished(MatchResult matchResult) {
        MatchService matchService = BeanUtil.getBean(MatchService.class);
        Match match = matchService.getMatchById(matchResult.getMatchId());
        matchService.onMatchFinish(match);
    }
}
