<template>
  <v-carousel-item
    class="item"
    :transition="false"
    :value="$store.state.FLOW['NO_CASE']"
  >
    <v-icon dark color="blue" size="100px" class="mb-10">
      mdi-close-circle-outline
    </v-icon>
    <div class="item__title">UNLIKELY</div>
    <div class="mb-10">{{ result }}</div>
    <DownloadButton :result="result" />

    <div class="back mt-3" @click="back">Back</div>
  </v-carousel-item>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
import DownloadButton from "@/components/DownloadButton.vue";

@Component({
  components: {
    DownloadButton,
  },
})
export default class NoCase extends Vue {
  result = "You unlikely have a case";
  back(): void {
    this.$emit("back");
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