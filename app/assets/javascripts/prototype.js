$(function() {
    // jQuery Upload Thumbs 
    $('form input:file').uploadThumbs({
        position : 0,      // 0:before, 1:after, 2:parent.prepend, 3:parent.append,
                           // any: arbitrarily jquery selector
        imgbreak : true    // append <br> after thumbnail images
    });
});

$(window).load(function() {
  $('.cover-image-upload').imagefit({
    mode: 'outside',
    force : 'false',
    halign : 'center',
    valign : 'middle'
  });
});
