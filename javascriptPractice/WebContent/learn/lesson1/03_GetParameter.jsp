<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>函数接受参数并弹出</title>

<style>
body{margin:0 auto; padding:0;}
div{margin:10px auto; padding:10px; text-align:center;}
#city, #district{float:center; width:150px; height:20px; margin-top:20px;}
#submit{margin-top:10px;}
</style>

<script>
	window.onload = function () {
		var oBtn = document.getElementById("submit");
		var oTxt1 = document.getElementById("city");
		var oTxt2 = document.getElementById("district");
		
		oBtn.onclick = function () {
			alert(oTxt1.value);
			alert(oTxt2.value);
		}
	}
</script>

</head>
<body>
	<div id="nav">
		<input id="city" type="text" placeholder="请输入城市" />
		</br>
		<input id="district" type="text" placeholder="请出入区域" />
		</br>
		<input id="submit" type="submit" />
	</div>
</body>
</html>