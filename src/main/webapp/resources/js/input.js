const inputBtn = document.getElementById("input-btn");

inputBtn.addEventListener("click", (e) => {
	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", (e) => {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			const xmlData = xhttp.responseXML;
			console.log(xmlData);
		}
	});
	xhttp.open("GET", "https://www.heritage.go.kr/heri/gungDetail/gogungListOpenApi.do");
	xhttp.send();
});
