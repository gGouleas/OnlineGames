package org.noobs.OnlineGames.controller;

import java.util.List;
import org.noobs.OnlineGames.entity.Category;
import org.noobs.OnlineGames.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/category")
public class CategoryRestController {
    
    @Autowired
    ICategoryService categoryService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ResponseEntity<List<Category>> listAllCategories() {
        List<Category> categories = categoryService.findAll();
        if (categories.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Category>>(categories, HttpStatus.OK);
    }
}
