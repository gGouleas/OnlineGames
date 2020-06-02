package org.noobs.OnlineGames.service;

import java.util.List;
import org.noobs.OnlineGames.entity.Category;

public interface ICategoryService {
    
    List<Category> findAll();
    
}
