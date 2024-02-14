// 행사 삭제 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const notice_id = document.querySelector('#notice_id');

  // 삭제할 행사id를 입력하지 않으면 submit안됨
  if (notice_id.value == null || notice_id.value == '') {
    alert('삭제할 공지사항 id를 설정해주세요');
  } else {
    submitInput.click();
  };

});