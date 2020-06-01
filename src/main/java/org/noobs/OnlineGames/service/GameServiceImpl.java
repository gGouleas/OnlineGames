package org.noobs.OnlineGames.service;

import java.util.List;
import org.noobs.OnlineGames.entity.Category;
import org.noobs.OnlineGames.entity.Game;
import org.noobs.OnlineGames.repository.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameServiceImpl implements IGameService {

    @Autowired
    GameRepository gameRepository;
    
    public List<Game> findAll(){
        return gameRepository.findAll();
    }
    
    @Override
    public Game findByName(String name) {
        return gameRepository.findByName(name);
    }

    @Override
    public List<Game> findByCategory(Category category) {
        return gameRepository.findByCategory(category.getId());
    }
    
    @Override
    public List<Game> findByCategory(long id){
        return gameRepository.findByCategory(id);
    }
    
}
