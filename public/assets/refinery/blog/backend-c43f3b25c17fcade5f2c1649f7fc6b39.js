$(document).ready(function(){function e(e){return e.split(/,\s*/)}function t(t){return e(t).pop()}$('nav#actions.multilist > ul:not(.search_list) li a[href$="'+window.location.pathname+'"]').parent().addClass("selected"),$("nav#actions.multilist > ul:not(.search_list) li.selected").length==0&&$("nav#actions.multilist > ul:not(.search_list) li a:nth(1)").parent().addClass("selected"),$("nav#actions.multilist > ul:not(.search_list) li > a").each(function(e,t){$(this).data("dialog-title")==null&&$(this).bind("click",function(){$(this).css("background-image","url('/images/refinery/icons/ajax-loader.gif') !important")})}),$("ul.collapsible_menu").each(function(e,t){(first_li=$(this).children("li:first")).after(div=$("<div></div>")),$("<span class='arrow'>&nbsp;</span>").appendTo(first_li),$(this).children("li.selected").length==0&&(div.hide(),first_li.addClass("closed")),$(this).children("li:not(:first)").appendTo(div),first_li.find("> a, > span.arrow").click(function(e){$(this).parent().toggleClass("closed"),$(this).parent().toggleClass("open"),$(this).parent().next("div").animate({opacity:"toggle",height:"toggle"},250,$.proxy(function(){$(this).css("background-image",null)},$(this))),e.preventDefault()})}),$(".success_icon, .failure_icon").bind("click",function(e){$.get($(this).attr("href"),$.proxy(function(e){$(this).css("background-image",null).removeClass("failure_icon").removeClass("success_icon").addClass(e.enabled?"success_icon":"failure_icon")},$(this))),e.preventDefault()}),$(function(){$("#page-tabs").tabs(),$("#copy_body_link").click(function(e){var t=$("#blog_post_custom_teaser")[0],n=null;$.each(WYMeditor.INSTANCES,function(e,r){r._element[0]==t&&(n=r)}),n&&n.html($("#blog_post_body").attr("value")),e.preventDefault()})}),page_options.init(!1,"",""),$("<%= dom_id %>").bind("keydown",function(e){e.keyCode===$.ui.keyCode.TAB&&$(this).data("autocomplete").menu.active&&e.preventDefault()}).autocomplete({source:function(e,n){$.getJSON("<%= url %>",{term:t(e.term)},n)},search:function(){var e=t(this.value);if(e.length<2)return!1},focus:function(){return!1},select:function(t,n){var r=e(this.value);return r.pop(),r.push(n.item.value),r.push(""),this.value=r.join(", "),!1}})});