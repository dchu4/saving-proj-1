var options = {
  fontNames: ['Raleway'],
  height: 300,
  toolbar: [
    ['style', ['style']],
    ['deco', ['bold', 'italic', 'underline']],
    ['deco2', ['strikethrough', 'superscript', 'subscript']],
    ['font', ['fontname', 'fontsize', 'color']],
    ['clear', ['clear']],
    ['para', ['ul', 'ol', 'paragraph', 'height']],
    ['insert', ['hr', 'table', 'link']],
    ['misc', ['undo', 'redo']],
    ['help', ['codeview', 'fullscreen', 'help']]
  ]
};

$('.summernote').summernote(options);

var edit = function(componentDisplay, componentBody, componentEdit, componentSave, componentCancel) {
  $(componentBody).summernote(options);
  $(componentBody).removeClass('invisible');
  $(componentDisplay).addClass('invisible');
  $(componentEdit).addClass('invisible');
  $(componentSave).removeClass('invisible');
  $(componentCancel).removeClass('invisible');
  console.log('hello');
};

var cancel = function(componentDisplay, componentBody, componentEdit, componentSave, componentCancel) {
  $(componentDisplay).removeClass('invisible');
  $(componentBody).summernote('destroy');
  $(componentBody).addClass('invisible');
  $(componentEdit).removeClass('invisible');
  $(componentSave).addClass('invisible');
  $(componentCancel).addClass('invisible');
};
