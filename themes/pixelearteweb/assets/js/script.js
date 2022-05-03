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

    //ajax form
    $("form:not('.ajax_off')").submit(function (e) {
        e.preventDefault();
        var form = $(this);
        var load = $(".ajax_load");
        var flashClass = "ajax_response";
        var flash = $("." + flashClass);

        form.ajaxSubmit({
            url: form.attr("action"),
            type: "POST",
            dataType: "json",
            beforeSend: function () {
                load.fadeIn(200).css("display", "flex");
            },
            success: function (response) {
                //redirect
                if (response.redirect) {
                    window.location.href = response.redirect;
                } else {
                    load.fadeOut(200);
                }

                if (response.div) {
                    $(response.div).html(response.dados);
                }

                //message
                if (response.message) {
                    if (flash.length) {
                        flash.html(response.message).fadeIn(100).effect("bounce", 300);
                    } else {
                        form.prepend("<div class='" + flashClass + "'>" + response.message + "</div>")
                            .find("." + flashClass).effect("bounce", 300);
                    }
                } else {
                    flash.fadeOut(100);
                }
            },
            complete: function () {
                if (form.data("reset") === true) {
                    form.trigger("reset");
                }
            }
        });
    });

    var select = {"calc": true};
    $(".select").change(function (e) {
        id = $(".id").val();
        select[$(this).attr("name")] = $(this).val();
        $.ajax({
            url: $(".form").attr("action"),
            type: "POST",
            data: select,
            dataType: "json",
            success: function (response) {
                if (response.price) {
                    $(".subtotal"+id).text(response.price);
                    $(".variation").val(response.idVariation);
                }
            },
            error: function () {
                console.log(response)
            }
        });
    })
});