// 최종 예약하기 버튼을 눌렀을 때 servlet으로 보내질 input 태그 value 설정하기 위한 변수들
let royal_id_input = $('#royal_id_input');
let event_id_input = $('#event_id_input');
let resv_eventdate_input = $('#resv_eventdate_input');
let round_num_input = $('#round_num_input');
let resv_people_input = $('#resv_people_input');
let event_name_input = $('#event_name_input');
let round_time_input = $('#round_time_input');

let royal_id_value;
let event_id_value;
let resv_eventdate_value;
let round_num_value;
let resv_people_value;
let event_name_value;
let round_time_value;


// event_round_list에 event_round 가 존재하지 않을 경우에
// 예약 가능한 날짜를 선택해 달라는 안내문을 출력하기 위한 function
function createDefaultEventRound() {
	if ($('.default_event_round').length == 0) {
		const newDefaultEventRound = document.createElement('div');
		newDefaultEventRound.classList.add('default_event_round');

		const newDefault_event_round_img = document.createElement('img');
		newDefault_event_round_img.classList.add('default_event_round_img');
		newDefault_event_round_img.src = 'http://localhost:9000/royal/resources/image/reservation/caution.png';

		const newDefault_event_round_text = document.createElement('div');
		newDefault_event_round_text.classList.add('default_event_round_text');
		newDefault_event_round_text.textContent = '먼저 예약 가능한 날짜를 선택해 주세요.';

		newDefaultEventRound.appendChild(newDefault_event_round_img);
		newDefaultEventRound.appendChild(newDefault_event_round_text);

		$('.commentary-list').append(newDefaultEventRound);
	}
}

// 날짜를 선택하고 회차를 선택했을 때 발생하는 이벤트
function resvBtnEvent(royal_id, event_id, event_name, dateText, round_num, round_time, availableReservationNum) {

	// 예약정보 입력칸에 정보 설정하기
	var resvName = $('.resvName');
	var resvTime = $('.resvTime');

	let date = new Date(dateText);

	resvName.text(event_name);
	resvTime.text(`${date.getFullYear()}년 ${date.getMonth() + 1}월 ${date.getDate()}일 / ${round_num}회차 ${round_time}`);


	// 예약 신청인원 동적으로 변경하기
	// 현재 예약 가능한 인원수에 맞게 옵션이 설정됨
	var resUserCnt = $('#resUserCnt');
	resUserCnt.empty();
	for (let i = 10; i <= availableReservationNum; ++i) {
		var newOption = document.createElement('option');
		newOption.value = i;
		newOption.innerHTML = i;
		resUserCnt.append(newOption);
	}

	// 최종 예약하기 버튼을 눌렀을 때 servlet으로 보내질 input 태그 value 설정
	royal_id_value = royal_id;
	event_id_value = event_id;
	resv_eventdate_value = dateText;
	round_num_value = round_num;
	event_name_value = event_name;
	round_time_value = round_time;

	royal_id_input.val(royal_id_value);
	event_id_input.val(event_id_value);
	resv_eventdate_input.val(resv_eventdate_value);
	round_num_input.val(round_num_value);
	event_name_input.val(event_name_value);
	round_time_input.val(round_time_value);
}

// datepicker에서 지난 날짜와 휴무일을 비활성 하기 위한 function
// 월요일: 창덕궁2, 창경궁3, 덕수궁4  /  화요일: 경복궁1, 종묘5
function preventSelection(date, royal_id) {
	let today = new Date();
	today.setHours(0, 0, 0, 0);
	if (royal_id == 2 || royal_id == 3 || royal_id == 4) {
		return date.valueOf() >= today.valueOf() && date.getDay() != 1 ? [true, ""] : [false, ""];
	} else if (royal_id == 1 || royal_id == 5) {
		return date.valueOf() >= today.valueOf() && date.getDay() != 2 ? [true, ""] : [false, ""];
	}
}

const palaceNames = document.querySelectorAll(".royalname");

for (const palaceName of palaceNames) {
	palaceName.addEventListener("click", (e) => {

		// 궁을 클릭할때 마다 event_round_list 초기화
		$("#event_round_list").empty();

		createDefaultEventRound();

		// 최종적으로 예약하기 했을 때 보낼 royal_id 반영
		const royal_id = palaceName.querySelector('input[name="royal_id"]').value;
		royal_id_value = royal_id;

		// 궁 클릭 유지
		for (const palaceName of palaceNames) {
			if (e.currentTarget == palaceName) {
				var innerText = e.currentTarget.innerText;
				if (innerText == '경복궁') {
					e.target.id = 'gbBtn_active';
				} else if (innerText == '덕수궁') {
					e.target.id = 'dsBtn_active';
				} else if (innerText == '창경궁') {
					e.target.id = 'chBtn_active';
				} else if (innerText == '창덕궁') {
					e.target.id = 'cdBtn_active';
				} else if (innerText == '종묘') {
					e.target.id = 'gmBtn_active';
				}
			} else {
				palaceName.id = '';
			}
		}

		// AJAX를 통해 선택한 궁의 모든 해설 이벤트를 가져온다
		$("#datepicker")
			.datepicker("destroy")
			.datepicker({

				// 지난 날짜 비활성화
				beforeShowDay: (date) => preventSelection(date, royal_id),
				onSelect: (dateText) => {


					// 사용자가 달력에서 선택한 날짜
					let selectedDate = dateText;

					// 달력에서 날짜를 선택하면 default_event_round를 제거
					$('.default_event_round').remove();
					// 달력에서 날짜를 바꾸면 기존의 event_round를 모두 제거
					$("#event_round_list").empty();

					$.ajax({
						url: "/royal/palace/getEventList",
						method: "GET",
						data: {
							royal_id: royal_id,
							date: selectedDate,
						},
						success: (data) => {
							// 이벤트 데이터를 파싱하여 JavaScript 객체로 변환
							const eventData = data;

							// 회차를 표시할 Div 선택
							const event_round_list = document.getElementById("event_round_list");

							// 제목 추가
							const event_round_num_header = document.createElement("div");
							event_round_num_header.classList.add("eventRoundHeader");
							event_round_num_header.classList.add("allEventRound");
							event_round_num_header.textContent = "회차";

							const event_round_time_header = document.createElement("div");
							event_round_time_header.classList.add("eventRoundHeader");
							event_round_time_header.classList.add("allEventRound");
							event_round_time_header.textContent = "시간";

							const event_round_resvNum_header = document.createElement("div");
							event_round_resvNum_header.classList.add("eventRoundHeader");
							event_round_resvNum_header.classList.add("allEventRound");
							event_round_resvNum_header.textContent = "예약인원";

							const event_round_stat_header = document.createElement("div");
							event_round_stat_header.classList.add("eventRoundHeader");
							event_round_stat_header.classList.add("allEventRound");
							event_round_stat_header.textContent = "상태";

							event_round_list.appendChild(event_round_num_header);
							event_round_list.appendChild(event_round_time_header);
							event_round_list.appendChild(event_round_resvNum_header);
							event_round_list.appendChild(event_round_stat_header);

							// 각 회차 정보를 Div에 추가
							eventData.forEach((event) => {
								//const eventDiv = document.createElement("div");

								var event_name = event.event_name;
								var round_num = event.round_num; // 회차
								var round_time = event.round_time;
								var curr_resv_people = event.curr_resv_people;
								var round_capacity = event.round_capacity;

								// 회차 정보를 Div에 추가
								const event_round_num_data = document.createElement("div");
								event_round_num_data.classList.add('allEventRound');
								event_round_num_data.textContent = `${round_num}`;

								const event_round_time_data = document.createElement("div");
								event_round_time_data.classList.add('allEventRound');
								event_round_time_data.textContent = `${round_time}`;

								const event_round_resvNum_data = document.createElement("div");
								event_round_resvNum_data.classList.add('allEventRound');
								event_round_resvNum_data.textContent = `${curr_resv_people}/${round_capacity}`;

								const event_round_stat_btn_data = document.createElement("div");
								event_round_stat_btn_data.classList.add('allEventRound');
								const event_round_stat_btn = document.createElement("button");
								event_round_stat_btn.classList.add('eventRoundBtn');
								event_round_stat_btn.addEventListener('click', (e) => resvBtnEvent(royal_id, event.event_id, event_name, dateText, round_num, round_time, round_capacity - curr_resv_people));

								// 예약가능한 인원수가 10명보다 적다면 예약 불가
								if (round_capacity - curr_resv_people < 10) {
									event_round_stat_btn.classList.add('deactiveBtn');
								} else {
									event_round_stat_btn.classList.add('activeBtn');
								}


								// 당일 해설을 예약할 때 시간이 지났다면 예약 불가
								var nowDate = new Date();
								var month = nowDate.getMonth() < 9 ? `0${nowDate.getMonth() + 1}` : nowDate.getMonth() + 1;
								var day = nowDate.getDate() < 10 ? `0${nowDate.getDate()}` : nowDate.getDate();
								var year = nowDate.getFullYear();
								var modified_nowDate = `${month}/${day}/${year}`;
								var now_whole_minutes = nowDate.getHours() * 60 + nowDate.getMinutes();

								const round_time_str = round_time;
								const round_time_date = new Date();
								round_time_date.setHours(round_time_str.split(":")[0]); // 시간 설정
								round_time_date.setMinutes(round_time_str.split(":")[1]); // 분 설정
								const round_time_whole_minutes = round_time_date.getHours() * 60 + round_time_date.getMinutes(); // 분 계산

								if (modified_nowDate == selectedDate) {
									// 행사 시간 30분 전까지만 예약 가능
									if (now_whole_minutes > round_time_whole_minutes - 30) {
										event_round_stat_btn.classList.remove('activeBtn');
										event_round_stat_btn.classList.add('deactiveBtn');
									}
								}

								event_round_stat_btn.textContent = '예약하기';
								event_round_stat_btn_data.appendChild(event_round_stat_btn);

								// event_round_list에 data추가
								event_round_list.appendChild(event_round_num_data);
								event_round_list.appendChild(event_round_time_data);
								event_round_list.appendChild(event_round_resvNum_data);
								event_round_list.appendChild(event_round_stat_btn_data);
							});
						},
						error: (error) => {
							console.log("Error", error);
						},
					});
				},
			});

	});
}


let finalResvBtn = $('#finalResvBtn');

finalResvBtn.click(function () {
	// 최종 예약하기 버튼을 눌렀을 때 예약 인원수 설정
	resv_people_input.val($('#resUserCnt').val());

	// 개인정보활용동의 및 CCTV 촬영동의 체크박스
	var resPriPolicyYn = $('#resPriPolicyYn');
	var resFilmYn = $('#resFilmYn');

	if (royal_id_input.val() == '' || event_id_input.val() == ''
		|| resv_eventdate_input.val() == '' || round_num_input.val() == '' || resv_people_input.val() == '') {
		alert('예약하실 날짜와 시간을 선택해주세요.');
		return;
	}
	if (!resPriPolicyYn.is(':checked') || !resFilmYn.is(':checked')) {
		alert('개인정보활용동의 및 CCTV 촬영동의 항목을 체크해 주세요. ');
		return;
	}
	alert('예약이 완료되었습니다.\n예약 상세정보를 회원님의 이메일로 발송하였습니다.');
	$('#commitBtn').click();
});


// datepicker design
$.datepicker.setDefaults({
	dateFormat: 'mm/dd/yy',
	prevText: '이전 달',
	nextText: '다음 달',
	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	showMonthAfterYear: true,
	yearSuffix: '년'
});
