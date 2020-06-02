package org.noobs.OnlineGames.controller;

import java.util.List;
import org.noobs.OnlineGames.entity.Game;
import org.noobs.OnlineGames.entity.Highscore;
import org.noobs.OnlineGames.entity.User;
import org.noobs.OnlineGames.service.IGameService;
import org.noobs.OnlineGames.service.IHighscoreService;
import org.noobs.OnlineGames.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/highscore")
public class HiscoreRestController {
    
    public static final Logger logger = LoggerFactory.getLogger(GameRestController.class);

    @Autowired
    IHighscoreService highscoreService;
    
    @Autowired
    IUserService userService;
    
    @Autowired
    IGameService gameService;
    
    //---------------Retrieve All highscores--------------------------
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ResponseEntity<List<Highscore>> listAllHighscores() {
        List<Highscore> highscores = highscoreService.findAll();
        if (highscores.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Highscore>>(highscores, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/user/{username}", method = RequestMethod.GET)
    public ResponseEntity<List<Highscore>> highscoresByUser(@PathVariable("username") String username) {
        User user = userService.findByUsername(username);
        if(user == null){
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        List<Highscore> highscores = highscoreService.findByUser(user);
        if(highscores.isEmpty()){
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Highscore>>(highscores, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/game/{name}", method = RequestMethod.GET)
    public ResponseEntity<List<Highscore>> highscoresByGame(@PathVariable("name") String name) {
        Game game = gameService.findByName(name);
        if(game == null){
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        List<Highscore> highscores = highscoreService.findByGame(game);
        if(highscores.isEmpty()){
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Highscore>>(highscores, HttpStatus.OK);
    }
}
