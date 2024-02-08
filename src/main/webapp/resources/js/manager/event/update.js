
// n회차 칸을 추가할 div
const fg_custom2 = document.querySelector('.fg_custom2 > .form-group');
// plus 버튼
const plusBtn = document.querySelector('.plusBtn');
// minus 버튼
const minusBtn = document.querySelector('.minusBtn');

// 버튼 눌렀을 때 회차 추가
const addInputGroup = () => {

  // n회차 칸이 몇개 들어있는지 확인 하기 위한 nodeList
  var inputGroups_in_fgCustom2 = document.querySelectorAll('.fg_custom2 > .form-group > .input-group');
  var roundNum = inputGroups_in_fgCustom2.length + 1;

  if (roundNum < 11) {
    // 1. 새로운 "1회차" 입력 그룹 요소 생성
    const newInputGroup = document.createElement('div');
    newInputGroup.classList.add('input-group', 'mb-3');

    // 2. "1회차" 라벨과 입력 필드를 포함하는 "input-group-prepend" 요소 생성
    const prependGroup = document.createElement('div');
    prependGroup.classList.add('input-group-prepend');

    const label = document.createElement('span');
    label.classList.add('input-group-text');
    label.id = 'basic-addon1';
    label.textContent = `${roundNum}회차`;

    prependGroup.appendChild(label);

    // 3. "운영시간" 입력 필드 생성
    const input = document.createElement('input');
    input.name = `round${roundNum}`;
    input.type = 'time';
    input.value = '09:00';
    input.classList.add(`roundInput${roundNum}`);
    input.classList.add('form-control');
    input.placeholder = '운영시간';
    input.setAttribute('aria-label', 'time');
    input.setAttribute('aria-describedby', 'basic-addon1');

    // 4. 새로운 입력 그룹에 "input-group-prepend"와 입력 필드 추가
    newInputGroup.appendChild(prependGroup);
    newInputGroup.appendChild(input);

    // 5. 새로운 회차 칸 추가
    fg_custom2.appendChild(newInputGroup);
  }
};

// 버튼 눌렀을 때 회차 삭제
const deleteInputGroup = () => {
  // n회차 칸이 몇개 들어있는지 확인 하기 위한 nodeList
  var formGroup = document.querySelectorAll('.fg_custom2 > .form-group');
  var roundNum = formGroup.item(0).children.length;

  if (roundNum > 3) {
    formGroup.item(0).children.item(roundNum - 1).remove();
  }
};

plusBtn.addEventListener('click', (e) => addInputGroup());
minusBtn.addEventListener('click', (e) => deleteInputGroup());

// 행사 추가 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const start_date = document.querySelector('#start_date').valueAsDate;
  const end_date = document.querySelector('#end_date').valueAsDate;
  const roundInputs = document.querySelectorAll('[class^="roundInput"]');

  roundInputs.forEach((roundInput) => {
    // 시작일, 종료일, 회차별 시간을 입력하지 않았다면 submit 불가
    if (start_date == null || end_date == null || roundInput.valueAsDate == null) {
      alert('시작일, 종료일, 회차별 시간을 설정해 주세요');
    } else {
      submitInput.click();
    }
  });

});

// 테이블의 각 행을 눌렀을 때 비동기 방식으로 각 행사의 디테일 정보 가져오기
const rows = $('.tableRowData');
rows.each(function (index, item) {
  item.addEventListener('click', (e) => {

    $.ajax(ajaxSettings = {
      url: `/royal/YWRtaW5wYWdl/event/ajax/${item.id}`,
      method: 'GET',
      dataType: 'json',
      success: (object, state, xhttp) => {

        var event = object.event;
        var rounds = object.event_rounds;


        // 궁 정보 넣기 //
        var selected_royal = $('#selected_royal');
        var royal_id = event.royal_id;
        // select태그 안에 있는 옵션 태그들의 인덱스는 
        // 이벤트리스트 테이블에있는 (royal_id - 1) 과 매치 된다는 것을 이용
        selected_royal.children().each(function (index, element) {
          if (element.index == royal_id - 1) {
            element.defaultSelected = true;
          } else {
            element.defaultSelected = false;
          }
        });


        // 행사 타입 넣기 //
        var selected_type = $('#selected_type');
        var event_type = event.event_type;
        selected_type.children().each(function (index, element) {
          if (element.innerHTML == event_type) {
            element.defaultSelected = true;
          } else {
            element.defaultSelected = false;
          }
        });


        // 행사 이름 넣기 //
        var selected_name = $('#selected_name');
        var event_name = event.event_name;
        selected_name.val(event_name);


        // 행사 장소 넣기 //
        var selected_location = $('#selected_location');
        var event_location = event.event_location;
        selected_location.val(event_location);


        // 시작일, 종료일 넣기 //
        var selected_start_date = $('#selected_start_date');
        var start_date = event.start_date;
        var selected_end_date = $('#selected_end_date');
        var end_date = event.end_date;
        // 에포크타임을 yyyy-mm-dd 형식으로 바꾸기
        var start_date_object = new Date(start_date);
        var start_month = start_date_object.getMonth() < 10 ? `0${start_date_object.getMonth() + 1}` : start_date_object.getMonth() + 1;
        var start_day = start_date_object.getDate() < 10 ? `0${start_date_object.getDate()}` : start_date_object.getDate();
        var modified_start_date = `${start_date_object.getFullYear()}-${start_month}-${start_day}`;

        var end_date_object = new Date(end_date);
        var end_month = end_date_object.getMonth() < 10 ? `0${end_date_object.getMonth() + 1}` : end_date_object.getMonth() + 1;
        var end_day = end_date_object.getDate() < 10 ? `0${end_date_object.getDate()}` : end_date_object.getDate();
        var modified_end_date = `${end_date_object.getFullYear()}-${end_month}-${end_day}`;

        selected_start_date.val(modified_start_date);
        selected_end_date.val(modified_end_date);


        // 행사 사이트 넣기 //
        var selected_link = $('#selected_link');
        var event_link = event.event_link;
        selected_link.val(event_link);


        // 행사 이미지 경로 넣기 //
        var selected_imgpath = $('#selected_imgpath');
        var event_imgpath = event.event_imgpath;
        selected_imgpath.val(event_imgpath);


        // 예약 가능 여부 넣기 //
        var selected_reservable = $('#selected_reservable');
        var reservable = event.reservable;
        selected_reservable.children().each(function (index, element) {
          if (element.value == reservable) {
            element.defaultSelected = true;
          } else {
            element.defaultSelected = false;
          }
        });

        // 회차별 인원수 넣기 //
        var selected_capacity = $('#selected_capacity');
        var round_capacity = rounds[0].round_capacity;
        selected_capacity.val(round_capacity);


        // 회차 정보 넣기 //

        // 회차 정보칸 리셋
        let formGroup = document.querySelectorAll('.fg_custom2 > .form-group');
        let roundNum = formGroup.item(0).children.length;
        if (roundNum > 3) {
          for (let i = roundNum; i >= 4; --i) {
            formGroup.item(0).children.item(i - 1).remove();
          };
        };

        // 회차 정보 삽입
        rounds.forEach(round => {
          console.log(round.round_time);

          // 1. 새로운 "1회차" 입력 그룹 요소 생성
          var newInputGroup = document.createElement('div');
          newInputGroup.classList.add('input-group', 'mb-3');

          // 2. "1회차" 라벨과 입력 필드를 포함하는 "input-group-prepend" 요소 생성
          var prependGroup = document.createElement('div');
          prependGroup.classList.add('input-group-prepend');

          var label = document.createElement('span');
          label.classList.add('input-group-text');
          label.id = 'basic-addon1';
          label.textContent = `${round.round_num}회차`;

          prependGroup.appendChild(label);

          // 3. "운영시간" 입력 필드 생성
          var input = document.createElement('input');
          input.name = `round${round.round_num}`;
          input.type = 'time';
          input.value = round.round_time;
          input.classList.add(`roundInput${round.round_num}`);
          input.classList.add('form-control');
          input.placeholder = '운영시간';
          input.setAttribute('aria-label', 'time');
          input.setAttribute('aria-describedby', 'basic-addon1');

          // 4. 새로운 입력 그룹에 "input-group-prepend"와 입력 필드 추가
          newInputGroup.appendChild(prependGroup);
          newInputGroup.appendChild(input);

          // 5. 새로운 회차 칸 추가
          fg_custom2.appendChild(newInputGroup);
        });
      }
    });
  });
});
