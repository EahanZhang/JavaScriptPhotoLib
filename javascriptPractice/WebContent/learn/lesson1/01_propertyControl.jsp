<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>控制DIV属性</title>
<style>
#outer{width:500px;margin:0 auto;padding:0;text-align:center;}
#div1{width:100px;height:100px;background:black;margin:10px auto;display:block;}
</style>

<script>
	var changeStyle = function (elem, attr, value) {
		elem.style[attr] = value
	};
	
	window.onload = function() {
		var oBtn = document.getElementsByTagName("input");
		var oDiv = document.getElementById("div1");
		var oAtt = ["width","height","background","display","display"];
		var oVal = ["200px","200px","red","none","block"];
		
		for (var i = 0; i < oBtn.length; i++) {
			oBtn[i].index = i;
			oBtn[i].onclick = function() {
				this.index == oBtn.length - 1 && (oDiv.style.cssText = "");
				changeStyle(oDiv, oAtt[this.index], oVal[this.index])
			}
		}
	};
</script>

</head>
<body>
	<div id="outer">
		<input type="button" value="变宽"/>
		<input type="button" value="变高"/>
		<input type="button" value="变色"/>
		<input type="button" value="隐藏"/>
		<input type="button" value="重置"/>
		<div id="div1"></div>
	</div>
</body>
</html>