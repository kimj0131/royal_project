const palaceNames = document.querySelectorAll(".royalname");


for (const palaceName of palaceNames) {
	palaceName.addEventListener("click", (e) => {
		// 궁을 클릭할때 마다 event_round_list 초기화
		$("#event_round_list").empty();
		
		const royal_id = palaceName.querySelector('input[name="royal_id"]').value;

		// 궁 클릭 유지
		console.log(e.currentTarget);
		//palaceName.id = "gbBtn_active";
		for (const palaceName of palaceNames) {
			if(e.currentTarget == palaceName){
				var innerText = e.currentTarget.innerText;
				//console.log(e.target.innerText);
				if(innerText == '경복궁'){
					e.target.id = 'gbBtn_active';
				} else if(innerText == '덕수궁'){
					e.target.id = 'dsBtn_active';
				} else if(innerText == '창경궁'){
					e.target.id = 'chBtn_active';

				} else if(innerText == '창덕궁'){
					e.target.id = 'cdBtn_active';

				} else if (innerText == '종묘'){
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
				beforeShowDay: (date) => {
					let today = new Date();
					today.setHours(0, 0, 0, 0);
					return date.valueOf() >= today.valueOf() ? [true, ""] : [false, ""];
				},
				onSelect: (dateText) => {
					let selectedDate = dateText;
					console.log("선택된 날짜:", selectedDate);
					// 기존의 이벤트를 모두 제거
					$("#event_round_list").empty();
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
							const event_round_list = document.getElementById("event_round_list");

							// 제목 추가
							const event_round_num_header = document.createElement("div");
							event_round_num_header.classList.add("eventRoundHeader");
							event_round_num_header.textContent = "회차";

							const event_round_time_header = document.createElement("div");
							event_round_time_header.classList.add("eventRoundHeader");
							event_round_time_header.textContent = "시간";

							const event_round_resvNum_header = document.createElement("div");
							event_round_resvNum_header.classList.add("eventRoundHeader");
							event_round_resvNum_header.textContent = "예약인원";

							const event_round_stat_header = document.createElement("div");
							event_round_stat_header.classList.add("eventRoundHeader");
							event_round_stat_header.textContent = "상태";

							event_round_list.appendChild(event_round_num_header);
							event_round_list.appendChild(event_round_time_header);
							event_round_list.appendChild(event_round_resvNum_header);
							event_round_list.appendChild(event_round_stat_header);

							// 각 회차 정보를 Div에 추가
							eventData.forEach((event) => {
								//const eventDiv = document.createElement("div");

								var round_num = event.round_num; // 회차
								var round_time = event.round_time; 
								var curr_resv_people = event.curr_resv_people;
								var round_capacity = event.round_capacity;

								// 회차 정보를 Div에 추가
								const event_round_num_data = document.createElement("div");
								event_round_num_data.textContent = `${round_num}`;

								const event_round_time_data = document.createElement("div");
								event_round_time_data.textContent = `${round_time}`;

								const event_round_resvNum_data = document.createElement("div");
								event_round_resvNum_data.textContent = `${curr_resv_people}/${round_capacity}`;
								
								const event_round_stat_btn = document.createElement("button");

								if(round_capacity - curr_resv_people < 10){
									event_round_stat_btn.classList.add('deactiveBtn');
							
								} else{
									event_round_stat_btn.classList.add('activeBtn');
								}
								
								event_round_stat_btn.textContent = '예약하기';

								event_round_list.appendChild(event_round_num_data);
								event_round_list.appendChild(event_round_time_data);
								event_round_list.appendChild(event_round_resvNum_data);
								event_round_list.appendChild(event_round_stat_btn);

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


function addEventListenerToBtn() {}