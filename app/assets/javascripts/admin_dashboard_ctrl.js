var EditImage = {
  template: '#bs-modal',
  props: ['image']
};

new Vue({
  el: '#el',
  data: {
    images: gon.images,
  },
  components: {
    'modal': EditImage
  }
});