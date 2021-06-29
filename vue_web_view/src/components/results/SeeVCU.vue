<template>
  <v-carousel-item
    class="item"
    :transition="false"
    :value="$store.state.FLOW['VCU']"
  >
    <v-icon dark color="blue" size="100px" class="mb-10">
      mdi-information-outline
    </v-icon>
    <div class="item__title">See VCU</div>
    <div class="mb-10">
      You should approach a victim care unit or NGO such as Voices@SMU! Checkout
      our assistance page for more info!
    </div>

    <DownloadButton
      result="You should approach a victim care unit or NGO such as Voices@SMU! Checkout
      our assistance page for more info!"
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
export default class SeeVCU extends Vue {
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