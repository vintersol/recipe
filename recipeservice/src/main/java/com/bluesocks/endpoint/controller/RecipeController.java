package com.bluesocks.endpoint.controller;

import com.bluesocks.endpoint.dto.DtoConverter;
import com.bluesocks.endpoint.dto.RecipeDto;
import com.bluesocks.entity.Recipe;
import com.bluesocks.service.RecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/recipes")
public class RecipeController {

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private DtoConverter converter;

    @GetMapping("/all")
    public List<RecipeDto> getRecipes()
    {
        List<Recipe> recipes = recipeService.getRecipes();
        return converter.toDto(recipes);
    }
}
