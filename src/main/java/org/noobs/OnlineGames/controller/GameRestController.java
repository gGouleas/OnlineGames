package org.noobs.OnlineGames.controller;

import java.util.List;
import org.noobs.OnlineGames.entity.Game;
import org.noobs.OnlineGames.service.IGameService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/game")
public class GameRestController {

    public static final Logger logger = LoggerFactory.getLogger(GameRestController.class);

    @Autowired
    IGameService gameService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ResponseEntity<List<Game>> listAllGames() {
        List<Game> games = gameService.findAll();
        if (games.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
            // You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Game>>(games, HttpStatus.OK);
    }
}
