/**
 * 	
 */

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
		return false;
	}
}

addLoadEvent(prepareGallery);