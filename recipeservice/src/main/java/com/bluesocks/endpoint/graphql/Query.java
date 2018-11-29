package com.bluesocks.endpoint.graphql;

import com.bluesocks.endpoint.dto.DtoConverter;
import com.bluesocks.endpoint.dto.RecipeDto;
import com.bluesocks.entity.Recipe;
import com.bluesocks.service.RecipeService;
import com.coxautodev.graphql.tools.GraphQLQueryResolver;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@AllArgsConstructor
@Component
public class Query implements GraphQLQueryResolver {
    @Autowired
    private DtoConverter dtoConverter;
    @Autowired
    private RecipeService recipeService;

    public List<RecipeDto> recipes()
    {
        List<Recipe> recipes = recipeService.getRecipes();
        return dtoConverter.toDto(recipes);
    }
}
