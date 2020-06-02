package org.noobs.OnlineGames.service;

import java.util.List;
import org.noobs.OnlineGames.entity.Game;
import org.noobs.OnlineGames.entity.Highscore;
import org.noobs.OnlineGames.entity.User;

public interface IHighscoreService {
    
    List<Highscore> findAll();
    
    List<Highscore> findByUser(User user);
    
    List<Highscore> findByGame(Game game);
    
    List<Highscore> findByUserGame(User user, Game game);
        
}
