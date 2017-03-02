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

Vue.component('about-video', {
  props: ['videoSrc'],
  template: '<div><video id="my-player" class="video-js" controls preload="auto" width="100%" poster="https://vjs.zencdn.net/v/oceans.png" data-setup="{}""> <source v-bind:src="videoSrc" type="video/mp4"></source><p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p></video></div>'
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