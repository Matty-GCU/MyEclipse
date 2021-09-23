/**
 * 
 */
function fun() {
	var input = Number(document.form.text.value);
	if(input < 0 || input > 100 || input%1 != 0) {
		window.alert("请输入0-100的整数");
		return;
	}
	var str = "";
	if(input/50 > 0) {
		str += parseInt(input/50)!=0 ? parseInt(input/50)+"张50元\n" : "";
		input %= 50;
	}
	if(input/20 > 0) {
		str += parseInt(input/20)!=0 ? parseInt(input/20)+"张20元\n" : "";
		input %= 20;
	}
	if(input/10 > 0) {
		str += parseInt(input/10)!=0 ? parseInt(input/10)+"张10元\n" : "";
		input %= 10;
	}
	if(input/5 > 0) {
		str += parseInt(input/5)!=0 ? parseInt(input/5)+"张5元\n" : "";
		input %= 5;
	}
	if(input/1 > 0) {
		str += parseInt(input/1)!=0 ? parseInt(input/1)+"张1元\n" : "";
		input %= 1;
	}
	document.getElementById("newParagraph").innerHTML = str;
}