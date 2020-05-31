package org.noobs.OnlineGames.repository;

import java.util.List;
import org.noobs.OnlineGames.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface GameRepository extends JpaRepository<Game, Long> {

    Game findByName(String name);

//    @Query("select game.id, game.name from game "
//            + "inner join game_category on games.id = game_category.game_id "
//            + "inner join categories on categories.id = game_category.category_id ")
    @Query("select distinct game from games game "
            + "join game.categories category where category.id = :id ")
    List<Game> findByCategory(@Param("id") long id);

}
