//////////////////////////////////////////////////////////////////////////////////
// Cloud Zoom V1.0.3
// Rev 201209181857
// (c) 2010-2012 by R Cecco. <http://www.professorcloud.com>
// MIT License
//
// Please retain this copyright header in all versions of the software
//
//////////////////////////////////////////////////////////////////////////////////
(function (jQuery, $) {
    'use strict';
    var scripts = document.getElementsByTagName("script"),
        index = scripts[scripts.length - 1].src.lastIndexOf('/'),
        lastScriptPath = scripts[scripts.length - 1].src.slice(0, index);

    $(document).ready(function () {
        $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
    });

    function format(str) {
        for (var i = 1; i < arguments.length; i++) {
            str = str.replace('%' + (i - 1), arguments[i]);
        }
        return str;
    }

    function CloudZoom(jWin, opts) {
        var sImg = $('img', jWin);
        var img1;
        var img2;
        var zoomDiv = null;
        var $mouseTrap = null;
        var lens = null;
        var $tint = null;
        var softFocus = null;
        var $ie6Fix = null;
        var zoomImage;
        var controlTimer = 0;
        var cw, ch;
        var destU = 0;
        var destV = 0;
        var currV = 0;
        var currU = 0;
        var filesLoaded = 0;
        var mx, my;
        var ctx = this,
            zw;
        setTimeout(function () {
            if ($mouseTrap === null) {
                var w = jWin.width();
                jWin.parent().append(format('<div style="width:%0px;position:absolute;top:75%;left:%1px;text-align:center" class="cloud-zoom-loading" >Loading...</div>', w / 3, (w / 2) - (w / 6)));
                $('cloud-zoom-loading', jWin.parent()).css('opacity', 0.5);
            }
        }, 200);
        var ie6FixRemove = function () {
            if ($ie6Fix !== null) {
                $ie6Fix.remove();
                $ie6Fix = null;
            }
        };
        this.removeBits = function () {
            if (lens) {
                lens.remove();
                lens = null;
            }
            if ($tint) {
                $tint.remove();
                $tint = null;
            }
            if (softFocus) {
                softFocus.remove();
                softFocus = null;
            }
            ie6FixRemove();
            $('.cloud-zoom-loading', jWin.parent()).remove();
        };
        this.destroy = function () {
            jWin.data('zoom', null);
            if ($mouseTrap) {
                $mouseTrap.unbind();
                $mouseTrap.remove();
                $mouseTrap = null;
            }
            if (zoomDiv) {
                zoomDiv.remove();
                zoomDiv = null;
            }
            this.removeBits();
        };
        this.fadedOut = function () {
            if (zoomDiv) {
                zoomDiv.remove();
                zoomDiv = null;
            }
            this.removeBits();
        };
        this.controlLoop = function () {
            if (lens) {
                var x = (mx - sImg.offset().left - (cw * 0.5)) >> 0;
                var y = (my - sImg.offset().top - (ch * 0.5)) >> 0;
                if (x < 0) {
                    x = 0;
                } else if (x > (sImg.outerWidth() - cw)) {
                    x = (sImg.outerWidth() - cw);
                }
                if (y < 0) {
                    y = 0;
                } else if (y > (sImg.outerHeight() - ch)) {
                    y = (sImg.outerHeight() - ch);
                }
                lens.css({
                    left: x,
                    top: y
                });
                lens.css('background-position', (-x) + 'px ' + (-y) + 'px');
                destU = (((x) / sImg.outerWidth()) * zoomImage.width) >> 0;
                destV = (((y) / sImg.outerHeight()) * zoomImage.height) >> 0;
                currU += (destU - currU) / opts.smoothMove;
                currV += (destV - currV) / opts.smoothMove;
                zoomDiv.css('background-position', (-(currU >> 0) + 'px ') + (-(currV >> 0) + 'px'));
            }
            controlTimer = setTimeout(function () {
                ctx.controlLoop();
            }, 30);
        };
        this.init2 = function (img, id) {
            filesLoaded++;
            if (id === 1) {
                zoomImage = img;
            }
            if (filesLoaded === 2) {
                this.init();
            }
        };
        this.init = function () {
            $('.cloud-zoom-loading', jWin.parent()).remove();
            var $m = $("<div class='mousetrap' style='background-image:url(\"" + lastScriptPath + "/blank.png\")" + "\'></div>");
            $mouseTrap = jWin.parent().append($m).find(':last');
            $mouseTrap = $('.mousetrap', jWin.parent());
            $mouseTrap.css({
                width: sImg.outerWidth(),
                height: sImg.outerHeight(),
                top: 0,
                left: 0,
                position: 'absolute',
                zIndex: 9999
            });
            $mouseTrap.bind('mousemove', this, function (event) {
                mx = event.pageX;
                my = event.pageY;
            });
            $mouseTrap.bind('mouseleave', this, function () {
                cw = (sImg.outerWidth() / zoomImage.width) * opts.zoomWidth;
                ch = (sImg.outerHeight() / zoomImage.height) * opts.zoomHeight;
                if ((parseFloat($('body').css('width').replace('px', '')) < 980) ||
                    (cw === sImg.outerWidth() && ch === sImg.outerWidth()))  return;
                clearTimeout(controlTimer);
                if (lens) {
                    lens.fadeOut(299);
                }
                if ($tint) {
                    $tint.fadeOut(299);
                }
                if (softFocus) {
                    softFocus.fadeOut(299);
                }
                zoomDiv.fadeOut(300, function () {
                    ctx.fadedOut();
                });
                return false;
            });
            $mouseTrap.bind('mouseenter', this, function (event) {
                mx = event.pageX;
                my = event.pageY;
                zw = event.data;
                if (zoomDiv) {
                    zoomDiv.stop(true, false);
                    zoomDiv.remove();
                }
                var xPos = opts.adjustX,
                    yPos = opts.adjustY;
                var siw = sImg.outerWidth();
                var sih = sImg.outerHeight();
                var w = opts.zoomWidth;
                var h = opts.zoomHeight;
                if (opts.zoomWidth === 'auto') {
                    w = siw;
                }
                if (opts.zoomHeight === 'auto') {
                    h = sih;
                }
                var appendTo = jWin.parent();
                switch (opts.position) {
                    case 'top':
                        yPos -= h;
                        break;
                    case 'right':
                        xPos += siw;
                        break;
                    case 'bottom':
                        yPos += sih;
                        break;
                    case 'left':
                        xPos -= w;
                        break;
                    case 'inside':
                        w = siw;
                        h = sih;
                        break;
                    default:
                        appendTo = $('#' + opts.position);
                        if (!appendTo.length) {
                            appendTo = jWin;
                            xPos += siw;
                            yPos += sih;
                        } else {
                            w = appendTo.innerWidth();
                            h = appendTo.innerHeight();
                        }
                }
                zoomDiv = appendTo.append(format('<div id="cloud-zoom-big" class="cloud-zoom-big" style="display:none;position:absolute;left:%0px;top:%1px;width:%2px;height:%3px;background-image:url(\'%4\');z-index:99;"></div>', xPos+4, yPos-4, w, h, zoomImage.src)).find(':last');
                zoomDiv = $('.cloud-zoom-big', appendTo);
                cw = zoomImage.width > sImg.outerWidth() ?
                    sImg.outerWidth() / zoomImage.width * zoomDiv.width() :
                    sImg.outerWidth();
                ch = zoomImage.height > sImg.outerHeight() ?
                    sImg.outerHeight() / zoomImage.height * zoomDiv.height() :
                    sImg.outerHeight();
                if ((parseFloat($('body').css('width').replace('px', '')) < 980) ||
                    (cw === sImg.outerWidth() && ch === sImg.outerHeight()))  return;

                if (sImg.attr('title') && opts.showTitle) {
                    zoomDiv.append(format('<div class="cloud-zoom-title">%0</div>', sImg.attr('title')));
                    $('.cloud-zoom-title', zoomDiv).css('opacity', opts.titleOpacity);
                }
                if ($.browser && $.browser.msie && $.browser.version < 7) {
                    $ie6Fix = $('<iframe frameborder="0" src="#"></iframe>').css({
                        position: "absolute",
                        left: xPos,
                        top: yPos,
                        zIndex: 99,
                        width: w,
                        height: h
                    }).insertBefore(zoomDiv);
                }
                zoomDiv.fadeIn(500);
                // fix zoom-big position
                var bodyWidth = $('body').width();
                var zOffset = zoomDiv.offset();
                var sImgOffset = sImg.offset();
                if (zOffset && zOffset.left) {
                    var leftSpace = sImgOffset.left,
                        rightSpace = bodyWidth - zOffset.left;

                    if (rightSpace < leftSpace) {
                        var zLeft = zoomDiv.css('left');
                        zoomDiv.css({'left': 'auto', 'right': zLeft});
                    } else if (zOffset.left < 0) {
                        zoomDiv.css({'right': 'auto', 'left': zoomDiv.outerWidth()});
                    }
                }
                if (lens) {
                    lens.remove();
                    lens = null;
                }
                lens = jWin.append(format("<div class = 'cloud-zoom-lens' style='display:none;z-index:98;position:absolute;width:%0px;height:%1px;'></div>", cw, ch)).find(':last');
                lens = $('.cloud-zoom-lens', jWin);
                $mouseTrap.css('cursor', lens.css('cursor'));
                var noTrans = false;
                if (opts.tint) {
                    //lens.css('background', 'url("' + sImg.attr('src') + '")'); не показываем фон для линзы из-за проблем при ресайзу
                    //lens.css('background-size', sImg.outerWidth() + 'px auto');
                    $tint = jWin.append(format('<div class="cloud-zoom-tint" style="display:none;position:absolute; left:0px; top:0px; width:%0px; height:%1px; background-color:%2;" />', sImg.outerWidth(), sImg.outerHeight(), opts.tint)).find(':last');
                    $tint = $('.cloud-zoom-tint', jWin);
                    $tint.css('opacity', opts.tintOpacity);
                    noTrans = true;
                    $tint.fadeIn(500);
                }
                if (opts.softFocus) {
                    //lens.css('background', 'url("' + sImg.attr('src') + '")'); не показываем фон для линзы из-за проблем при ресайзу
                    //lens.css('background-size', sImg.outerWidth() + 'px auto');
                    jWin.append(format('<div class="cloud-zoom-soft" style="position:absolute;display:none;top:0px; left:0px; width:%0px; height:%1px;" />', sImg.outerWidth() - 2, sImg.outerHeight() - 2, opts.tint));
                    softFocus = $('.cloud-zoom-soft', jWin);
                    softFocus.css('background', 'url("' + sImg.attr('src') + '")');
                    softFocus.css('background-size', '100% 100%');
                    //softFocus.css('opacity', 0.5);
                    noTrans = true;
                    softFocus.fadeIn(500);
                }
                if (!noTrans) {
                    lens.css('opacity', opts.lensOpacity);
                }
                if (opts.position !== 'inside') {
                    lens.fadeIn(500);
                }
                zw.controlLoop();
                return;
            });
        };
        img1 = new Image();
        $(img1).load(function () {
            ctx.init2(this, 0);
        });
        img1.src = sImg.attr('src');
        img2 = new Image();
        $(img2).load(function () {
            ctx.init2(this, 1);
        });
        img2.src = jWin.attr('href');
    }
    $.fn.CloudZoom = function (options) {
        try {
            document.execCommand("BackgroundImageCache", false, true);
        } catch (e) {}
        this.each(function () {
            var relOpts, opts;
            if ($(this).find('img').length > 0 && $(this).attr('href') !== '#'){
                var relArray = $(this).attr('rel').replace(/\'/g, '"').split(',');
                jQuery.unique(relArray);
                relArray = $.map(relArray, function(value) {
                    var i = value.indexOf(':'),
                        parts = [value.slice(0, i), value.slice(i+1)];
                    return '"' + $.trim(parts[0]) + '":' + $.trim(parts[1]);
                });
                relOpts = $.parseJSON('{' + relArray.join(',') + '}');
                if ($(this).is('.cloud-zoom')) {
                    $(this).css({
                        'position': 'relative',
                        'display': 'block'
                    });
                    $('img', $(this)).css({
                        'display': 'block'
                    });
                    if ($(this).parent().attr('id') !== 'wrap') {
                        $(this).wrap('<div id="wrap" style="top:0px;position:relative;"></div>');
                    }
                    opts = $.extend({}, $.fn.CloudZoom.defaults, options);
                    opts = $.extend({}, opts, relOpts);
                    $(this).data('zoom', new CloudZoom($(this), opts));
                } else if ($(this).is('.cloud-zoom-gallery')) {
                    opts = $.extend({}, relOpts, options);
                    $(this).data('relOpts', opts);
                    $(this).bind('click', $(this), function (event) {
                        var data = event.data.data('relOpts');
                        $('#' + data.useZoom).data('zoom').destroy();
                        $('#' + data.useZoom).attr('href', event.data.attr('href'));
                        $('#' + data.useZoom + ' img')
                            .attr('src', event.data.data('relOpts').smallImage)
                            .removeAttr('srcset');
                        $('#' + event.data.data('relOpts').useZoom).CloudZoom();
                        return false;
                    });
                }
            }
        });
        return this;
    };
    $.fn.CloudZoom.defaults = {
        zoomWidth: "auto",
        zoomHeight: "auto",
        position: "right",
        tint: "#aa00aa",
        tintOpacity: "0.5",
        lensOpacity: "0.5",
        softFocus: false,
        smoothMove: 3,
        showTitle: true,
        titleOpacity: "0.5",
        adjustX: "0px",
        adjustY: "0px"
    };
}) (window._$, window._$);