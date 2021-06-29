import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

enum FLOW {
  HARASSMENT_OR_STALKING,
  HAD,
  EXPRESS_DISCOMFORT,
  VCU,
  STALKER_MEANS_OF_CONTACT,
  DID_YOU_BLOCK_THE_PERP,
  WARN_AND_BLOCK,
  DID_PERP_CONTINUE_TO_DO_ANY_OF_THESE_ONLINE,
  DID_PERP_CONTINUE_TO_DO_ANY_OF_THESE_BOTH,
  LIKELY_S4,
  HIGHLYLIKELY_S4,
  HIGHLYLIKELY_S3,
  HIGHLYLIKELY_S7,
  HIGHLYLIKELY_S7_S4,
  POSSIBLY_S7_LIKELY_S4,
  POSSIBLY_S3_LIKELY_S4,
  POSSIBLY_S4,
  POSSIBLY_S7,
  HOW_MANY_TIMES,
  WAS_IT_REASONABLE,
  DID_PERP_DO_ANY_OF_THESE,
  DID_ANY_OF_THESE_HAPPEN_ONCE,
  DID_ANY_OF_THESE_HAPPEN_MULTIPLE,
  HOW_MUCH_TIME_NONE_OF_THE_ABOVE,
  HOW_MUCH_TIME_VISIBLE_PRESENCE,
  HOW_MUCH_TIME_REST,
  WARN,
  COLLECT,
  NO_CASE,
  H_DO_YOU_HAVE_EVIDENCE,
  H_HAD,
  H_DID_PERP_DO_ANY_OF_THESE_REMORSE,
  H_DID_PERP_DO_ANY_OF_THESE_NO_REMORSE,
  H_WAS_CONDUCT_INTENTIONAL,
  H_NO_LEGAL_REMEDIES
}


export default new Vuex.Store({
  state: {
    questions: [] as string[],
    answers: [] as string[],
    result: '',
    FLOW,
  },
  mutations: {
    setResult(state, result: string): void {
      state.result = result;
    },
    pushAnswer(state, answer: string): void {
      state.answers.push(answer);
    },

    pushQuestion(state, question: string): void {
      state.questions.push(question);
    },
    popQuestion(state): void {
      state.questions.pop();
    },
    popAnswer(state): void {
      state.answers.pop();
    }
  },
  actions: {
    pushAnswer(context, answer: string): void {
      context.commit('pushAnswer', answer);
    },
    pushQuestion(context, question: string): void {
      context.commit('pushQuestion', question);
    },
    popQuestion(context) {
      context.commit('popQuestion');
    },
    popAnswer(context) {
      context.commit('popAnswer');
    },
    setResult(context, result: string) {
      context.commit('setResult', result);
    }
  },
  modules: {
  }
})
