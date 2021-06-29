<template>
  <v-carousel-item
    class="question"
    reverse-transition="fade-transition"
    transition="fade-transition"
    :value="$store.state.FLOW['DID_PERP_CONTINUE_TO_DO_ANY_OF_THESE_ONLINE']"
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
export default class QDidPerpContinueToDoAnyOfTheseOnline extends Vue {
  mdiChevronRight = mdiChevronRight;
  question = "Did the perpetrator continue to do any of these?";
  answers = [
    "Create multiple accounts to release private information about you",
    "Create multiple accounts to contact you",
    "Contacted your social circles online",
    "Sent you information or requests which were of a sexual nature",
    "Sent you threatening communications",
    "None of the above",
  ];

  next(ans: string): void {
    if (ans === this.answers[0]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S7"],
        question: this.question,
        answer: ans,
      });
    } else if (ans === this.answers[1]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S7"],
        question: this.question,
        answer: ans,
      });
    } else if (ans === this.answers[2]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S7"],
        question: this.question,
        answer: ans,
      });
    } else if (ans === this.answers[3]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S7"],
        question: this.question,
        answer: ans,
      });
    } else if (ans === this.answers[4]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["HIGHLYLIKELY_S7"],
        question: this.question,
        answer: ans,
      });
    } else if (ans === this.answers[5]) {
      this.$emit("next", {
        value: this.$store.state.FLOW["POSSIBLY_S7_LIKELY_S4"],
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