// 행사 추가 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const resv_id = document.querySelector('#resv_id');

  // 삭제할 행사id를 입력하지 않으면 submit안됨
  if (resv_id.value == null || resv_id.value == '') {
    alert('취소할 예약id를 설정해주세요');
  } else {
    submitInput.click();
  };


});