$(function () {
    $(".bag i").on("click", function () {
        if($("#box-carrinho").is(':visible') == true){
            $("#box-carrinho").fadeOut(300);
        }else{
            $("#box-carrinho").fadeIn(300);
        }
    });
    $(".fa-bars").on("click", function () {
        if($(".menu").is(':visible') == true){
            $(".menu").fadeOut(300);
        }else{
            $(".menu").fadeIn(300);
        }
    });
});