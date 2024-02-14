// 행사 삭제 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const faq_id = document.querySelector('#faq_id');

  // 삭제할 행사id를 입력하지 않으면 submit안됨
  if (faq_id.value == null || faq_id.value == '') {
    alert('삭제할 자주 묻는 질문 id를 설정해주세요');
  } else {
    submitInput.click();
  };

});