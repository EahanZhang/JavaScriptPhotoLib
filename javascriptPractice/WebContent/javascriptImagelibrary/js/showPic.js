/**
 * 
 */


function showPic (whichPic) {
	var source = whichPic.getAttribute("href");
	var text = whichPic.getAttribute("title");
	var oImg = document.getElementById("placeholder");
	var description = document.getElementById("description");
	oImg.setAttribute("src", source);
	//alert(description.childNodes[0].nodeValue);
	description.childNodes[0].nodeValue = text;
}
		
function click () {
	var oLink = document.getElementsByTagName("a");
			
	for(var i = 0; i < oLink.length; i++) {
		oLink[i].onclick = function () {
			showPic(oLink[i]);
		}
	}
}

function popUp(winURL) {
	window.open(winURL, "popup", "width=320px,height=480px");
}

window.onload = prepareLinks;
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


function countBodyChildren () {
	var body_element = document.getElementsByTagName("body")[0];
	//alert(body_element.childNodes.length);
}