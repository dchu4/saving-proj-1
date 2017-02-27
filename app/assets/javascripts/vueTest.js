Vue.component('about-text', {
  // options
  props: ['aboutTitle', 'aboutBody'],
  template: '<div><h1>{{aboutTitle}}</h1><h2>{{aboutBody}}</h2></div>'
})

Vue.component('about-image', {
  // options
  props: ['imageSrc'],
  template: "<img v-bind:src='imageSrc'></img>"
})

new Vue({
  el: '#app',
  data: {
    posts: gon.posts,
    playerShow: false
  },
  methods: {
    toggleVideoPlayer: function() {
      this.playerShow = !this.playerShow
    }
  }
})