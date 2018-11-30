<template>
  <div id="app">
    <h3>Recipes!!</h3>
    <div v-for="(recipe, key) in recipes" v-bind:key="key">
      <div @click="navigate(recipe.url)">
          <img v-bind:src="addHttp(recipe.imageUrl)">
          {{ recipe.title }}
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "app",

  data() {
    return {
      recipes: "",
      todos: [
        { text: "Learn JavaScript" },
        { text: "Learn Vue" },
        { text: "Build something awesome" }
      ]
    };
  },

  methods: {
    async getRecipes() {
      try {
        const res = await axios.post("http://localhost:8080/graphql", {
          query: "{	recipes {title url imageUrl} }"
        });
        this.recipes = res.data.data.recipes;
      } catch (e) {
        console.log("err", e);
      }
    },
    addHttp(url) {
      return "http://" + url;
    },
    navigate(url) {
      window.location.href = url;
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
</style>
