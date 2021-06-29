<template>
  <div
    :style="{
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
    }"
  >
    <v-btn
      dark
      color="blue"
      @click="pushAndDownload()"
      width="250px"
      class="rounded-xl mb-4"
      >Download your results!
    </v-btn>

    <div id="pdf">
      <div id="content" :key="$store.state.result">
        <img
          src="@/assets/scale_icon.jpeg"
          alt=""
          :style="{
            width: '100px',
            borderRadius: '50px',
            display: 'block',
            margin: '10px 250px 40px 250px',
          }"
        />
        <div
          :style="{
            textAlign: 'justify',
            fontWeight: '700',
            marginBottom: '20px',
            paddingLeft: '20px',
          }"
        >
          <span>Your results:</span>
        </div>
        <div
          v-for="(question, i) in $store.state.questions"
          :key="i"
          :style="{ textAlign: 'justify' }"
        >
          <div
            :style="{
              fontWeight: '700',
              fontSize: '14px',
              marginBottom: '8px',
            }"
          >
            <span
              :style="{
                display: 'block',
                width: '595px',
                wordWrap: 'break-word',
                whiteSpace: 'normal',
                paddingLeft: '20px',
                paddingRight: '20px',
              }"
              >{{ question }}</span
            >
          </div>
          <div
            :style="{
              fontSize: '14px',
              marginBottom: '12px',
            }"
          >
            <span
              :style="{
                display: 'block',
                width: '595px',
                wordWrap: 'break-word',
                whiteSpace: 'normal',
                paddingLeft: '20px',
                paddingRight: '20px',
              }"
              >{{ $store.state.answers[i] }}</span
            >
          </div>
        </div>
        <div
          :style="{ fontWeight: '700', fontSize: '14px', marginTop: '12px' }"
        >
          <span
            :style="{
              display: 'block',
              width: '595px',
              wordWrap: 'break-word',
              whiteSpace: 'normal',
              paddingLeft: '20px',
              paddingRight: '20px',
            }"
          >
            {{ this.$store.state.result }}</span
          >
        </div>
      </div>
    </div>
  </div>
</template>


<script lang="ts">
import { Vue, Component, Prop } from "vue-property-decorator";
import { jsPDF } from "jspdf";

@Component
export default class DownloadButton extends Vue {
  @Prop()
  result!: string;

  mounted(): void {
    this.$store.commit("setResult", this.result);
  }

  pushAndDownload(): void {
    console.log(this.$store.state.result);
    console.log(this.$store.state.answers);
    console.log(this.$store.state.questions);
    const doc = new jsPDF("p", "pt", "a4");
    doc.html(document.getElementById("content") ?? "", {
      callback: function (doc) {
        doc.save("scale_questionnaire.pdf");
      },
    });
  }
}
</script>


<style lang="scss" scoped>
#pdf {
  overflow: hidden;
  height: 0;
}
</style>