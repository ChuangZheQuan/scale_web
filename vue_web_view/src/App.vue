<template>
  <v-app class="app">
    <v-main>
      <router-view />
    </v-main>
  </v-app>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "App",

  data: () => ({
    //
  }),
});
</script>


<style lang="scss" scoped>
@import "~vuetify/src/styles/styles.sass";

@media #{map-get($display-breakpoints, "sm-and-down")} {
  .app {
    padding: 12px !important;
  }
}

@media #{map-get($display-breakpoints, "sm-and-up")} {
  .app {
    padding: 20px !important;
  }
}

@media #{map-get($display-breakpoints, "md-and-up")} {
  .app {
    padding: 40px !important;
  }
}
</style>  