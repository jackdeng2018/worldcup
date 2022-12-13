package com.sdsc5003.worldcup.web.validators;

import com.sdsc5003.worldcup.match.Match;
import com.sdsc5003.worldcup.match.MatchService;
import com.sdsc5003.worldcup.web.model.MatchResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component("MatchResultDataValidator")
public class MatchResultDataValidator implements Validator {

    private final MatchService matchService;

    @Autowired
    public MatchResultDataValidator(MatchService matchService) {
        this.matchService = matchService;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return MatchResultData.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        MatchResultData matchResultData = (MatchResultData) target;

        Match match = matchService.getMatchById(matchResultData.getMatchId());

        if (match == null) {
            errors.rejectValue("matchId", "", "Match not found");
        } else {
            matchResultData.validate(errors, match.getStageId());
        }
    }
}
