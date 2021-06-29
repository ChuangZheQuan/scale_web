<template>
  <div class="home">
    <div class="logo">
      <img
        class="logo__image"
        src="https://raw.githubusercontent.com/waffle987/scale/master/assets/scale_icon.png?token=AOF2Q6NPIRKZIVADYV5Q2KTA2FLTG"
        alt=""
      />
      <h1 class="logo__title">Welcome to Scale!</h1>
      <h3 class="mb-10 logo__subtitle">
        Your one-stop platform for sexual harassment victims
      </h3>
    </div>
    <Description />
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
import Description from "@/components/Description.vue";

@Component({
  components: {
    Description,
  },
})
export default class Home extends Vue {}
</script>

<style lang="scss" scoped>
.v-btn {
  border-radius: 20px;
}

.logo {
  &__image {
    width: 120px;
    border-radius: 20px;
    display: block;
    margin-left: auto;
    margin-right: auto;
  }

  &__title {
    text-align: center;
    font-weight: 900;
    font-size: 32px;
  }

  &__subtitle {
    text-align: center;
    font-style: italic;
  }
}
</style>
