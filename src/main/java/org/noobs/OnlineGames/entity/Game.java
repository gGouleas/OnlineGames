package org.noobs.OnlineGames.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.util.Collection;
import javax.persistence.*;

@Entity(name="games")
public class Game {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String mainSrc;
    private String imgSrc;
    
    @JsonManagedReference
    @ManyToMany
    private Collection<Category> categories;

    public Game() {
    }

    public Game(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMainSrc() {
        return mainSrc;
    }

    public void setMainSrc(String mainSrc) {
        this.mainSrc = mainSrc;
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }

    public Collection<Category> getCategories() {
        return categories;
    }

    public void setCategoriesCollection(Collection<Category> categories) {
        this.categories = categories;
    }

    @Override
    public String toString() {
        return "Game{" + "id=" + id + ", name=" + name + ", categories=" + categories + '}';
    }
    
}
