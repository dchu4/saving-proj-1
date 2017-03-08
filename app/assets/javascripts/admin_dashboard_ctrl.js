var EditImage = {
  template: '#testModal',
  props: ['image'],

};

new Vue({
  el: '#el',
  data: {
    images: gon.images,
    image: "rnrjkegnregnreklgerklg"
  },
  components: {
    'modal': EditImage
  }
});