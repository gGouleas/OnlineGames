package org.noobs.OnlineGames.service;

import java.util.List;
import org.noobs.OnlineGames.entity.Game;
import org.noobs.OnlineGames.entity.Highscore;
import org.noobs.OnlineGames.entity.User;
import org.noobs.OnlineGames.repository.HighscoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HighscoreServiceImpl implements IHighscoreService{
    
    @Autowired
    HighscoreRepository highscoreRepository;
    
    @Override
    public List<Highscore> findAll() {
        return highscoreRepository.findAll();
    }

    @Override
    public List<Highscore> findByUser(User user) {
        return highscoreRepository.findByUser(user.getId());
    }

    @Override
    public List<Highscore> findByGame(Game game) {
        return highscoreRepository.findByGame(game.getId());
    }

    @Override
    public List<Highscore> findByUserGame(User user, Game game) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
