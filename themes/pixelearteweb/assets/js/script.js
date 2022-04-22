$(function () {
    $(".bag i").on("click", function () {
        if($("#box-carrinho").is(':visible') == true){
            $("#box-carrinho").fadeOut(300);
        }else{
            $("#box-carrinho").fadeIn(300);
        }
    });
});