/*!
 * Media helper for fancyBox
 * version: 1.0.0
 * @requires fancyBox v2.0 or later
 *
 * Usage:
 *     $(".fancybox").fancybox({
 *         media: {}
 *     });
 *
 *  Supports:
 *      Youtube
 *          http://www.youtube.com/watch?v=opj24KnzrWo
 *          http://youtu.be/opj24KnzrWo
 *      Vimeo
 *          http://vimeo.com/25634903
 *      Metacafe
 *          http://www.metacafe.com/watch/7635964/dr_seuss_the_lorax_movie_trailer/
 *          http://www.metacafe.com/watch/7635964/
 *      Dailymotion
 *          http://www.dailymotion.com/video/xoytqh_dr-seuss-the-lorax-premiere_people
 *      Twitvid
 *          http://twitvid.com/QY7MD
 *      Twitpic
 *          http://twitpic.com/7p93st
 *      Instagram
 *          http://instagr.am/p/IejkuUGxQn/
 *          http://instagram.com/p/IejkuUGxQn/
 *      Google maps
 *          http://maps.google.com/maps?q=Eiffel+Tower,+Avenue+Gustave+Eiffel,+Paris,+France&t=h&z=17
 *          http://maps.google.com/?ll=48.857995,2.294297&spn=0.007666,0.021136&t=m&z=16
 *          http://maps.google.com/?ll=48.859463,2.292626&spn=0.000965,0.002642&t=m&z=19&layer=c&cbll=48.859524,2.292532&panoid=YJ0lq28OOy3VT2IqIuVY0g&cbp=12,151.58,,0,-15.56
 */
(function(e){var t=e.fancybox;t.helpers.media={beforeLoad:function(e,t){var n=t.href||"",r=!1,i;if(i=n.match(/(youtube\.com|youtu\.be)\/(v\/|u\/|embed\/|watch\?v=)?([^#\&\?]*).*/i))n="//www.youtube.com/embed/"+i[3]+"?autoplay=1&autohide=1&fs=1&rel=0&enablejsapi=1",r="iframe";else if(i=n.match(/vimeo.com\/(\d+)\/?(.*)/))n="//player.vimeo.com/video/"+i[1]+"?hd=1&autoplay=1&show_title=1&show_byline=1&show_portrait=0&color=&fullscreen=1",r="iframe";else if(i=n.match(/metacafe.com\/watch\/(\d+)\/?(.*)/))n="//www.metacafe.com/fplayer/"+i[1]+"/.swf?playerVars=autoPlay=yes",r="swf";else if(i=n.match(/dailymotion.com\/video\/(.*)\/?(.*)/))n="//www.dailymotion.com/swf/video/"+i[1]+"?additionalInfos=0&autoStart=1",r="swf";else if(i=n.match(/twitvid\.com\/([a-zA-Z0-9_\-\?\=]+)/i))n="//www.twitvid.com/embed.php?autoplay=0&guid="+i[1],r="iframe";else if(i=n.match(/twitpic\.com\/(?!(?:place|photos|events)\/)([a-zA-Z0-9\?\=\-]+)/i))n="//twitpic.com/show/full/"+i[1],r="image";else if(i=n.match(/(instagr\.am|instagram\.com)\/p\/([a-zA-Z0-9_\-]+)\/?/i))n="//"+i[1]+"/p/"+i[2]+"/media/?size=l",r="image";else if(i=n.match(/maps\.google\.com\/(\?ll=|maps\/?\?q=)(.*)/i))n="//maps.google.com/"+i[1]+""+i[2]+"&output="+(i[2].indexOf("layer=c")?"svembed":"embed"),r="iframe";r&&(t.href=n,t.type=r)}}})(jQuery);