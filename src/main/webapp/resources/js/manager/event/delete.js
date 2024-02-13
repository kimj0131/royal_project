// 행사 삭제 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const event_id = document.querySelector('#event_id');

  // 삭제할 행사id를 입력하지 않으면 submit안됨
  if (event_id.value == null || event_id.value == '') {
    alert('취소할 행사id를 설정해주세요');
  } else {
    submitInput.click();
  };

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
      url: `/royal/manage/main/event/ajax/${item.id}`,
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