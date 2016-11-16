/**
 * 
 */



/*		
function click () {
	var oLink = document.getElementsByTagName("a");
			
	for(var i = 0; i < oLink.length; i++) {
		oLink[i].onclick = function () {
			showPic(oLink[i]);
		}
	}
}
*/
/*
function popUp(winURL) {
	window.open(winURL, "popup", "width=320px,height=480px");
}
*/
//window.onload = prepareLinks;
/*
function prepareLinks () {
	var links = document.getElementsByTagName("a");
	for(var i = 0; i < links.length; i++) {
		if(links[i].getAttribute("class") == "popup") {
			links[i].onclick = function () {
				popUp(this.getAttribute("href"));
				return false;
			}
		}
	}
}
*/

/*
function countBodyChildren () {
	//var body_element = document.getElementsByTagName("body")[0];
	//alert(body_element.childNodes.length);
}
*/

function preparePlaceholder () {
	if (!document.createElement) return false;
	if (!document.createTextNode) return false;
	if (!document.getElementById) return false;
	if (!document.getElementById("imagegallery")) return false;
	
	
	//创建一个img元素节点并给其赋值
	var placeholder = document.createElement("img");
	placeholder.setAttribute("id", "placeholder");
	placeholder.setAttribute("src", "javascriptImagelibrary/images/placeholder.jpg");
	placeholder.setAttribute("alt", "my image gallery");
	
	//创建一个p元素节点并赋值
	var para = document.createElement("p");
	para.setAttribute("id", "description");
	
	//创建一个文本节点
	var text = document.createTextNode("Choose an image.");
	
	//将文本节点插入p元素中
	para.appendChild(text);
	
	//将img元素和p元素插入到文档中
	//var body = document.getElementsByTagName("body")[0];
	//body.appendChild(placeholder);
	//body.appendChild(para);
	var gallery = document.getElementById("imagegallery");
	insertAfter(placeholder, gallery);
	insertAfter(para, placeholder);
}

function prepareGallery () {
	if (!document.getElementById) {
		return false;
	}
	
	if (!document.getElementsByTagName) {
		return false;
	}
	
	if (!document.getElementById("imagegallery")) {
		return false;
	}
	
	var gallery = document.getElementById("imagegallery");
	var links = gallery.getElementsByTagName("a");
	
	for (var i = 0; i < links.length; i++) {
		links[i].onclick = function () {
			return showPic(this);
		}
		links[i].onkeypress = links[i].onclick;
	}
}



function showPic (whichPic) {
	if (!document.getElementById("placeholder")) return true;
	var source = whichPic.getAttribute("href");
	var oImg = document.getElementById("placeholder");
	oImg.setAttribute("src", source); 
	if (!document.getElementById("description")) return false;
	if (whichPic.getAttribute("title")) {
		var text = whichPic.getAttribute("title");
	} else {
		var text = "";
	}
	var description = document.getElementById("description");
	if (description.fisrtChild.nodeType == 3) {
		description.firstChild.nodeValue = text;
	}
	//alert(description.childNodes[0].nodeValue);
	return false;
}

addLoadEvent(prepareGallery);
addLoadEvent(preparePlaceholder);