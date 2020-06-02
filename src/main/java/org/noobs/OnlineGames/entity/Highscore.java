package org.noobs.OnlineGames.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import javax.persistence.*;

@Entity(name="highscores")
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"game_id" , "user_id"}))
public class Highscore {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Long highscore;
    
    @JsonManagedReference
    @ManyToOne
    @JoinColumn(name = "game_id", referencedColumnName = "id")
    private Game game;
    
    @JsonManagedReference
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;
    
    public Highscore(){       
    }
    
    public Highscore(Long highscore, Game game, User user){
        this.highscore = highscore;
        this.game = game;
        this.user = user;
    }
   
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getHighscore() {
        return highscore;
    }

    public void setHighscore(Long highscore) {
        this.highscore = highscore;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    @Override
    public String toString() {
        return "Highscore{" + "id=" + id + ", highscore=" + highscore + ", game=" + game + ", user=" + user + '}';
    }
    
    
}
