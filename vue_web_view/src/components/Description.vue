<template>
  <div class="description">
    <h2
      :style="{
        textAlign: 'center',
        marginBottom: '20px',
        fontWeight: 'bold',
        fontSize: '24px',
      }"
    >
      We provide:
    </h2>
    <div class="services">
      <v-card
        class="card description__remedies white--text rounded-lg ma-4"
        color="rgb(0, 174, 255)"
        width="50%"
        max-width="500px"
        height="200px"
      >
        <span
          >Legal and medical remedies as well as support services from
          NGOs.</span
        >
      </v-card>
      <v-card
        class="card description__platform white--text rounded-lg ma-4"
        max-width="500px"
        width="50%"
        color="rgb(0, 174, 255)"
        height="200px"
      >
        <span>
          A platform for victims to reach out to services from lawyers,
          mediators, psychologists and counsellors.
        </span>
      </v-card>
    </div>
    <div class="description__questions">
      <div
        class="description__questions-header"
        :style="{ textAlign: 'center' }"
      >
        Legal and medical self-help questionnaire derived from the analysis of
        statutes, case law and medical assessments
      </div>
      <v-card
        class="start-card rounded-xl my-10"
        color="rgb(0, 174, 255)"
        width="100%"
        max-width="500px"
      >
        <div class="start-card__header">
          <span>Unsure if you have a case?</span>
          <br />
          <span>Find out more here!</span>
        </div>
        <v-btn class="blue--text ma-5" color="white" @click="goToDisclaimer()"
          >Start</v-btn
        >
      </v-card>
    </div>

    <div class="description__download">
      <div class="download">
        <span class="download__text">Download</span>
        <div>
          <a href="http://google.com" class="mr-3">
            <img
              class="download__icon"
              src="@/assets/app-store-badge.svg"
              alt=""
            />
          </a>
          <a href="http://google.com">
            <img
              class="download__icon"
              src="@/assets/google-play-badge.png"
              alt=""
            />
          </a>
        </div>
      </div>
    </div>
  </div>
</template>


<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
import { mdiScaleBalance } from "@mdi/js";

@Component
export default class Description extends Vue {
  mdiScaleBalance = mdiScaleBalance;

  goToDisclaimer(): void {
    this.$router.push("/disclaimer");
  }
}
</script>


<style lang="scss" scoped>
@import "~vuetify/src/styles/styles.sass";

.services {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}
.description {
  &__remedies {
    padding: 30px 20px 30px 20px;
    font-weight: 1000;
  }

  &__questions {
    padding: 50px 20px 50px 20px;
    font-weight: 1000;
  }

  &__platform {
    padding: 30px 20px 30px 20px;
    font-size: 24px;
    font-weight: 1000;
    color: white;
  }
  &__download {
    padding: 20px;
  }
  &__questions-header {
    font-size: 20px;
  }
}

.start-card {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: auto;
  margin-right: auto;
  padding: 20px;

  &__header {
    text-align: center;
    color: white;
    font-weight: 900;
    font-size: 24px;
  }
}

.download {
  &__text {
    font-size: 24px;
    font-weight: 900;
  }

  &__icon {
    height: 60px;
  }
}

@media #{map-get($display-breakpoints, "sm-and-down")} {
  .card {
    width: calc(100%) !important;
    font-size: 20px;
  }

  .download__icon {
    height: 40px;
  }
}

@media #{map-get($display-breakpoints, "sm-and-up")} {
  .card {
    width: calc(100% / 2) !important;
    font-size: 22px;
  }

  .description__questions-header {
    font-size: 22px;
  }
}

@media #{map-get($display-breakpoints, "md-and-up")} {
  .card {
    width: calc(100% / 3) !important;
  }

  .description__questions-header {
    font-size: 22px;
  }
}

@media #{map-get($display-breakpoints, "lg-and-up")} {
  .card {
    width: calc(100% / 4) !important;
  }
  .description__questions-header {
    font-size: 24px;
  }
}
</style>