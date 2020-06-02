package org.noobs.OnlineGames.repository;

import org.noobs.OnlineGames.entity.Category;
import org.noobs.OnlineGames.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    
        Category findById(int id);
        
        Category findByName(String name);
}
