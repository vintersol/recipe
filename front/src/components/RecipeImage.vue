<template>
  <!-- <div class="container" @click="navigate(url)">
          <img v-bind:src="addHttp(imageUrl)" style="width:100%;">
          <div class="centered overlay-text">{{ title }}</div>
  </div>-->
  <div class="container" @mouseover="showIngredients = true" @mouseleave="showIngredients = false">
    <img class="recipeImage" v-bind:src="addHttp(imageUrl)">

    <div class="overlay-textbox">
      <div class="overlay-text" v-show="!showIngredients">{{ title }}</div>
    </div>
    <div class="ingredients-overlay" v-show="showIngredients">
      <b>Ingredienser</b>
      <br>
      {{ ingredients }}
      <a id="navigate-btn" href="navigate(url)">Gå till recept</a>
    </div>
  </div>
</template>

<script>
export default {
  name: "recipeImage",

  props: {
    url: String,
    imageUrl: String,
    title: String,
    ingredients: String
  },

  data: function() {
    return {
      showIngredients: false
    };
  },

  methods: {
    mouseOver() {
      this.showIngredients = !this.showIngredients;
    },

    addHttp(url) {
      return "http://" + url;
    },
    navigate(url) {
      window.location.href = url;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#navigate-btn {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  text-align: center;
  margin: 3px;

  text-decoration: underline;
}

.container {
  float: left;
  position: relative;
  margin: 2px;
  z-index: 0;
}

.ingredients-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: white;
  opacity: 0.8;
  z-index: 2;
  font-size: 0.65em;
}

.recipeImage {
  vertical-align: top;
  border-radius: 3px;
  z-index: 1;
}

.overlay-textbox {
  position: absolute;
  bottom: 5px;
  right: 5px;
  left: 5px;

  border-radius: 8px;
  background: black;
  opacity: 0.6;
}
.overlay-text {
  display: inline;

  text-align: center;
  font-family: Helvetica;
  font-size: 0.75em;
  color: white;
}
</style>
