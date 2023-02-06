
$(".toggle-theme").click(() => {
    if ($("body").hasClass("dark")) {
        // light theme
        $("body").removeClass("dark")
    } else {
        // dark theme
        $("body").addClass("dark")
    }
})