$(function(){
  var myFunc = function(i) {
    var sel = "#item_item_images_attributes_" + i + "_image"
    $(sel).click();
  };

  var i = 0;
  $(".sell_form__drop_box").on("click", function() {
    console.log(i)
    if (i < 4){
      myFunc(i);
    }
    i += 1;
  });
});
