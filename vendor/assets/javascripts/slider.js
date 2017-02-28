jQuery(document).ready(function() {
    "use strict";

    var revapi;
    if ( $("#rev_slider").revolution == undefined ) {
        revslider_showDoubleJqueryError("#rev_slider");
    } else {
        revapi = $("#rev_slider").show().revolution({
            sliderType: "standard",
            jsFileLocation: "assets/js/",
            sliderLayout: "auto",
            dottedOverlay:"none",
            delay: 15000,
            navigation: {
                mouseScrollNavigation: "off",
                onHoverStop: "off",
                touch: {
                    touchenabled: "on"
                },
                arrows: {
                    style: "hebe",
                    enable: true,
                    hide_onmobile: false,
                    hide_onleave: false,
                    hide_under: 767,
                    tmp: '',
                    left: {
                        h_align: "left",
                        v_align: "center",
                        h_offset: 0,
                        v_offset: 0
                    },
                    right: {
                        h_align: "right",
                        v_align: "center",
                        h_offset: 0,
                        v_offset: 0
                    }
                },
                bullets: {
                    enable: false
                },
                thumbnails: {
                    style: "hesperiden",
                    enable: true,
                    width: 100,
                    height: 50,
                    min_width: 100,
                    wrapper_padding: 5,
                    wrapper_color: "transparent",
                    wrapper_opacity: "1",
                    tmp: '<span class="tp-thumb-image"></span><span class="tp-thumb-title">{{title}}</span>',
                    visibleAmount: 5,
                    hide_onmobile: false,
                    hide_under: 992,
                    hide_onleave: false,
                    direction: "vertical",
                    span: false,
                    position: "inner",
                    space: 10,
                    h_align: "right",
                    v_align: "bottom",
                    h_offset: 15,
                    v_offset: 20
                }
            },
            responsiveLevels: [1200,992,768,480],
            gridwidth: [1170,970,750,480],
            gridheight: [600,520,450,340],
            lazyType: "smart",
            spinner: "spinner2",
            parallax: {
                type: "off",
                origo: "slidercenter",
                speed: 2000,
                levels: [2,3,4,5,6,7,12,16,10,50],
                disable_onmobile: "on"
            },
            debugMode: false
        });
    }
});