
$(function(){

	var opts = {
		zoom : 15,
		navigationControl : new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_ZOOM}),
		enableCopyrightControl : true// 显示版权信息
	};
	var ts = $("#map").baidumap(opts);
	
	var sContent =
	"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>天安门</h4>" + 
	"<img style='float:right;margin:4px' id='imgDemo' src='http://app.baidu.com/map/images/tiananmen.jpg' width='80' height='60' title='天安门'/>" + 
	"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>天安门坐落在中国北京市中心,故宫的南侧,与天安门广场隔长安街相望,是清朝皇城的大门...</p>" + 
	"</div>";
	
	var winOpts = {
	  width : 220,     // 信息窗口宽度
	  height: 110     // 信息窗口高度
	}
	var infoWindow = new BMap.InfoWindow(sContent,winOpts);  // 创建信息窗口对象
	var markerClickEvent = function(){          
		   this.openInfoWindow(infoWindow);
		   //图片加载完毕重绘infowindow
		   document.getElementById('imgDemo').onload = function (){
			   infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
		   }
		}
	
	ts.search("上海", "田林路100号", markerClickEvent);

	// 设置并加载右键菜单
	var menuOptions = [{
		text : '乘公交',
		callback : function() {
			alert('乘公交');
		}
	}, {
		text : '乘地铁',
		callback : function() {
			alert('乘地铁');
		}
	}, {
		text : '-'
	}, {
		text : '标注该坐标..',
		callback : savePoint
	} ];
	
	ts.addContextMenu(menuOptions);
	
	function savePoint(point) {
		if (console) {
			console.log("缩放级别：" + ts.map.getZoom() + "；坐标：" + point.lat + "," + point.lng);
		}
		ts.createMarker({
			point : point
		});
	}
    
});