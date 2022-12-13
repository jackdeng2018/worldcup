package com.sdsc5003.worldcup.results;

import com.sdsc5003.worldcup.match.Stage;
import com.sdsc5003.worldcup.team.KnockoutTeamCode;
import com.sdsc5003.worldcup.team.Team;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QualifierRepository extends JpaRepository<Qualifier, KnockoutTeamCode> {

    Qualifier findByTeamAndStageId(Team team, Stage stageId);

    List<Qualifier> findByStageId(Stage stageId);
}
