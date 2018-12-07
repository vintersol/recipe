package com.bluesocks.dao;

import com.bluesocks.entity.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Primary
public class RecipeRepository
{
    @PersistenceContext
    private EntityManager em;

    public List<Recipe> getRecipes()
    {
        Query query = em.createNativeQuery("SELECT id, title, url, image_url, ingredients FROM recipe;", Recipe.class);
        List<Recipe> recipes = query.getResultList();

        return recipes;
    }
}
