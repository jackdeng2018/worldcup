package com.sdsc5003.worldcup.knockout;

import com.sdsc5003.worldcup.team.Team;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@ToString
@EqualsAndHashCode
@Table(name = "knockout_team")
public class KnockoutTeam implements Serializable, KnockoutTeamInterface {

    @Id
    private Long matchId;

    @ManyToOne
    @JoinColumn(name = "homeTeam", referencedColumnName = "id")
    private Team homeTeam;

    @ManyToOne
    @JoinColumn(name = "awayTeam", referencedColumnName = "id")
    private Team awayTeam;

}
