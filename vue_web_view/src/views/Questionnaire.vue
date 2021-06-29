<template>
  <v-carousel
    v-model="model"
    :show-arrows="false"
    touchless
    hide-delimiters
    :continuous="false"
    height="1000px"
  >
    <QHarassmentOrStalking @back="back" @next="next" />
    <QHAD @back="back" @next="next" />
    <QExpressDiscomfort @next="next" @back="back" />
    <QBlock @back="back" @next="next" />
    <QMeansOfContact @next="next" @back="back" />
    <HighlyLikely74 @back="back" />
    <HighlyLikely3 @next="next" @back="back" />
    <HighlyLikely4 @next="next" @back="back" />
    <HighlyLikely7 @back="back" />
    <QDidPerpContinueToDoAnyOfTheseOnline @back="back" @next="next" />
    <QDidPerpContinueToDoAnyOfTheseBoth @back="back" @next="next" />
    <QDidPerpDoAnyOfThese @next="next" @back="back" />
    <Likely4 @back="back" />
    <Possibly74 @back="back" />
    <Possibly4 @back="back" />
    <Possibly7 @back="back" />

    <Possibly34 @next="next" @back="back" />
    <NoCase @back="back" />
    <SeeVCU @back="back" />
    <Warn @next="next" @back="back" />
    <QHowManyTimes @next="next" @back="back" />
    <QDidAnyOfTheseHappenToYouOnce @next="next" @back="back" />
    <QDidAnyOfTheseHappenToYouMultiple @next="next" @back="back" />
    <QWasItReasonable @next="next" @back="back" />
    <QHowMuchTimeRest @next="next" @back="back" />
    <QHowMuchTimeNone @next="next" @back="back" />
    <QDidPerpDoAnyOfTheseRemorse @next="next" @back="back" />
    <QDidPerpDoAnyOfTheseNoRemorse @next="next" @back="back" />
    <QHADHARASSMENT @next="next" @back="back" />
    <QDoYouHaveEvidence @next="next" @back="back" />
    <QWasConductIntentional @next="next" @back="back" />
    <CollectEvidence @back="back" />
    <NoLegalRemedies @back="back" />
  </v-carousel>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
import Disclaimer from "../views/Disclaimer.vue";
import Question from "../components/Question.vue";
import CollectEvidence from "../components/results/Collect.vue";
import NoCase from "../components/results/NoCase.vue";
import HighlyLikely74 from "../components/results/HighlyLikely74.vue";
import Possibly74 from "../components/results/Possibly74.vue";
import Possibly4 from "../components/results/Possibly4.vue";
import Possibly7 from "../components/results/Possibly7.vue";
import HighlyLikely3 from "../components/results/HighlyLikely3.vue";
import HighlyLikely4 from "../components/results/HighlyLikely4.vue";
import HighlyLikely7 from "../components/results/HighlyLikely7.vue";
import Likely4 from "../components/results/Likely4.vue";
import Warn from "../components/Warn.vue";
import SeeVCU from "../components/results/SeeVCU.vue";
import QHarassmentOrStalking from "../components/questions/QHarassmentOrStalking.vue";
import QExpressDiscomfort from "../components/questions/stalking/QExpressDiscomfort.vue";
import QHAD from "../components/questions/stalking/QHAD.vue";
import QBlock from "../components/questions/stalking/QBlock.vue";
import QMeansOfContact from "../components/questions/stalking/QMeansOfContact.vue";
import QDidPerpContinueToDoAnyOfTheseOnline from "../components/questions/stalking/QDidPerpContinueToDoAnyOfTheseOnline.vue";
import QDidPerpContinueToDoAnyOfTheseBoth from "../components/questions/stalking/QDidPerpContinueToDoAnyOfTheseBoth.vue";
import QDidPerpDoAnyOfThese from "../components/questions/stalking/QDidPerpDoAnyOfThese.vue";
import QHowManyTimes from "../components/questions/stalking/QHowManyTimes.vue";
import QDidAnyOfTheseHappenToYouOnce from "../components/questions/stalking/QDidAnyOfTheseHappenToYouOnce.vue";
import QDidAnyOfTheseHappenToYouMultiple from "../components/questions/stalking/QDidAnyOfTheseHappenToYouMultiple.vue";
import QWasItReasonable from "../components/questions/stalking/QWasItReasonable.vue";
import QHowMuchTimeRest from "../components/questions/stalking/QHowMuchTimeRest.vue";
import QHowMuchTimeNone from "../components/questions/stalking/QHowMuchTimeNone.vue";
import QDidPerpDoAnyOfTheseRemorse from "../components/questions/harassment/QDidPerpDoAnyOfTheseRemorse.vue";
import QDidPerpDoAnyOfTheseNoRemorse from "../components/questions/harassment/QDidPerpDoAnyOfTheseNoRemorse.vue";
import QHADHARASSMENT from "../components/questions/harassment/QHAD.vue";
import QDoYouHaveEvidence from "../components/questions/harassment/QDoYouHaveEvidence.vue";
import QWasConductIntentional from "../components/questions/harassment/QWasConductIntentional.vue";
import Possibly34 from "../components/results/Possibly34.vue";
import NoLegalRemedies from "../components/results/NoLegalRemedies.vue";
@Component({
  components: {
    SeeVCU,
    Disclaimer,
    Question,
    CollectEvidence,
    NoLegalRemedies,
    Likely4,
    HighlyLikely3,
    HighlyLikely4,
    HighlyLikely74,
    HighlyLikely7,
    Possibly7,
    Possibly74,
    Possibly4,
    Possibly34,
    NoCase,
    Warn,
    QHarassmentOrStalking,
    QExpressDiscomfort,
    QHAD,
    QBlock,
    QMeansOfContact,
    QDidPerpContinueToDoAnyOfTheseOnline,
    QDidPerpContinueToDoAnyOfTheseBoth,
    QDidPerpDoAnyOfThese,
    QHowManyTimes,
    QDidAnyOfTheseHappenToYouOnce,
    QDidAnyOfTheseHappenToYouMultiple,
    QWasItReasonable,
    QHowMuchTimeRest,
    QHowMuchTimeNone,
    QDidPerpDoAnyOfTheseRemorse,
    QDidPerpDoAnyOfTheseNoRemorse,
    QHADHARASSMENT,
    QDoYouHaveEvidence,
    QWasConductIntentional,
  },
})
export default class Questionnaire extends Vue {
  model = 0;
  history: number[] = [];

  next(next_page: any): void {
    this.history.push(this.model);
    if (next_page.question !== undefined) {
      this.$store.dispatch("pushQuestion", next_page.question);
      this.$store.dispatch("pushAnswer", next_page.answer);
      console.log(this.$store.state.answers);
    }

    this.model = next_page.value;
  }

  back(): void {
    if (!this.history.length) {
      this.$router.go(-1);
    } else {
      this.model = this.history.pop() ?? 0;
      this.$store.dispatch("popQuestion");
      this.$store.dispatch("popAnswer");
    }
  }
}
</script>

<style lang="scss" scoped>
::v-deep .v-carousel__controls {
  background-color: white;
}
::v-deep .v-carousel__controls .v-item-group .v-btn {
  color: black;
}

::v-deep .v-carousel__controls .v-item-group .v-btn--active {
  color: rgb(33, 150, 243);
}

v-carousel {
  width: 500px;
  height: 500px;
  display: flex;
  justify-content: center;
  padding: 0px;
}
</style>