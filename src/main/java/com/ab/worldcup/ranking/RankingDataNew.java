package com.ab.worldcup.ranking;

import com.ab.worldcup.web.model.Player;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class RankingDataNew {
    List<Player> goalRank;

//    private Timestamp date;
//
//    private Account account;
//
//    private Integer rank;
//
//    private Integer points;
//
//    private Integer prevRank;
//
//    private Integer prevPoints;

}
