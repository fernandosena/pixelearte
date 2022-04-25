window.onload = function () {
    $(".ajax_load").fadeOut(800);
};
$(function () {
    $('.item-unico').slick({
        arrows: true,
        dots: true,
        infinite: true,
        speed: 1200,
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 4000
    });

    $('.categorias').slick({
        dots: false,
        infinite: true,
        speed: 300,
        autoplay: true,
        autoplaySpeed: 4000,
        slidesToShow: 6,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: false,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        arrows: false,
        dots: false,
        centerMode: true,
        focusOnSelect: true
    });

    /** COOKIE **/
    $(".btn-cookie").on("click", function () {
        setCookie("lgpd","true", 1);
        $("#cookie").fadeOut(500);
    });

    function setCookie(cname, cvalue, exdays) {
        const d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        var expires = "expires="+ d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    $("[data-id]").click(function (e) {
        var clicked = $(this);
        var dataset = clicked.data();
        var type = clicked.data("type");

        var id = clicked.data("id");
        var number = $(".value"+id);
        var valor = parseInt(number.val());
        continuar = false;

        if(type == "add"){
            number.val(valor+=1);
            continuar = true;
        }

        if(type == "del"){
            if(valor > 1){
                number.val(valor-=1);
                continuar = true;
            }
        }

        dataset["qtd"] = valor;

        if(continuar){
            $.post(clicked.data("url"), dataset, function (response) {
                //reload by error
                if (response.reload) {
                    window.location.reload();
                }
                //Balance
                $(".subtotal"+id).text(response.subtotal);
                $(".total").text(response.total);
            }, "json");
        }
    });
});