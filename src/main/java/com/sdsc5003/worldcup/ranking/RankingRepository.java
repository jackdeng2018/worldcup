package com.sdsc5003.worldcup.ranking;

import com.sdsc5003.worldcup.web.model.Player;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RankingRepository extends JpaRepository<Player, Long> {

    //@Query(value = "SELECT distinct date FROM ranking order by date desc", nativeQuery = true)
//    @Query("SELECT DISTINCT date FROM Ranking ORDER order by date desc")
//    List<Timestamp> findDistinctDates();

//    List<Ranking> findAllByDate(Timestamp date);
//    @Query("SELECT Name,Goal from player ORDER order by Goal desc")

    List<Player> findAll();
}
