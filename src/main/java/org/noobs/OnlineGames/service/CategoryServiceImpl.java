package org.noobs.OnlineGames.service;

import java.util.List;
import org.noobs.OnlineGames.entity.Category;
import org.noobs.OnlineGames.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements ICategoryService {
    
    @Autowired
    CategoryRepository categoryRepository;
    
    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }
    
}
