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
    // },
    // TeX: {
    //     Macros: {
    //         dif: ["\\frac{d{#1}}{d{#2}}", 2],
    //         pdif: ["\\frac{\\partial{#1}}{\\partial{#2}}", 2],
    //         Tr: "\\mathop{\\rm Tr}\\limits",
    //         real: "\\mathop{\\rm Re}\\nolimits",
    //         imag: "\\mathop{\\rm Im}\\nolimits",
    //         Res: "\\mathop{\\rm Res}\\limits",
    //         sign: "\\mathop{\\rm sgn}\\nolimits",
    //         i: "{\\rm i}"
    //     },
    //     equationNumbers: {autoNumber: "AMS"}
    }
});

prettyPrint();

});
