// 자주묻는질문 추가 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const notice_title = document.querySelector('.notice_title').value;
  const notice_content = document.querySelector('.notice_content').value;

  if (notice_title == null || notice_content == null || notice_title == '' || notice_content == '') {
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
      url: `/royal/manage/main/notice/ajax/${item.id}`,
      method: 'GET',
      dataType: 'json',
      success: (object, state, xhttp) => {

        var notice = object.notice;

        //// 타입 넣기 ////
        var selected_royal = $('#selected_royal');
        var royal_id = notice.royal_id;
        // select태그 안에 있는 옵션 태그들의 인덱스는 
        // 이벤트리스트 테이블에있는 (royal_id - 1) 과 매치 된다는 것을 이용
        selected_royal.children().each(function (index, element) {
          if (element.index == royal_id - 1) {
            element.defaultSelected = true;
          } else {
            element.defaultSelected = false;
          }
        });

        //// 공지사항 제목 넣기 ////
        var selected_title = $('#selected_title');
        var notice_title = notice.notice_title;
        selected_title.val(notice_title);

        //// 공지사항 내용 넣기 ////
        var selected_content = $('#selected_content');
        var notice_content = notice.notice_content;
        selected_content.val(notice_content);

        //// 수정할 공지사항 아이디 넣기 ////
        let selected_notice_title = document.querySelector('#selected_notice_title');
        let selected_notice_hidden = document.querySelector('#selected_notice_hidden');

        selected_notice_title.innerHTML = `수정할 공지사항 ID - [${notice.notice_id}]`;
        selected_notice_hidden.value = notice.notice_id;

      }
    });
  });
});
