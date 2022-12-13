package com.sdsc5003.worldcup.web.api;

import com.sdsc5003.worldcup.ranking.RankingService;
import com.sdsc5003.worldcup.web.model.Player;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/ranking")
public class RankingController {

    @Autowired
    private RankingService rankingService;

    @RequestMapping("/")
    public List<Player> getLeaderboard(@RequestParam(name = "filter") String filter) {
        return rankingService.getLeaderboard(filter);
    }
}
