<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaScript Dom 编程艺术 Character 4</title>

<link type="text/css" rel="stylesheet" href="javascriptImagelibrary/css/imageLibrary.css" />
</head>


<body>

	<script type="text/javascript" src="javascriptImagelibrary/js/showPic.js"></script>
	
	<h1>Snapshot</h1>
	<ul>
		<li>
			<a href="javascriptImagelibrary/images/image1.jpg" onclick="showPic(this);return false;" title="title1">Image1</a>
		</li>
		<li>
			<a href="javascriptImagelibrary/images/image2.jpg" onclick="showPic(this);return false;" title="title2">Image2</a>
		</li>
		<li>
			<a href="javascriptImagelibrary/images/image3.jpg" onclick="showPic(this);return false;" title="title3">Image3</a>
		</li>
		<li>
			<a href="javascriptImagelibrary/images/image4.jpg" onclick="showPic(this);return false;" title="title4">Image4</a>
		</li>
		<li>
			<a href="#" class="popup">popUp</a>
		</li>
	</ul>
	<img id="placeholder" src="javascriptImagelibrary/images/placeholder.jpg" alt="Image Gallery" />
	<p id="description">Choose an image.</p>
	

</body>
</html>