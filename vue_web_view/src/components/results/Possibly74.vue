<template>
  <v-carousel-item
    class="item"
    :transition="false"
    :value="$store.state.FLOW['POSSIBLY_S7_LIKELY_S4']"
  >
    <v-icon dark color="blue" size="100px" class="mb-10">
      mdi-help-circle-outline
    </v-icon>
    <div class="item__title">Possibly</div>
    <div class="mb-10">
      Possibly unlawful stalking under Section 7 or likely harrassment under
      Section 4 of the Protection from Harassment Act (POHA)
    </div>
    <DownloadButton
      result="Possibly unlawful stalking under Section 7 or likely harrassment under
      Section 4 of the Protection from Harassment Act (POHA)"
    />
    <div class="mt-3 back" @click="back">Back</div>
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
export default class Possibly74 extends Vue {
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