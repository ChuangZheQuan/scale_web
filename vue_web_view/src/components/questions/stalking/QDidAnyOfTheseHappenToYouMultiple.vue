<template>
  <v-carousel-item
    class="question"
    reverse-transition="fade-transition"
    transition="fade-transition"
    :value="$store.state.FLOW['DID_ANY_OF_THESE_HAPPEN_MULTIPLE']"
  >
    <div class="question__container">
      <div class="question__text">{{ question }}</div>
      <div>
        <div
          class="question__answers mb-2"
          v-for="(answer, i) in answers"
          :key="i"
        >
          <span class="mr-3" :style="{ fontWeight: '700' }">{{ answer }}</span>
          <v-btn
            @click="next(answer)"
            dark
            icon
            :style="{
              backgroundColor: 'rgb(33, 150, 243)',
            }"
          >
            <v-icon>{{ mdiChevronRight }}</v-icon></v-btn
          >
        </div>
        <div class="question__back mt-3" @click="back">Back</div>
      </div>
    </div>
  </v-carousel-item>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
import { mdiChevronRight } from "@mdi/js";

@Component
export default class QDidAnyOfTheseHappenToYouOnce extends Vue {
  mdiChevronRight = mdiChevronRight;
  question = "Did any of these happen to you?";
  answers = [
    "The perpetrator sent you threatening communications",
    "Received numerous unwanted communication from the perpetrator",
    "The perpetrator impersonated you to contact toher people to get your attention",
    "The perpetrator loitered around your place of work/residence/school/frequented places",
    "The perpetrator released your private information to the public",
    "The perpetrator physically followed you",
    "The perpetrator physcially followed your family members",
    "The perpetrator contacted you or your family",
    "None of the above",
  ];

  next(ans: string): void {
    if (ans === this.answers[8]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["POSSIBLY_S7_LIKELY_S4"],
        question: this.question,
        answer: ans,
      });
    } else {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S7_S4"],
        question: this.question,
        answer: ans,
      });
    }
  }

  back(): void {
    this.$emit("back");
  }
}
</script>

<style lang="scss" scoped>
.question {
  padding: 20px;
  text-align: center;

  &__container {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  &__text {
    margin-bottom: 100px;
  }

  &__text {
    font-weight: 700;
  }

  &__answers {
    display: flex;
    justify-content: space-between;
  }

  &__back:hover {
    cursor: pointer;
  }
}
</style>