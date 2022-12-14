package com.ab.worldcup.match;

import com.ab.worldcup.results.ResultInterface;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Entity
@Getter
@ToString
@EqualsAndHashCode
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "matches")
public abstract class Match implements Serializable, MatchTeamsInterface {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long matchId;

    protected Timestamp kickoff;

    protected String status;

    @Transient
    private ResultInterface result;

    public abstract Stage getStageId();

    public Match setResult(ResultInterface result) {
        this.result = result;
        return this;
    }

    public String getLabel() {
        return this.toString();
    }

    public boolean isStarted() {
        return LocalDateTime.now().isAfter(getKickoff().toLocalDateTime());
    }
}