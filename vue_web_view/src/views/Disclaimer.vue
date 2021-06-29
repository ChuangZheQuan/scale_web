<template>
  <div :style="{ display: 'flex', justifyContent: 'center' }">
    <v-carousel v-model="model" class="carousel" :continuous="false">
      <div
        class="skip"
        @click="startQuestionnaire"
        :style="{ display: 'flex', justifyContent: 'flex-end' }"
      >
        Skip
      </div>
      <v-carousel-item :value="0" class="carousel__item">
        <div class="legal-advice">
          <img class="legal-advice__img" src="@/assets/robot.png" alt="" />
          <div class="legal-advice__header">THIS IS NOT LEGAL ADVICE</div>
          <div class="legal-advice__sub-header mb-10">
            Please seek legal advice if you are looking for a legal answer
          </div>
          <v-btn
            dark
            color="blue"
            @click="goNext"
            width="200px"
            class="rounded-xl"
            >Next</v-btn
          >
        </div>
      </v-carousel-item>
      <v-carousel-item :value="1" class="carousel__item">
        <div class="self-help">
          <img class="self-help__img" src="@/assets/info.png" alt="" />
          <div class="self-help__header">THIS IS LEGAL SELF-HELP</div>
          <div class="self-help__sub-header mb-10">
            We are democratising legal knowledge so that you can make a more
            informed decision
          </div>
          <v-btn
            dark
            color="blue"
            @click="startQuestionnaire"
            width="200px"
            class="rounded-xl"
            >Done</v-btn
          >
        </div>
      </v-carousel-item>
    </v-carousel>
  </div>
</template>


<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class Disclaimer extends Vue {
  model = 0;
  goNext(): void {
    this.model = 1;
  }

  startQuestionnaire(): void {
    this.$router.push("/questionnaire");
  }
}
</script>

<style lang="scss" scoped>
@import "~vuetify/src/styles/styles.sass";

.carousel {
  display: flex;
  justify-content: center;
  width: 60%;

  &__item {
    width: 100%;
  }
}

.legal-advice {
  padding: 50px;
  display: flex;
  flex-direction: column;
  align-items: center;
  &__img {
    width: 200px;
  }

  &__header {
    font-size: 32px;
    font-weight: 900;
    color: rgb(33, 150, 243);
  }

  &__sub-header {
    font-size: 12px;
  }
}

.self-help {
  padding: 50px;
  display: flex;
  flex-direction: column;
  align-items: center;
  &__img {
    width: 200px;
  }

  &__header {
    font-size: 32px;
    font-weight: 900;
    color: rgb(33, 150, 243);
  }

  &__sub-header {
    font-size: 12px;
  }
}

::v-deep .v-carousel__controls {
  background-color: white;
}
::v-deep .v-carousel__controls .v-item-group .v-btn {
  color: black;
}

::v-deep .v-carousel__controls .v-item-group .v-btn--active {
  color: rgb(33, 150, 243);
}

.skip {
  font-size: 12px;
  font-weight: 500;
  color: rgb(33, 150, 243);
}

.skip:hover {
  cursor: pointer;
}

@media #{map-get($display-breakpoints, "sm-and-up")} {
  .carousel {
    width: 60% !important;
  }
}

@media #{map-get($display-breakpoints, "sm-and-down")} {
  .carousel {
    width: 100% !important;
  }

  .legal-advice__img {
    width: 150px !important;
  }

  .self-help__img {
    width: 150px !important;
  }
}
</style>