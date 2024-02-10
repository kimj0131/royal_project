/**
 * 이미지 슬라이드
 */

let slideIndex = 0;

showSlides();

// 이미지 슬라이드 함수
function showSlides() {
    let i;
    let slides = document.getElementById("imageSlider").getElementsByTagName("img");

    // 모든 이미지를 숨김
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }

    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    

    // 현재 이미지를 보여줌
    slides[slideIndex-1].style.display = "block";  

    // 3초마다 다음 이미지를 보여줌
    setTimeout(showSlides, 3000);
}

/**
 * 내부건축물 이름에 스타일 변경
 */

const royalIdElement = document.getElementById('royalId');
const getRoyalId = royalIdElement.value;
//console.log(getRoyalId);
const innerDivs = document.querySelectorAll('.innerNameDiv');

let currentSelectedDiv = null;

const applyArrow = (innerDiv) => {
    const arrowIcon = document.createElement("i");
    arrowIcon.classList.add("fa-solid", "fa-angles-down");
    innerDiv.appendChild(arrowIcon);
    // 선택된 요소에 클래스 추가
    innerDiv.classList.add('selected');
};

const hideArrow = (innerDiv) => {
    const arrowIcon = innerDiv.querySelector('.fa-angles-down');
    if (arrowIcon) {
        arrowIcon.remove();
    }
    // 선택된 요소에서 클래스 제거
    innerDiv.classList.remove('selected');
};

// 내부 건물 이름을 클릭할 때마다 화살표 표시 상태

innerDivs.forEach(innerDiv => {
    innerDiv.addEventListener('click', () => {
        if (currentSelectedDiv !== null) {
            hideArrow(currentSelectedDiv);
        }

        applyArrow(innerDiv);
        innerDiv.classList.add('selected');
        currentSelectedDiv = innerDiv;

    });
});
