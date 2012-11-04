window.onload = function() {
    var intent = window.intent || window.webkitIntent;
    if(intent) {
        if(intent.type === "text/uri-list") {
            var href = "https://www.yammer.com/home/bookmarklet?u=" +
                    encodeURI(intent.data);
	    if(typeof intent.extras !== "undefined") {
		var extras = intent.extras;
		if(extras.title) {
		    href += "&t=" + encodeURI(extras.title);
		}
	    }           
            window.location = href;
        }
    }
}
