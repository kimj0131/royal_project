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