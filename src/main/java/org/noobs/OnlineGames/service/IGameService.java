package org.noobs.OnlineGames.service;

import java.util.List;
import org.noobs.OnlineGames.entity.Category;
import org.noobs.OnlineGames.entity.Game;

public interface IGameService  {
    
    List<Game> findAll();
    
    Game findByName(String name);
    
    List<Game> findByCategory(long id);
    
}
