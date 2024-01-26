const inputBtn = document.getElementById("input-btn");
const heritageDiv = document.getElementById("heritage-div");

inputBtn.addEventListener("click", (e) => {
	const heritage = {
		royal_id: 0,
		royal_inner_name: "",
		royal_inner_detail: "",
		royal_inner_imgpath: "",
	};
	// console.log(e);
	heritageDiv.innerHTML = "";
	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", (e) => {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			const xmlData = xhttp.responseXML;
			// console.log(xmlData);

			let heritages = xmlData.querySelectorAll("list");
			console.log(heritages.length);
			for (let i = 0; i < heritages.length; ++i) {
				let heritage_child = heritages[i].children;
				for (let j = 0; j < heritage_child.length; j++) {
					let tagName = heritage_child[j].tagName;
					let innerHTML = heritage_child[j].innerHTML;

					if (tagName === "gung_number") {
						heritage.royal_id == parseInt(innerHTML);
					} else if (tagName === "contents_kor") {
						heritage.royal_inner_name = innerHTML;
					} else if (tagName === "explanation_kor") {
						heritage.royal_inner_detail = innerHTML;
					} else if (tagName === "imgUrl") {
						heritage.royal_inner_imgpath = innerHTML;
					}
				}
				console.log(heritage);
			}
		}
	});
	xhttp.open("GET", "https://www.heritage.go.kr/heri/gungDetail/gogungListOpenApi.do");
	xhttp.send();
});
