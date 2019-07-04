var script = document.createElement('script');
script.src = 'http://code.jquery.com/jquery-1.6.4.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);

$(function() {
	$("#insert").click(function() {
		if ($("#pid").val().length < 3) {
			alert("3글자 이상 써주세요!!")
			return false;
		}
	})

})