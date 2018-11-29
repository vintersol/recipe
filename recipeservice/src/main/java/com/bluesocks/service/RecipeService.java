package com.bluesocks.service;

import com.bluesocks.dao.RecipeRepository;
import com.bluesocks.entity.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeService {
    @Autowired
    private RecipeRepository recipeDao;

    public List<Recipe> getRecipes()
    {
        return recipeDao.getRecipes();
    }
}
