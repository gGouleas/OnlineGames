package org.noobs.OnlineGames.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import java.util.Collection;
import javax.persistence.*;

@Entity(name="categories")
public class Category {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Enumerated(EnumType.STRING)
    private CategoryEnum name;
    
    @JsonBackReference
    @ManyToMany(mappedBy ="categories", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Collection<Game> games;
    
    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public CategoryEnum getName() {
        return name;
    }

    public void setName(CategoryEnum name) {
        this.name = name;
    }

    public Collection<Game> getGames() {
        return games;
    }

    public void setGames(Collection<Game> games) {
        this.games = games;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name=" + name + '}';
    }
    
}