// window.onload = function() {
//     const kindWrap =  document.querySelector('.kind_wrap');
//     const slider = kindWrap.querySelector('.slider');
//     const slideLis = slider.querySelectorAll('.img')
//     const moveButton = kindWrap.querySelector('.arrow');

//     /* 클론 */
//     const clone1 = slideLis[0].cloneNode(true);
//     const cloneLast = slideLis[slideLis.length - 1].cloneNode(true);
//     slider.insertBefore(cloneLast, slideLis[0]);
//     slider.appendChild(clone1);

//     /* 주요 변수 초기화 */  
//     let currentIdx = 0;
//     let translate = 0;
//     const speedTime = 500;

//     /* CSSOM 셋업 */
//     const sliderCloneLis = slider.querySelectorAll('.img');
//     const liWidth = slideLis[0].clientWidth;
//     const sliderWidth = liWidth * sliderCloneLis.length;
//     slider.style.width = `${sliderWidth}px`;
//     currentIdx = 1;
//     translate = -liWidth;
//     slider.style.transform = `translateX(${translate}px)`

//     /* 리스너 설치하기 */
//     moveButton.addEventListener('click', moveSlide);

//     /* 슬라이드 실행 */
//     function move(D) {
//       currentIdx += (-1 * D);
//       translate += liWidth * D;
//       slider.style.transform = `translateX(${translate}px)`;
//       slider.style.transition = `all ${speedTime}ms ease`
//     }

//     /* 클릭 버튼 */
//     function moveSlide(event) {
//         event.preventDefault();
//         if (event.target.className === 'next') {
//             move(-1);
//             if (currentIdx === sliderCloneLis.length - 1) {
//                 setTimeout(() => {
//                     slider.style.transition = 'none';
//                     currentIdx = 1;
//                     translate = -liWidth;
//                     slider.style.transform = `translateX(${translate}px)`;
//                     setTimeout(() => {
//                         slider.style.transition = `transform ${speedTime}ms ease`;
//                     }, 50); // 추가된 부분
//                 }, speedTime);
//             }
//       } else {
//         move(1);
//         if (currentIdx === 0) {
//             setTimeout(() => {
//                 slider.style.transition = 'none';
//                 currentIdx = sliderCloneLis.length - 2;
//                 translate = -(liWidth * currentIdx);
//                 slider.style.transform = `translateX(${translate}px)`;
//                 setTimeout(() => {
//                     slider.style.transition = `transform ${speedTime}ms ease`;
//                 }, 50); // 추가된 부분
//             }, speedTime);
//           }
//         }
//     }

//   }

let pages = 0;//현재 인덱스 번호
let positionValue = 0;//images 위치값
const IMAGE_WIDTH = 250;//한번 이동 시 IMAGE_WIDTH만큼 이동한다.
//DOM
const backBtn = document.querySelector(".back")
const nextBtn = document.querySelector(".next")
const images = document.querySelector(".images")

function next() {
  if (pages< 2) {
    backBtn.removeAttribute('disabled')//뒤로 이동해 더이상 disabled가 아니여서 속성을 삭제한다.
    positionValue -= IMAGE_WIDTH;//IMAGE_WIDTH의 증감을 positionValue에 저장한다.
    images.style.transform = `translateX(${positionValue}px)`;
		//x축으로 positionValue만큼의 px을 이동한다.
    pages += 1; //다음 페이지로 이동해서 pages를 1증가 시킨다.
  }
  if (pages === 2) { //
    nextBtn.setAttribute('disabled', 'true')//마지막 장일 때 next버튼이 disabled된다.
  }
}

function back() {
  if (pages > 0) {
    nextBtn.removeAttribute('disabled')
    positionValue += IMAGE_WIDTH;
    images.style.transform = `translateX(${positionValue}px)`;
    pages -= 1; //이전 페이지로 이동해서 pages를 1감소 시킨다.
  }
  if (pages === 0) {
    backBtn.setAttribute('disabled', 'true')//마지막 장일 때 back버튼이 disabled된다.
  }
}

function init() {  //초기 화면 상태
  backBtn.setAttribute('disabled', 'true'); //속성이 disabled가 된다.
  backBtn.addEventListener("click", back); //클릭시 다음으로 이동한다.
  nextBtn.addEventListener("click", next);//클릭시 이전으로 이동한다.
}
init();