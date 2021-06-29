<template>
  <v-carousel-item
    class="question"
    reverse-transition="fade-transition"
    transition="fade-transition"
    :value="$store.state.FLOW['H_DID_PERP_DO_ANY_OF_THESE_REMORSE']"
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
export default class QDidPerpDoAnyOfTheseRemorse extends Vue {
  mdiChevronRight = mdiChevronRight;
  question = "Did the perpetrator do any of these?";
  answers = [
    "None of the above",
    "Performed unwanted and sexually explicit acts in front of you",
    "Did acts which made life miserable for you",
    "Threats of violence to you or your family",
    "Sent or threatened to send sexually explicit information to you",
    "Made vulgar gestures to you",
    "Sent violent and graphic information to you",
    "Threatened to release intimate information",
  ];

  answer!: string;

  next(ans: string): void {
    if (ans === this.answers[0]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["LIKELY_S4"],
        question: this.question,
        answer: ans,
      });
    } else {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S3"],
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