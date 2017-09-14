$(function() {


  $("#input_price").on("keyup", function() {
    var input = $("#input_price").val();
    console.log(input);
    $("#commission_box").text(kakezan(input));
    $("#profit_box").text(kakezan2(input));
  });

  function kakezan(input){
   var fee = input * 0.1;
   return fee
  }

  function kakezan2(input){
   var profit = input * 0.9;
   return profit
  }

});
