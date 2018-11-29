package com.bluesocks.endpoint.dto;

import com.bluesocks.entity.Recipe;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class DtoConverter {

    @Autowired
    private ModelMapper modelMapper;

    public RecipeDto toDto(Recipe recipe)
    {
        return modelMapper.map(recipe, RecipeDto.class);
    }

    public List<RecipeDto> toDto(List<Recipe> recipes)
    {
        List<RecipeDto> recipeDtos = new ArrayList<RecipeDto>();
        for (Recipe recipe : recipes)
        {
            recipeDtos.add(toDto(recipe));
        }
        return recipeDtos;
    }
}
