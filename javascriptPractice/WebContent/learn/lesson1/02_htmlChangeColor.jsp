<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网页换肤</title>

<style>
body,ul,li{margin:0; padding:0;}
html,body{height:100%;}
body{font:12px/1.5 Microsoft-YaHei;}
li{list-style-type:none;}
a:link, a:visited{text-decoration:none;}
a:hover{text-decoration:underline;}
#outer{width:500px; margin:0 auto; overflow:hidden; zoom:1;}
#skin,#nav{overflow:hidden; zoom:1;}
#skin{margin:10px 0;}
#skin li{float:left; width:6px; height:6px; cursor:pointer; overflow:hidden; margin-right:10px; text-indent: -9999px; border-width:4px; border-style:solid;}
#skin li.current{background:#fff!important;}
#red{border-color:red; background:red;}
#green{border-color:green; background:green;}
#black{border-color:black; background:black;}
#nav{border:1px solid #fff;}
#nav li{float:left; width:82px; line-height:25px; text-align:center; border-right:1px solid #fff;}
#nav li.last{width:83px; border-right-width:0;}
#nav li a{color:#fff;}
</style>

<link href="learn/lesson1/green.css" rel="stylesheet" type="text/css" />

<script>
	window.onload = function () {
		var oLink = document.getElementsByTagName("link")[0];
		var oSkin = document.getElementById("skin").getElementsByTagName("li");
		
		for(var i = 0; i < oSkin.length; i++) {
			oSkin[i].onclick = function () {
				for(var p in oSkin) oSkin[p].className = "";
				this.className = "current";
				oLink['href'] = "learn/lesson1/" + this.id + ".css";
			}
		}
	}
</script>

</head>
<body>
	<div id="outer">
		<ul id="skin">
			<li id="red" title="红色">红</li>
			<li id="green" title="绿色">绿</li>
			<li id="black" title="黑色">黑</li>
		</ul>
		<ul id="nav">
			<li><a href="javascript:;">新闻</a></li>
			<li><a href="javascript:;">娱乐</a></li>
			<li><a href="javascript:;">体育</a></li>
			<li><a href="javascript:;">电影</a></li>
			<li><a href="javascript:;">音乐</a></li>
			<li class="last"><a href="javascript:;">旅游</a></li>
		</ul>
	</div>
</body>
</html>