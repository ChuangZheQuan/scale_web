<template>
  <v-carousel-item
    class="question"
    reverse-transition="fade-transition"
    transition="fade-transition"
    :value="$store.state.FLOW['H_WAS_CONDUCT_INTENTIONAL']"
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
export default class QWasConductIntentional extends Vue {
  mdiChevronRight = mdiChevronRight;
  question =
    "Was the conduct intentional? The scenarios below indicate intention. Select one of the scenarios below that best fit your circumstances.";
  answers = [
    "Did the perpetrator show remorse/guilt",
    "Did the perpetrator use your personal information",
    "Did the perpetrator threaten you after some disagreement",
    "Was the conduct directed at you",
    "Did the perpetrator want to damage your reputation or career",
    "Did the perpetrator make demands for money, favours, etc, that were targeted at you",
    "Not sure",
  ];

  answer!: string;

  next(ans: string): void {
    if (ans === this.answers[0] || ans === this.answers[6]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["H_DID_PERP_DO_ANY_OF_THESE_REMORSE"],
        question: this.question,
        answer: ans,
      });
    } else {
      this.$emit("next", {
        value: this.$store.state.FLOW["H_DID_PERP_DO_ANY_OF_THESE_NO_REMORSE"],
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