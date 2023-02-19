<template>
<VerticalWave />
<div style="margin-left: 50px;" class="p-2">
  <h1 class="display-4"><b>Knowledge Database</b></h1>
  <div class="d-flex align-items-center mt-4">
    <img src="@/assets/profile.png" class="rounded-circle border me-2" style="width: 35px; height: 35px;">
    <h5 class="m-0">Tjark Prokoph</h5>
  </div>
  <div class="d-flex mt-1 ms-1">
    <a href="https://github.com/tjarkpr" class="d-flex me-3 align-items-center">
      <img src="@/assets/github.png" class="me-1" style="width: 20px; height: 20px;">
      tjarkpr
    </a>
    <a href="https://medium.com/@tjark.prokoph" class="d-flex me-3 align-items-center">
      <img src="@/assets/medium.png" class="me-1" style="width: 20px; height: 20px;">
      tjark.prokoph
    </a>
    <a href="https://de.linkedin.com/in/tjark-prokoph?trk=people-guest_people_search-card" class="d-flex me-3 align-items-center">
      <img src="@/assets/linkedin.png" class="me-1" style="width: 20px; height: 20px;">
      tjark-prokoph
    </a>
  </div>
  <figure class="mt-5 text-center">
    <blockquote class="blockquote">
      <p>Be the change that you wish to see in the world.</p>
    </blockquote>
    <figcaption class="blockquote-footer">
      Mahatma Gandhi
    </figcaption>
  </figure>
  <h3 class="mt-5 text-center"><b>Articles</b></h3>
  <div class="d-flex flex-wrap flex-row justify-content-center align-items-start">
    <BaseCard title="Top-10 Most expensive words for Airbnb titles in NYC" text="A brief introduction into Bag-of-Words, N-Grams and CountVectorizer" link="https://medium.com/@tjark.prokoph/top-10-most-expensive-words-for-airbnb-titles-in-nyc-c574a2c63546" image_src="https://images.pexels.com/photos/887848/pexels-photo-887848.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"/>
  </div>
  <h3 class="mt-5 text-center"><b>Projects</b></h3>
  <div class="d-flex flex-wrap flex-row justify-content-center align-items-start">
    <BaseCard title="Projektstudie @FH-Wedel" text="Web application for organizing and storing a study plan. Based on PHP, JS, CSS, SQL and HTML a user interface is provided to change the own study plan and to enter passed achievements." link="https://github.com/tjarkpr/projektstudie_fhwedel" image_src="https://images.pexels.com/photos/760710/pexels-photo-760710.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"/>
    <BaseCard title="Learning and Softcomputing Project @FH-Wedel" text="The topic of detecting sarcasm in text is a frequently researched topic. It falls into the categorization of semantic text classification, which already contains several approaches to extract features from text. The task is composed of developing one of qualitative features from a self-selected dataset, to train a model that subsequently classifies the text input according to sarcasm or not sarcasm." link="https://github.com/tjarkpr/learning_softcomputing_fhwedel" image_src="https://images.pexels.com/photos/220326/pexels-photo-220326.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"/>
  </div>
</div>
</template>

<script>
import VerticalWave from './components/VerticalWave.vue'
import BaseCard from './components/BaseCard.vue'

export default {
  name: 'App',
  components: {
    VerticalWave,
    BaseCard,
  }
}
</script>

<style>
  * {
    margin: 0;
    padding: 0;
  }

  h1, h3 {
    font-family: 'Gloock', serif;
  }

  a, h5, figure {
    font-family: 'Playfair Display', serif;
    color: #000;
  }
</style>