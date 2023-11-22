<template>
  <div class="projects-page">
    <div class="card" v-for="project in projects" :key="project.id">
      <!-- Your card content goes here -->
      <h3>{{ project.title }}</h3>
      <p>{{ project.description }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      projects: [
        { id: 1, title: 'Project 1', description: 'Description for Project 1' },
        { id: 2, title: 'Project 2', description: 'Description for Project 2' },
        // Add more projects as needed
      ],
    };
  },
};
</script>


<style scoped>

.projects-page {
  margin-left: 20%;
  margin-right: 20%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.projects-page h3 {
  color: #F4F4F4;
  font-weight: bold;
  letter-spacing: .5vw;
  margin-bottom: 3vh;
  font-size: 28px; /* Default font size */

  /* Media query for even smaller screens */
  @media screen and (max-width: 1000px) {
    font-size: 24px; /* Adjust font size for even smaller screens */
  }

  /* Media query for even smaller screens */
  @media screen and (max-width: 800px) {
    font-size: 20px; /* Adjust font size for even smaller screens */
  }

  /* Media query for even smaller screens */
  @media screen and (max-width: 600px) {
    font-size: 16px; /* Adjust font size for even smaller screens */
  }
}
 /* .projects {
    width: 80%;
    text-align: center;
    z-index: 2;
  }*/

.card {
  width: 100px;
  height: 200px;
  margin-bottom: 20px; /* Add margin between cards */
  background-color: #f0f0f0;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  z-index: 2;
}

@media (max-width: 1200px) {
  .projects-page {
    justify-content: center;
  }
}

@media (max-width: 800px) {
  .projects-page {
    margin-left: 10%;
    margin-right: 10%;
  }
}

@media (max-width: 600px) {
  .card {
    width: calc(50% - 20px); /* Two cards per row with some margin */
  }
}

</style>