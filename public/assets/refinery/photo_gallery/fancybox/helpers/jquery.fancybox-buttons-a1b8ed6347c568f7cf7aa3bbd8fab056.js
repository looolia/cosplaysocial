/*!
 * Buttons helper for fancyBox
 * version: 1.0.2
 * @requires fancyBox v2.0 or later
 *
 * Usage: 
 *     $(".fancybox").fancybox({
 *         buttons: {
 *             position : 'top'
 *         }
 *     });
 * 
 * Options:
 *     tpl - HTML template
 *     position - 'top' or 'bottom'
 * 
 */
(function(e){var t=e.fancybox;t.helpers.buttons={tpl:'<div id="fancybox-buttons"><ul><li><a class="btnPrev" title="Previous" href="javascript:;"></a></li><li><a class="btnPlay" title="Start slideshow" href="javascript:;"></a></li><li><a class="btnNext" title="Next" href="javascript:;"></a></li><li><a class="btnToggle" title="Toggle size" href="javascript:;"></a></li><li><a class="btnClose" title="Close" href="javascript:jQuery.fancybox.close();"></a></li></ul></div>',list:null,buttons:{},update:function(){var e=this.buttons.toggle.removeClass("btnDisabled btnToggleOn");t.current.canShrink?e.addClass("btnToggleOn"):t.current.canExpand||e.addClass("btnDisabled")},beforeLoad:function(e){if(t.group.length<2){t.coming.helpers.buttons=!1,t.coming.closeBtn=!0;return}t.coming.margin[e.position==="bottom"?2:0]+=30},onPlayStart:function(){this.list&&this.buttons.play.attr("title","Pause slideshow").addClass("btnPlayOn")},onPlayEnd:function(){this.list&&this.buttons.play.attr("title","Start slideshow").removeClass("btnPlayOn")},afterShow:function(n){var r;this.list||(this.list=e(n.tpl||this.tpl).addClass(n.position||"top").appendTo("body"),this.buttons={prev:this.list.find(".btnPrev").click(t.prev),next:this.list.find(".btnNext").click(t.next),play:this.list.find(".btnPlay").click(t.play),toggle:this.list.find(".btnToggle").click(t.toggle)}),r=this.buttons,t.current.index>0||t.current.loop?r.prev.removeClass("btnDisabled"):r.prev.addClass("btnDisabled"),t.current.loop||t.current.index<t.group.length-1?(r.next.removeClass("btnDisabled"),r.play.removeClass("btnDisabled")):(r.next.addClass("btnDisabled"),r.play.addClass("btnDisabled")),this.update()},onUpdate:function(){this.update()},beforeClose:function(){this.list&&this.list.remove(),this.list=null,this.buttons={}}}})(jQuery);