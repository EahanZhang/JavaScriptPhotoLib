/**
 *  该函数用于创建一个“缩略语列表”并将其在文档中显示出来
 */

function displayAbbreviations () {
	if (!document.getElementsByTagName) return false;
	if (!document.createElement) return false;
	if (!document.createTextNode) return false;
	
	var abbreviations = document.getElementsByTagName("abbr");
	if (abbreviations.length < 1) {
		return false;
	}
	
	var defs = new Array();
	for (var i = 0; i < abbreviations.length; i++) {
		var current_abbr = abbreviations[i];
		if (current_abbr.childNodes.length < 1) continue;		//IE浏览器会在统计abbr元素的子节点个数时总是返回一个错误的值--零，从而导致下面的代码无法执行。
		var definition = current_abbr.getAttribute("title");	//获取abbr标签内title的值
		var key = current_abbr.lastChild.nodeValue;				//获取abbr标签内文本结点的值
		defs[key] = definition;
	}
	
	
	//开始创建标记，即创建列表
	var dlist = document.createElement("dl");
	for (key in defs) {
		var definition = defs[key];
		
		//
		var dtitle = document.createElement("dt");
		var dtitle_text = document.createTextNode(key);
		dtitle.appendChild(dtitle_text);
		//
		var ddesc = document.createElement("dd");
		var ddesc_text = document.createTextNode(definition);
		ddesc.appendChild(ddesc_text);
		
		dlist.appendChild(dtitle);
		dlist.appendChild(ddesc);
	}
	if (dlist.childNodes.length < 1) return false;
	
	//创建一个提供描述的标题
	var header = document.createElement("h2");
	var header_text = document.createTextNode("Abbreviations");
	header.appendChild(header_text);
	
	//将创建的标题和列表加入到文档中
	var bodys = document.getElementsByTagName("body")[0];
	bodys.appendChild(header);
	bodys.appendChild(dlist);
}

window.onload = displayAbbreviations;