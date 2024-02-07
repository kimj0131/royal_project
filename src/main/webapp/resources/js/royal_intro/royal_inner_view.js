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
const innerDivs = document.querySelectorAll(".innerNameDiv");

innerDivs.forEach(innerDiv => {
    innerDiv.addEventListener("click", () => {
        innerDiv.classList.toggle("selected"); // 선택된 내부 건축물 이름의 스타일 변경
        
        const arrowIcon = document.createElement("i"); // 화살표 아이콘을 생성
        arrowIcon.classList.add("fa-solid", "fa-arrow-down");
        
        if (innerDiv.classList.contains("selected")) {
            innerDiv.appendChild(arrowIcon);
        } else {
            arrowIcon.remove();
        }

        const form = innerDiv.closest('form');
        if (form) {
            form.submit();
        }
    });
});


