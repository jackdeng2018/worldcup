package com.sdsc5003.worldcup.web.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class UserBetData extends MatchResultData {
    private Long betId;
}