package com.sdsc5003.worldcup.web.model;

import com.sdsc5003.worldcup.match.GroupMatch;
import com.sdsc5003.worldcup.match.KnockoutMatch;
import com.sdsc5003.worldcup.match.Stage;
import com.sdsc5003.worldcup.results.Qualifier;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
@Builder
public class MatchesData {

    private List<GroupMatch> firstStage;

    private List<KnockoutMatch> secondStage;

    private Map<Stage, List<Qualifier>> qualifiers;
}
