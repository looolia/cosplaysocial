/*!
 * Thumbnail helper for fancyBox
 * version: 1.0.4
 * @requires fancyBox v2.0 or later
 *
 * Usage:
 *     $(".fancybox").fancybox({
 *         thumbs: {
 *             width  : 50,
 *             height : 50
 *         }
 *     });
 *
 * Options:
 *     width - thumbnail width
 *     height - thumbnail height
 *     source - function to obtain the URL of the thumbnail image
 *     position - 'top' or 'bottom'
 *
 */
(function(e){var t=e.fancybox;t.helpers.thumbs={wrap:null,list:null,width:0,source:function(t){var n;return e.type(t)==="string"?t:(n=e(t).find("img"),n.length?n.attr("src"):t.href)},init:function(n){var r=this,i,s=n.width||50,o=n.height||50,u=n.source||this.source;i="";for(var a=0;a<t.group.length;a++)i+='<li><a style="width:'+s+"px;height:"+o+'px;" href="javascript:jQuery.fancybox.jumpto('+a+');"></a></li>';this.wrap=e('<div id="fancybox-thumbs"></div>').addClass(n.position||"bottom").appendTo("body"),this.list=e("<ul>"+i+"</ul>").appendTo(this.wrap),e.each(t.group,function(n){e("<img />").load(function(){var t=this.width,i=this.height,u,a,f;if(!r.list||!t||!i)return;u=t/s,a=i/o,f=r.list.children().eq(n).find("a"),u>=1&&a>=1&&(u>a?(t=Math.floor(t/a),i=o):(t=s,i=Math.floor(i/u))),e(this).css({width:t,height:i,top:Math.floor(o/2-i/2),left:Math.floor(s/2-t/2)}),f.width(s).height(o),e(this).hide().appendTo(f).fadeIn(300)}).attr("src",u(t.group[n]))}),this.width=this.list.children().eq(0).outerWidth(!0),this.list.width(this.width*(t.group.length+1)).css("left",Math.floor(e(window).width()*.5-(t.current.index*this.width+this.width*.5)))},update:function(n){this.list&&this.list.stop(!0).animate({left:Math.floor(e(window).width()*.5-(t.current.index*this.width+this.width*.5))},150)},beforeLoad:function(e){if(t.group.length<2){t.coming.helpers.thumbs=!1;return}t.coming.margin[e.position==="top"?0:2]=e.height+30},afterShow:function(e){this.list?this.update(e):this.init(e),this.list.children().removeClass("active").eq(t.current.index).addClass("active")},onUpdate:function(){this.update()},beforeClose:function(){this.wrap&&this.wrap.remove(),this.wrap=null,this.list=null,this.width=0}}})(jQuery);