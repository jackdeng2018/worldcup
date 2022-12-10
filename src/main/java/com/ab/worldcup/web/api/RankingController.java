package com.ab.worldcup.web.api;

import com.ab.worldcup.team.Team;
import com.ab.worldcup.ranking.RankingService;
import com.ab.worldcup.web.model.Player;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/ranking")
public class RankingController {

    @Autowired
    private RankingService rankingService;

    @RequestMapping("/")
    public List<Player> getLeaderboard(Player player) {
        return rankingService.getLeaderboard(player);
    }
}
