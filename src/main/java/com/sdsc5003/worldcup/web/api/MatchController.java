package com.sdsc5003.worldcup.web.api;

import com.sdsc5003.worldcup.group.GroupService;
import com.sdsc5003.worldcup.match.GroupMatch;
import com.sdsc5003.worldcup.match.KnockoutMatch;
import com.sdsc5003.worldcup.match.Match;
import com.sdsc5003.worldcup.match.MatchService;
import com.sdsc5003.worldcup.web.model.MatchResultData;
import com.sdsc5003.worldcup.web.model.MatchesData;
import com.sdsc5003.worldcup.knockout.KnockoutService;
import com.sdsc5003.worldcup.ranking.RankingService;
import com.sdsc5003.worldcup.results.MatchResult;
import com.sdsc5003.worldcup.results.ResultsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/match")
public class MatchController {

    @Autowired
    private MatchService matchService;

    @Autowired
    private ResultsService resultsService;

    @Autowired
    private GroupService groupService;

    @Autowired
    private KnockoutService<MatchResult> knockoutService;

    @Autowired
    private RankingService rankingService;

    @Autowired
    @Qualifier("MatchResultDataValidator")
    private Validator validator;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(validator);
    }

    @ResponseBody
    @RequestMapping(value = "/data")
    public MatchesData getMatchesData() {
        List<MatchResult> allResults = resultsService.getAllMatchResults();
        return matchService.getMatchesData(allResults);
    }

    @ResponseBody
    @RequestMapping(value = "/knockout")
    public List<KnockoutMatch> getAllKnockoutMatch() {
        List<MatchResult> allResults = resultsService.getAllMatchResults();
        return matchService.addResultsToMatches(knockoutService.getAllKnockoutMatches(), allResults);
    }

    @ResponseBody
    @RequestMapping(value = "/groups")
    public List<GroupMatch> getAllGroupMatches() {
        List<MatchResult> allResults = resultsService.getAllMatchResults();
        return matchService.addResultsToMatches(groupService.getAllGroupMatches(), allResults);
    }

    // ~ ===============================  ADMIN ONLY ==========================

//    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @ResponseBody
    @RequestMapping(value = "/{matchId}", method = RequestMethod.POST)
    public Match updateGroupMatches(@PathVariable Long matchId, @RequestBody @Valid MatchResultData matchResultData) {
        Match match = matchService.updateMatchResult(matchId, matchResultData);
        matchService.onMatchFinish(match);
        // trigger ranking creation - this is done async
//        rankingService.createRankingAsync(LocalDateTime.now());

        return match;
    }
}
