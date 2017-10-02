$(function(){
 $('.item__image_box__bottom img').click(function(){
  var $thisImg = $(this).attr('src');
  var $thisAlt = $(this).attr('alt');
  $('.item__image_box__upper img').attr({src:$thisImg,alt:$thisAlt});
 });
});
