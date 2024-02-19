const palaceNames = document.querySelectorAll(".royalname");

for (const palaceName of palaceNames) {
	palaceName.addEventListener("click", () => {
		const royal_id = palaceName.querySelector('input[name="royal_id"]').value;
		console.log("Royal ID:", royal_id);

		// AJAX를 통해 선택한 궁의 모든 해설 이벤트를 가져온다

		// db에 저장된이벤트들중 각 궁에 대한 이벤트 ID
		// let event_id;
		// switch (royal_id) {
		// 	case "1":
		// 		event_id = 40;
		// 		break; // 경복궁
		// 	case "4":
		// 		event_id = 41;
		// 		break; // 덕수궁
		// 	case "3":
		// 		event_id = 42;
		// 		break; // 창경궁
		// 	case "2":
		// 		event_id = 43;
		// 		break; // 창덕궁
		// 	case "5":
		// 		event_id = 44;
		// 		break; // 종묘
		// 	default:
		// 		break;
		// }
		$("#datepicker")
			.datepicker("destroy")
			.datepicker({
				beforeShowDay: (date) => {
					let today = new Date();
					today.setHours(0, 0, 0, 0);
					return date.valueOf() >= today.valueOf() ? [true, ""] : [false, ""];
				},
				onSelect: (dateText) => {
					let selectedDate = dateText;
					console.log("선택된 날짜:", selectedDate);
					// 기존의 이벤트를 모두 제거
					$("#event-list").empty();
					$.ajax({
						url: "/royal/palace/getEventList",
						method: "GET",
						data: {
							royal_id: royal_id,
							date: selectedDate,
						},
						success: (data) => {
							// console.log("AJAX 요청 성공 - 서버 응답:", data);

							// 이벤트 데이터를 파싱하여 JavaScript 객체로 변환
							const eventData = data;
							// console.log("파싱한 eventData:", eventData);

							// 회차를 표시할 Div 선택
							const eventContainer = document.getElementById("event-list");

							// 각 회차 정보를 Div에 추가
							eventData.forEach((event) => {
								const eventDiv = document.createElement("div");
								eventDiv.classList.add("event");

								// 회차 정보를 Div에 추가
								const roundNumber = document.createElement("p");
								roundNumber.textContent = `회차 번호: ${event.round_num}`;
								const time = document.createElement("p");
								time.textContent = `시간: ${event.round_time}`;
								const reservationInfo = document.createElement("p");
								reservationInfo.textContent = `예약 인원: ${event.curr_resv_people}/${event.round_capacity}`;

								eventDiv.appendChild(roundNumber);
								eventDiv.appendChild(time);
								eventDiv.appendChild(reservationInfo);

								eventContainer.appendChild(eventDiv);
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

// 해당하는 이벤트의 회차 정보를 가져와서 리스트로 뿌린다
//필요한정보: 회차번호 (1회차~5회차 )/ 시간  / 예약인원 (예약한인원/총예약가능인원) / 상태 (예약가능/예약마감)
// 이벤트 회차 리스트 (event_round)
// round_id 1~5
// event_id (경복궁 40, 덕수궁 41, 창경궁 42, 창덕궁 43, 종묘 44)
// round_time (10:00, 11:00, 13:00, 14:00, 15:00)
// round_capacity 30명
// 받은 이벤트 정보를 화면에 표시하는 함수
