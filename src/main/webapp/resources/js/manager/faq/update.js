// 자주묻는질문 추가 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const faq_title = document.querySelector('.faq_title').value;
  const faq_result = document.querySelector('.faq_result').value;

  console.log(faq_title);
  console.log(faq_result);

  if (faq_title == null || faq_result == null || faq_title == '' || faq_result == '') {
    alert('제목과 내용을 반드시 입력해주세요');
  } else {
    submitInput.click();
  }
});

// 테이블의 각 행을 눌렀을 때 비동기 방식으로 각 행사의 디테일 정보 가져오기
const rows = $('.tableRowData');
rows.each(function (index, item) {
  item.addEventListener('click', (e) => {

    $.ajax(ajaxSettings = {
      url: `/royal/manage/main/faq/ajax/${item.id}`,
      method: 'GET',
      dataType: 'json',
      success: (object, state, xhttp) => {

        var faq = object.FAQ;

        console.log(faq);

        //// 타입 넣기 ////
        var selected_royal = $('#selected_royal');
        var royal_id = faq.royal_id;
        // select태그 안에 있는 옵션 태그들의 인덱스는 
        // 이벤트리스트 테이블에있는 (royal_id - 1) 과 매치 된다는 것을 이용
        selected_royal.children().each(function (index, element) {
          if (element.index == royal_id - 1) {
            element.defaultSelected = true;
          } else {
            element.defaultSelected = false;
          }
        });

        //// faq 제목 넣기 ////
        var selected_title = $('#selected_title');
        var faq_title = faq.faq_title;
        selected_title.val(faq_title);

        //// faq 내용 넣기 ////
        var selected_result = $('#selected_result');
        var faq_result = faq.faq_result;
        selected_result.val(faq_result);


        //// 수정할 행사 아이디 넣기 ////
        let selected_event_title = document.querySelector('#selected_faq_title');
        let selected_event_hidden = document.querySelector('#selected_faq_hidden');

        selected_event_title.innerHTML = `수정할 자주 묻는 질문 ID - [${faq.faq_id}]`;
        selected_event_hidden.value = faq.faq_id;

      }
    });
  });
});
