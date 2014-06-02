$(document).ready(function() {

// these work, but are not responsive
// var extra = $('#navbar').height() + 25;
// $('#sidebar').affix({
//     offset: { top: $('#sidebar').offset().top - extra }
// });
// $('#sidebar').parent().height($('#sidebar').height());

// not working
// $('#sidebar.affix').width($('#sidebar').width());
// $('#sidebar.affix').css({ top: extra })


MathJax.Hub.Config({
    // "HTML-CSS": { availableFonts: ["TeX"], scale: 100 },
    tex2jax: {
        inlineMath: [ ['$','$'], ["\\(","\\)"] ],
        displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
        processEscapes: true,
        skipTags: ["script","noscript","style","textarea","pre","code"]
    },
    TeX: {
        equationNumbers: {autoNumber: "AMS"}
    }
});

prettyPrint();

$('.flexslider').flexslider({
    animation: "slide"
});


});
