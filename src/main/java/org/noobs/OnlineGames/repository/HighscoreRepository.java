package org.noobs.OnlineGames.repository;

import java.util.List;
import org.noobs.OnlineGames.entity.Highscore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HighscoreRepository extends JpaRepository<Highscore, Long> {
    
    @Query("select highscore from highscores highscore "
            + "where highscore.user.id = :id ")
    List<Highscore> findByUser(@Param("id") long id);
    
    @Query("select highscore from highscores highscore "
            + "where highscore.game.id = :id ")
    List<Highscore> findByGame(@Param("id") long id);
}
