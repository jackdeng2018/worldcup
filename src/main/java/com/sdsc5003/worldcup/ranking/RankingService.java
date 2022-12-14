package com.sdsc5003.worldcup.ranking;

import com.sdsc5003.worldcup.web.model.Player;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class RankingService {
    @Autowired
    private RankingRepository rankingRepository;

    public List<Player> getLeaderboard(String filter) {
        List<Player> allPlayers = rankingRepository.findAll();
        allPlayers = allPlayers.stream()
                .sorted(Comparator.comparing(Player::getGoal).reversed())
                .collect(Collectors.toList());
        if (filter != null) {
            if (filter.equals("assist")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getAssist).reversed())
                        .collect(Collectors.toList());
            }
            if (filter.equals("age")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getAge).reversed())
                        .collect(Collectors.toList());
            }
            if (filter.equals("height")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getHeight).reversed())
                        .collect(Collectors.toList());
            }
            if (filter.equals("position")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getPosition))
                        .collect(Collectors.toList());
            }
            if (filter.equals("name")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getName))
                        .collect(Collectors.toList());
            }
            if (filter.equals("weight")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getWeight).reversed())
                        .collect(Collectors.toList());
            }
            if (filter.equals("nationality")) {
                allPlayers = allPlayers.stream()
                        .sorted(Comparator.comparing(Player::getNationality))
                        .collect(Collectors.toList());
            }
        }
        return allPlayers.stream().limit(30).collect(Collectors.toList());
    }
}
