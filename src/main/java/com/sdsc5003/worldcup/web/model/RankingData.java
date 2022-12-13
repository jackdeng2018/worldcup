package com.sdsc5003.worldcup.web.model;

import com.sdsc5003.worldcup.account.Account;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class RankingData {

    Account account;

    Integer totalPoints;

    Integer qualifierBetCompletionPercentage;

    Integer groupMatchesBetCompletionPercentage;

    Integer knockoutMatchesBetCompletionPercentage;

    //List<CalculatedUserBet> userBets;

}
