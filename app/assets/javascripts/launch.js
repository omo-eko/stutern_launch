function pop(url) {
	newwindow=window.open(url,'name','height=400,width=200 top=200 left=200');
	if (window.focus) {newwindow.focus()}
	return false;
}