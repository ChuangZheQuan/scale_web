<template>
  <v-carousel-item
    class="item"
    transition="fade"
    :value="$store.state.FLOW['WARN']"
  >
    <v-icon drk color="blue" size="100px" class="mb-10">
      mdi-alert-circle-outline
    </v-icon>
    <div class="mb-10" :style="{ fontWeight: '700' }">
      You should warn and block the perpetrator
    </div>
    <v-btn dark color="blue" @click="next" width="200px" class="rounded-xl"
      >Next
    </v-btn>
    <div class="mt-3 back" @click="back">Back</div>
  </v-carousel-item>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";

@Component
export default class Warn extends Vue {
  back(): void {
    this.$emit("back", this.$store.state.FLOW["DID_YOU_BLOCK_THE_PERP"]);
  }

  next(): void {
    this.$emit("next", {
      value: this.$store.state.FLOW["DID_PERP_DO_ANY_OF_THESE"],
    });
  }
}
</script>

<style lang="scss" scoped>
@import "~vuetify/src/styles/styles.sass";

.item {
  padding: 50px;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  &__title {
    font-weight: 700;
    font-size: 24px;
  }
}

img {
  width: 200px;
}

@media #{map-get($display-breakpoints, "sm-and-down")} {
  .img {
    width: 150px !important;
  }
}
.back {
  font-weight: 700;
}
.back:hover {
  cursor: pointer;
}
</style>