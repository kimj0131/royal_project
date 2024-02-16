window.onload = function () {
    var allResultElements = document.querySelectorAll('.faq-result');
    allResultElements.forEach(function (element) {
        element.classList.add('hidden'); // 모든 결과를 숨김
    });
};

function toggleContent(index) {
    var resultElement = document.getElementById('faq-result-' + index);
    var arrowIcon = document.querySelector('.faq-title #arrow-icon-' + index);

    // 다른 모든 faq-result를 감추기
    var allResultElements = document.querySelectorAll('.faq-result');
    allResultElements.forEach(function (element) {
        if (element !== resultElement) {
            element.classList.add('hidden'); // 다른 결과를 숨김
        }
    });

    // 선택한 요소의 클래스를 토글
    resultElement.classList.toggle('hidden');

    // arrow icon 변경
    if (!resultElement.classList.contains('hidden')) {
        arrowIcon.innerHTML = 'arrow_drop_up'; // 열렸을 때 화살표를 위로 변경
    } else {
        arrowIcon.innerHTML = 'arrow_drop_down'; // 닫혔을 때 화살표를 아래로 변경
    }
}

document.addEventListener('DOMContentLoaded', function () {
	// URL의 쿼리스트링에서 alert 타입을 가져옴
	var alertType = new URLSearchParams(window.location.search).get('alert');

	// alert 타입에 따라 메시지를 설정하고 alert 창을 띄움
	if (alertType === 'success') {
		alert('문의가 정상적으로 접수되었습니다!');
	} else if (alertType === 'error') {
		alert('문의 접수가 실패했습니다!');
	}
});
