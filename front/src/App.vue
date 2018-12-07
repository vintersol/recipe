<template>
  <div id="app">
    <h3>Recipes!!</h3>
    <div class="recipe-holder" v-for="(recipe, key) in recipes" v-bind:key="key">
      <recipeImage :url=recipe.url :imageUrl=recipe.imageUrl :title=recipe.title :ingredients=recipe.ingredients></recipeImage>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import recipeImage from "./components/RecipeImage.vue"

export default {
  name: "app",

  components: {
    recipeImage
  },

  data() {
    return {
      recipes: ""
    };
  },

  methods: {
    async getRecipes() {
      try {
        const res = await axios.post("http://localhost:8080/graphql", {
          query: "{	recipes {title url imageUrl ingredients} }"
        });
        this.recipes = res.data.data.recipes;
      } catch (e) {
        console.log("err", e);
      }
    }
  },

  beforeMount() {
    this.getRecipes();
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.recipe-holder {
  display: inline;
}
</style>
