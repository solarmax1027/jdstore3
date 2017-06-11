// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/carousel
//= require ckeditor/init
//= require social-share-button
//= require social-share-button/wechat
//= require 'china_city/jquery.china_city'
//= require underscore
//= require gmaps/google
//= require_tree .


/*===== 首页导览列变化特效 =====*/
$(window).scroll(function () {
	if ($(this).scrollTop() > 125) {  //当画面高度至125px时触发效果
		$('#navbar').addClass('scroll_navbar')  //navbar 增加 scroll_navbar CSS
	} else {
		$('#navbar').removeClass('scroll_navbar') //navbar 移除 scroll_navbar CSS
	}
})

<!-- 评价星星效果 -->
$('.star-freshness').raty({
			path: '/assets/',
					readOnly: true,
					score: function() {
				return $(this).attr('data-score');
			}
});
$('.star-look').raty({
			path: '/assets/',
					readOnly: true,
					score: function() {
				return $(this).attr('data-score');
			}
});
$('.star-price').raty({
			path: '/assets/',
					readOnly: true,
					score: function() {
				return $(this).attr('data-score');
			}
});

$('#star-freshness').raty({
path: '/assets/',
scoreName: 'review[freshness]'
});

$('#star-look').raty({
path: '/assets/',
scoreName: 'review[look]'
});

$('#star-price').raty({
		path: '/assets/',
		scoreName: 'review[price]'
});


<!-- 必须要选一颗星 -->
$('#star-freshness img').eq(0).trigger('click')
$('#star-look img').eq(0).trigger('click')
$('#star-price img').eq(0).trigger('click')
