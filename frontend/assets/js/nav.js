$(document).ready(function () {

    // Navbar collapse on scroll below 100px
    changeNavbar();

    $(window).scroll(function () {
        changeNavbar();
    });

    function changeNavbar() {
        var navbar = $("#logo-company");

        if ($(this).scrollTop() >= 100) {

            navbar.removeClass("hidden");
            $("#logo-company").slideUp();
            $("#main_sidelogo").show();

        } else if ($(this).scrollTop() < 100) {

            navbar.addClass("hidden");
            $("#logo-company").slideDown();
            $("#main_sidelogo").hide();

        }

    }
});