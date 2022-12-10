package com.ab.worldcup.results;

import com.ab.worldcup.knockout.KnockoutTeam;
import com.ab.worldcup.knockout.KnockoutTeamRepository;
import com.ab.worldcup.match.Stage;
import com.ab.worldcup.team.Group;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResultsService {

    @Autowired
    private MatchResultRepository matchResultRepository;

    @Autowired
    private QualifierRepository qualifierRepository;

    @Autowired
    private KnockoutTeamRepository knockoutTeamRepository;

    private BetCorrectnessTypeEnum isQualifierDetermined(boolean correctQualifier, Stage stage) {
        if (correctQualifier) {
            return BetCorrectnessTypeEnum.True;
        } else {
            List<Qualifier> qualifierForStage = qualifierRepository.findByStageId(stage);
            if (qualifierForStage != null && qualifierForStage.size() == stage.getNumberOfQualifiersForStage()) {
                return BetCorrectnessTypeEnum.False;
            }
            return BetCorrectnessTypeEnum.Not_Yet_Determined;
        }
    }

    @CacheEvict(value = "allMatchResultsCache", allEntries = true)
    public MatchResult save(MatchResult result) {
        return matchResultRepository.save(result);
    }

    public void saveKnockoutTeam(KnockoutTeam knockoutTeam) {
        knockoutTeamRepository.save(knockoutTeam);
    }

    @CacheEvict(value = "allQualifiersCache", allEntries = true)
    public void saveQualifier(Qualifier qualifier) {
        qualifierRepository.save(qualifier);
    }

    public List<MatchResult> getMatchResultForGroup(Group group) {
        return matchResultRepository.findMatchResultByGroup(group.toString());
    }

    @Cacheable("allQualifiersCache")
    public List<Qualifier> getAllQualifiers() {
        return qualifierRepository.findAll();
    }

    @Cacheable("allMatchResultsCache")
    public List<MatchResult> getAllMatchResults() {
        return matchResultRepository.findAll();
    }

    public MatchResult findMatchResultByMatchId(Long matchId) {
        return matchResultRepository.findOne(matchId);
    }
}
