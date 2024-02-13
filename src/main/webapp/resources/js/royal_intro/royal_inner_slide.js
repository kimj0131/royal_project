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
