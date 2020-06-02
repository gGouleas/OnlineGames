package org.noobs.OnlineGames.controller;

import java.util.List;
import org.noobs.OnlineGames.entity.Category;
import org.noobs.OnlineGames.entity.Game;
import org.noobs.OnlineGames.service.IGameService;

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
@RequestMapping("/game")
public class GameRestController {

    public static final Logger logger = LoggerFactory.getLogger(GameRestController.class);

    @Autowired
    IGameService gameService;
    
    //---------------Retrieve All games--------------------------
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ResponseEntity<List<Game>> listAllGames() {
        List<Game> games = gameService.findAll();
        if (games.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Game>>(games, HttpStatus.OK);
    }
    
    //---------------Retrieve games by category--------------------------
    @RequestMapping(value = "/category/{category}", method = RequestMethod.GET)
    public ResponseEntity<List<Game>> GamesByCategory(@PathVariable("category") Category category) {
        List<Game> games = gameService.findByCategory(category);
        if (games.isEmpty()) {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Game>>(games, HttpStatus.OK);
    }
    
    //---------------Retrieve games by category ID--------------------------
    @RequestMapping(value = "category/id/{categoryId}", method = RequestMethod.GET)
    public ResponseEntity<List<Game>> GamesByCategory(@PathVariable("categoryId") long id) {
        List<Game> games = gameService.findByCategory(id);
        if (games.isEmpty()) {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Game>>(games, HttpStatus.OK);
    }
}
