package com.sdsc5003.worldcup.results;

import com.sdsc5003.worldcup.match.Stage;
import com.sdsc5003.worldcup.team.KnockoutTeamCode;
import com.sdsc5003.worldcup.team.Team;
import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@ToString
@EqualsAndHashCode
@Table(name = "qualifier")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Qualifier {

    @Enumerated(EnumType.STRING)
    @Id
    private KnockoutTeamCode knockoutTeamCode;

    @ManyToOne
    @JoinColumn(name = "teamId", referencedColumnName = "id")
    private Team team;

    @Enumerated(EnumType.STRING)
    private Stage stageId;


    public Stage getStageId() {
        if (stageId == null) {
            stageId = knockoutTeamCode.getStageId();
        }
        return stageId;
    }
}
