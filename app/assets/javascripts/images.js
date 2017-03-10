$('#imagePreview').change(function(event) {
  var files = event.target.files;
  var previewImage = files[0];
  var reader = new FileReader();
  reader.onload = function(file) {
    var img = new Image();
    img.src = file.target.result;
    document.getElementById("preview").innerHTML = '<img class="thumb" src="' + img.src +'">';
  }
  reader.readAsDataURL(previewImage);
});

$('.image-preview').change(function(event) {
  var index = event.target.id;
  var files = event.target.files;
  var previewImage = files[0];
  var reader = new FileReader();
  reader.onload = function(file) {
    var img = new Image();
    img.src = file.target.result;
    document.getElementsByClassName("preview")[index].innerHTML = '<img class="thumb" src="' + img.src +'">';
  }
  reader.readAsDataURL(previewImage);
});

$("#videoPreview").on('change', function() {
  var fullSource = $("#videoPreview").val();
  var url = fullSource.substring(32,(fullSource.length));
  document.getElementById("thumbnail").innerHTML = '<img class="thumb" src="https://img.youtube.com/vi/' + url + '/hqdefault.jpg">';
});

function changeVideo(index){
  var input = "#videoPreview" + index;
  var thumbnail = "thumbnail" + index;
  var value = $(input).val();
  var url = value.substring(32,(value.length));
  document.getElementById(thumbnail).innerHTML = '<img class="thumb" src="https://img.youtube.com/vi/' + url + '/hqdefault.jpg">';
};