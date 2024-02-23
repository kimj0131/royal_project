// 이전 달을 가져옴
function prevMonth(date) {
	var target = new Date(date);
	target.setDate(1);
	target.setMonth(target.getMonth() - 1);

	return getYmd(target);
}

// 다음 달을 가져옴
function nextMonth(date) {
	var target = new Date(date);
	target.setDate(1);
	target.setMonth(target.getMonth() + 1);

	return getYmd(target);
}

// 년월일로 반환
function getYmd(target) {
	// IE에서 날짜 문자열에 0이 없으면 인식 못함
	var month = ("0" + (target.getMonth() + 1)).slice(-2);
	return [target.getFullYear(), month, "01"].join("-");
}

// 해당 월의 전체 일 수와 각 날짜의 정보를 가져오는 함수
function fullDays(date) {
	var target = new Date(date);
	var year = target.getFullYear();
	var month = target.getMonth();

	var firstWeekDay = new Date(year, month, 1).getDay();
	var thisDays = new Date(year, month + 1, 0).getDate();

	var cell = [28, 35, 42]
		.filter(function (n) {
			return n >= firstWeekDay + thisDays;
		})
		.shift();

	var days = [];
	for (var i = 0; i < cell; i++) {
		days[i] = {
			date: "",
			dayNum: "",
			today: false,
		};
	}

	var now = new Date();
	var today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	var inDate;
	for (var index = firstWeekDay, i = 1; i <= thisDays; index++, i++) {
		inDate = new Date(year, month, i);
		days[index] = {
			date: i,
			dayNum: inDate.getDay(),
			today: inDate.getTime() === today.getTime(),
		};
	}

	return days;
}

function drawMonth(date) {
	$("#month-this").text(date.substring(0, 7).replace("-", "."));
	$("#month-prev").data("ym", prevMonth(date));
	$("#month-next").data("ym", nextMonth(date));

	$("#tbl-month").empty();
}

let currentIndex = 0; // 슬라이드 화면 인덱스 초기값

$(function () {
	var date = new Date().toISOString().substring(0, 10);
	drawMonth(date);

	var month_this_html = $("#month-this").html();
	requestAsync(month_this_html);

	// 버튼을 누르면 날짜가 변경되는 이벤트
	$(".month-move").on("click", function (e) {
		e.preventDefault();
		drawMonth($(this).data("ym"));
	});

	// 날짜가 변경되는 아래에 있는 행사 데이터를 비동기방식으로 가져오는 이벤트
	$(".month-move").click((e) => {
		// 날짜가 변경될 때마다 슬라이드에 사용할 currentIndex 초기화
		currentIndex = 0;

		var month_this_html = $("#month-this").html();
		requestAsync(month_this_html);
	});
});

function requestAsync(month_this_html) {
	var year = month_this_html.substring(0, 4);
	var month = month_this_html.substring(5, 7);

	// // 서버에서 이벤트 이미지를 가져오기 위한 AJAX 요청
	$.ajax({
		url: "event/ajax/get", ///palace/event-images
		method: "GET",
		data: { year: year, month: month },
		dataType: "json",
		success: function (evnet_list, state, xhttp) {
			// inner-list에 inner가 있다면 지우는 초기화 작업
			$(".inner-list").empty();

			// 해당 달에 이벤트가 없다면 기본 inner삽입
			// 해당 달에 이벤트가 있다면 이벤트 inner삽입
			if (evnet_list.length == 0) {
				createDefaultEvent();
			} else if (evnet_list.length == 1) {
				evnet_list.forEach((e) => {
					createEvent(
						e.event_imgpath,
						e.royal_id,
						e.event_name,
						e.event_location,
						e.start_date,
						e.end_date,
						e.event_link
					);
				});
			} else {
				evnet_list.forEach((e) => {
					createEvent(
						e.event_imgpath,
						e.royal_id,
						e.event_name,
						e.event_location,
						e.start_date,
						e.end_date,
						e.event_link
					);
				});
				// event가 2개 이상이라면 back/next 버튼 생성
				// 생성한 버튼에 이벤트 add
				createMoveBtn();
				addEventListenerToBtn();
			}
		},
	});
}

function createDefaultEvent() {
	// inner-list 생성
	const innerList = $(".inner-list");

	// 기본 "행사 없음" 구조를 생성할 div 요소
	const defaultInnderDiv = document.createElement("div");
	defaultInnderDiv.classList.add("inner");

	// "detail", "detail_default" 클래스를 가진 div 요소
	const detailDiv = document.createElement("div");
	detailDiv.classList.add("detail", "detail_default");

	// 이미지 ID "eventImg_default"와 이미지 URL을 가진 img 요소
	const eventImg = document.createElement("img");
	eventImg.id = "eventImg_default";
	eventImg.src = "http://localhost:9000/royal/resources/image/event/noEvent.png";

	// "eventContent_default" ID를 가진 div 요소
	const eventContent = document.createElement("div");
	eventContent.id = "eventContent_default";
	eventContent.textContent = "해당 달에 등록된 행사가 없습니다.";

	// detailDiv에 eventImg와 eventContent를 추가
	detailDiv.appendChild(eventImg);
	detailDiv.appendChild(eventContent);

	// defaultInnderDiv에 detailDiv를 추가
	defaultInnderDiv.appendChild(detailDiv);

	// inner-list에 defaultInnderDiv 삽입
	innerList.append(defaultInnderDiv);

	adjustSlideSize();
}

function createEvent(imgPath, royal_id, event_name, event_location, start_date, end_date, event_link) {
	// inner-list 생성
	const innerList = $(".inner-list");

	// inner - 이후 inner-list에 append
	const innerDiv = document.createElement("div");
	innerDiv.classList.add("inner");
	//

	// detail - 이후 inner에 append
	const detailDiv = document.createElement("div");
	detailDiv.classList.add("detail");
	//

	// eventImg - 이후 detail에 append
	const eventImg = document.createElement("img");
	eventImg.id = "eventImg";
	eventImg.src = imgPath;
	//

	// eventContents - 이후 detail에 append
	const eventContents = document.createElement("div");
	eventContents.classList.add("eventContents");

	const Btn = document.createElement("div");
	Btn.classList.add("ALL_BTN");
	if (royal_id == 1) {
		Btn.classList.add("GB_BTN");
		Btn.textContent = "경복궁";
	} else if (royal_id == 2) {
		Btn.classList.add("CD_BTN");
		Btn.textContent = "창덕궁";
	} else if (royal_id == 3) {
		Btn.classList.add("CG_BTN");
		Btn.textContent = "창경궁";
	} else if (royal_id == 4) {
		Btn.classList.add("DS_BTN");
		Btn.textContent = "덕수궁";
	} else if (royal_id == 5) {
		Btn.classList.add("JM_BTN");
		Btn.textContent = "종묘";
	}

	const mainTitle = document.createElement("div");
	mainTitle.classList.add("mainTitle");
	mainTitle.textContent = event_name;

	const subTitle1 = document.createElement("div");
	subTitle1.classList.add("subTitle");

	const locationIcon = document.createElement("span");
	locationIcon.classList.add("material-symbols-outlined");
	locationIcon.style.verticalAlign = "middle";
	locationIcon.textContent = "location_on";

	const locationText = document.createElement("span");
	locationText.style.verticalAlign = "middle";
	locationText.textContent = "장소";

	subTitle1.appendChild(locationIcon);
	subTitle1.appendChild(locationText);

	const content1 = document.createElement("div");
	content1.classList.add("content");
	content1.textContent = event_location;

	const subTitle2 = document.createElement("div");
	subTitle2.classList.add("subTitle");

	const calendarIcon = document.createElement("span");
	calendarIcon.classList.add("material-symbols-outlined");
	calendarIcon.style.verticalAlign = "middle";
	calendarIcon.textContent = "calendar_month";

	const calendarText = document.createElement("span");
	calendarText.style.verticalAlign = "middle";
	calendarText.textContent = "기간";

	subTitle2.appendChild(calendarIcon);
	subTitle2.appendChild(calendarText);

	//// 시작일, 종료일 넣기 ////
	function modifiedDate(date) {
		var date_object = new Date(date);
		var month = date_object.getMonth() < 9 ? `0${date_object.getMonth() + 1}` : date_object.getMonth() + 1;
		var day = date_object.getDate() < 10 ? `0${date_object.getDate()}` : date_object.getDate();
		var modified_end_date = `${date_object.getFullYear()}/${month}/${day}`;
		return modified_end_date;
	}
	const content2 = document.createElement("div");
	content2.classList.add("content");
	content2.textContent = `${modifiedDate(start_date)} ~ ${modifiedDate(end_date)}`;

	const subTitle3 = document.createElement("div");
	subTitle3.classList.add("subTitle");

	const linkIcon = document.createElement("span");
	linkIcon.classList.add("material-symbols-outlined");
	linkIcon.style.verticalAlign = "middle";
	linkIcon.textContent = "link";

	const linkText = document.createElement("span");
	linkText.style.verticalAlign = "middle";
	linkText.textContent = "링크";

	subTitle3.appendChild(linkIcon);
	subTitle3.appendChild(linkText);

	const content3 = document.createElement("div");
	content3.classList.add("content");

	const link = document.createElement("a");
	link.target = "_blank";
	link.href = event_link;
	link.textContent = event_link;

	content3.appendChild(link);

	eventContents.appendChild(Btn);
	eventContents.appendChild(mainTitle);
	eventContents.appendChild(subTitle1);
	eventContents.appendChild(content1);
	eventContents.appendChild(subTitle2);
	eventContents.appendChild(content2);
	eventContents.appendChild(subTitle3);
	eventContents.appendChild(content3);
	//

	// eventImg와 eventContents를 detail에 append
	detailDiv.appendChild(eventImg);
	detailDiv.appendChild(eventContents);
	//

	// datail을 inner에 append
	innerDiv.appendChild(detailDiv);
	//

	// inner를 inner_list에 append
	innerList.append(innerDiv);
	//

	adjustSlideSize();
}

function createMoveBtn() {
	// back / next 버튼 만들기
	const button1 = document.createElement("div");
	button1.classList.add("button1");

	const backButton = document.createElement("a");
	backButton.classList.add("back");
	backButton.title = "이전 이미지";
	backButton.textContent = "<";

	const nextButton = document.createElement("a");
	nextButton.classList.add("next");
	nextButton.title = "다음 이미지";
	nextButton.textContent = ">";

	button1.appendChild(backButton);
	button1.appendChild(nextButton);
	//

	// inner-list 생성 / button append
	const innerList = $(".inner-list");
	innerList.append(button1);
}

/* 
  슬라이드 
*/

function adjustSlideSize() {
	//  adjustSlideSize 함수 내에서 각 슬라이드 요소의 너비를 조절
	var outer = document.querySelector(".outer");
	var innerList = document.querySelector(".inner-list");
	var inners = document.querySelectorAll(".inner");

	inners.forEach((inner) => {
		inner.style.width = `${outer.clientWidth}px`; // inner의 width를 모두 outer의 width로 만들기
		// 각 슬라이드 요소의 너비를 외부 컨테이너(outer)의 너비와 동일하게 설정
		// clientWidth : outer의 가로 값을 가져오겠다
	}); // 각 슬라이드 요소의 style.width 속성을 사용하여 너비를 조절

	innerList.style.width = `${outer.clientWidth * inners.length}px`; // innerList의 width를 inner의 width * inner의 개수로 만들기
	// outer.clientWidth: 외부 컨테이너(outer)의 너비를 픽셀 단위. 즉, 슬라이드 쇼의 가로 길이
	// inners.length: inners 배열의 길이는 슬라이드의 총 개수

	innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // 슬라이드 위치 조절
	// 현재 인덱스에 해당하는 슬라이드를 표시하기 위해 외부 컨테이너의 너비를 현재 인덱스 값만큼 곱한 결과를 음수로 설정
}

// 창 크기가 변경될 때 슬라이드 크기를 조절하는 이벤트 추가
window.addEventListener("resize", adjustSlideSize);
// 'resize'는 발생하는 이벤트에 대한 리스너를 추가
// 브라우저 창의 크기를 조절할 때마다 adjustSlideSize 함수가 호출

/*
  버튼에 이벤트 등록하기
*/

function addEventListenerToBtn() {
	var buttonLeft = document.querySelector(".back");
	var buttonRight = document.querySelector(".next");

	buttonLeft.addEventListener("click", () => {
		// 클릭 이벤트가 발생했을 때 실행되는 코드로 화면을 왼쪽으로 이동
		var outer = document.querySelector(".outer");
		var innerList = document.querySelector(".inner-list");
		var inners = document.querySelectorAll(".inner");

		currentIndex--; //  슬라이드를 이전 슬라이드로 이동
		if (currentIndex < 0) {
			currentIndex = inners.length - 1;
		} // 인덱스가 0보다 작아지면(첫 번째 슬라이드 이전으로 이동하면) 마지막 슬라이드로 이동
		innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
	});

	buttonRight.addEventListener("click", () => {
		var outer = document.querySelector(".outer");
		var innerList = document.querySelector(".inner-list");
		var inners = document.querySelectorAll(".inner");

		currentIndex++;
		currentIndex = currentIndex >= inners.length ? 0 : currentIndex; // index값이 inner의 총 개수보다 많아질 경우 첫 번째로 초기화
		innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
	});
}
