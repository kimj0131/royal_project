
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

  if (roundNum > 4) {
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

// 비동기 방식으로 각 행사의 디테일 정보 가져오기
const rows = $('.tableRowData')
const modal_details = $('#modal_details_top > div:nth-child(even)');
const modal_rounds = $('#modal_details_bottom');

rows.each(function (index, item) {

  item.addEventListener('click', (e) => {
    // 초기화 작업
    modal_rounds.empty();

    $.ajax(ajaxSettings = {
      url: `/royal/YWRtaW5wYWdl/event/ajax/${item.id}`,
      method: 'GET',
      dataType: 'json',
      success: (object, state, xhttp) => {

        // 이미지 넣기
        const modal_details_img = $('.modal_details_img');
        modal_details_img.attr('src', object.event.event_imgpath);

        // 모달 창 타이틀 넣기
        const modal_details_title = $('.modal_details_title');
        const royal_id = object.event.royal_id;
        var royal_name;
        switch (royal_id) {
          case 1:
            royal_name = '경복궁';
            break;
          case 2:
            royal_name = '창덕궁';
            break;
          case 3:
            royal_name = '창경궁';
            break;
          case 4:
            royal_name = '덕수궁';
            break;
          case 5:
            royal_name = '종묘';
            break;
        }
        modal_details_title.html(`${royal_name} - ${object.event.event_name}`);


        // 회차 정보 넣기
        object.event_rounds.forEach(item => {
          const newRoundDiv = document.createElement('div')
          const newText = document.createTextNode(`${item.round_num}회차 : ${item.round_time}`);
          newRoundDiv.appendChild(newText);
          modal_rounds.append(newRoundDiv);
        });

        // 상세 정보 넣기
        modal_details.each(function (index, item) {
          switch (index) {
            case 0:
              item.innerHTML = object.event.event_name;
              break;
            case 1:
              item.innerHTML = object.event.event_location;
              break;
            case 2:
              const start_dateObject = new Date(object.event.start_date);
              item.innerHTML = `${start_dateObject.getFullYear()}년 ${start_dateObject.getMonth() + 1}월 ${start_dateObject.getDate()}일`;
              break;
            case 3:
              const end_dateObject = new Date(object.event.end_date);
              item.innerHTML = `${end_dateObject.getFullYear()}년 ${end_dateObject.getMonth() + 1}월 ${end_dateObject.getDate()}일`;
              break;
            case 4:
              item.innerHTML = object.event.reservable;
              break;
            case 5:
              function autoLineBreak(text, maxLen) {
                const regex = new RegExp(`(.{1,${maxLen}})`, "g");
                return text.replace(regex, "$1<br>");
              }
              const linkText = object.event.event_link;
              const linkResult = autoLineBreak(linkText, 55);
              item.innerHTML = linkResult;
              break;
            case 6:
              function autoLineBreak(text, maxLen) {
                const regex = new RegExp(`(.{1,${maxLen}})`, "g");
                return text.replace(regex, "$1<br>");
              }
              const imgText = object.event.event_imgpath;
              const imgResult = autoLineBreak(imgText, 55);
              item.innerHTML = imgResult;
              break;
          }
        })
      }
    })
  });
});