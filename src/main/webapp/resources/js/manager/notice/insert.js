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