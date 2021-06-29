<template>
  <v-carousel-item class="question" transition="fade">
    <div class="question__container">
      <div class="question__text">{{ question }}</div>
      <div>
        <div class="question__answers">
          <v-btn
            v-for="(answer, i) in answers"
            :key="i"
            @click="setAnswer(answer)"
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
import { Vue, Component, Prop } from "vue-property-decorator";

@Component
export default class Question extends Vue {
  @Prop()
  question!: string;

  @Prop()
  answers!: string[];

  answer!: string;

  setAnswer(ans: string): void {
    this.answer = ans;
    this.$emit("clicked", this.answer);
  }

  back(): void {
    this.$emit("back");
  }
}
</script>

<style lang="scss" scoped>
.question {
  padding: 50px;
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