jQuery(function($){
  // 入力キー配列
  input_cmd = [];
  // コナミコマンド配列 [↑, ↑, ↓, ↓, ←, →, ←, →, B, A]
  konami_cmd = [38, 38, 40, 40, 37, 39, 37, 39, 66, 65];

  // キー入力後のキーアップイベントで発動条件を監視します
  $(window).keyup(function(event){
    // 入力されたキーのコード
    var keyCode = event.keyCode;
    // 入力キー配列へ追加
    input_cmd.push(keyCode);

    // 入力されたキーが正しいか判定
    if ( input_cmd[input_cmd.length - 1] != konami_cmd[input_cmd.length - 1] ) {
      // 間違っている場合、入力キー配列をリセット（やり直し）
      input_cmd = [];
    }
    // 合っている場合、かつ完全に入力が終了したら処理発動
    else if ( input_cmd.length == konami_cmd.length ) {
      // コナミコマンド発動！
      konami_cmd_action();

      // 処理後、改めて入力キー配列をリセット
      input_cmd = [];
    }
  });

});

function konami_cmd_action() {
  jQuery(function($){
    $('body').animate({zIndex:1},{
      duration: 1500,
      easing: "linear",
      step: function(now,fx){ $(this).css("transform", "rotate(" + (now*360) + "deg)"); },
      complete:function(){$("body").css("zIndex", 0);}
    });
  });
}
