<template>
  <v-carousel-item
    class="question"
    reverse-transition="fade-transition"
    transition="fade-transition"
    :value="$store.state.FLOW['HAD']"
  >
    <div class="question__container">
      <div class="question__text">{{ question }}</div>
      <div>
        <div class="question__answers">
          <v-btn
            v-for="(answer, i) in answers"
            :key="i"
            @click="next(answer)"
            dark
            color="blue"
            width="100%"
            max-width="200px"
            class="rounded-xl mb-2"
          >
            {{ answer }}</v-btn
          >
        </div>
        <div class="question__back mt-3" @click="back">Back</div>
      </div>
    </div>
  </v-carousel-item>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";

@Component
export default class QHAD extends Vue {
  question = "Did you feel harrassed, alarmed or distressed?";

  answers = ["Yes", "No"];

  next(ans: string): void {
    if (ans === "Yes") {
      this.$emit("next", {
        value: this.$store.state.FLOW["EXPRESS_DISCOMFORT"],
        question: this.question,
        answer: ans,
      });
    } else {
      this.$emit("next", {
        value: this.$store.state.FLOW["NO_CASE"],
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
    flex-direction: column;
  }

  &__back:hover {
    cursor: pointer;
  }
}
</style>