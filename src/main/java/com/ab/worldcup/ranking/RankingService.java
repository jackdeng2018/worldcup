package com.ab.worldcup.ranking;

import com.ab.worldcup.web.model.Player;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class RankingService {
    @Autowired
    private RankingRepository rankingRepository;

    public List<Player> getLeaderboard(Player player) {
        List<Player> allPlayers = rankingRepository.findAll();
        allPlayers = allPlayers.stream()
                .sorted(Comparator.comparing(Player::getGoal).reversed())
                .collect(Collectors.toList());
        if (player != null) {
            if (player.getAssist() != null) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getAssist).reversed())
                        .collect(Collectors.toList());
            }
            if (player.getAge() != null) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getAge))
                        .collect(Collectors.toList());
            }
        }
        return allPlayers.stream().limit(20).collect(Collectors.toList());
    }
}
