/* 
  메인 이미지 슬라이드 
*/

const outer = document.querySelector('.outer');
const innerList = document.querySelector('.inner-list');
const inners = document.querySelectorAll('.inner');
let currentIndex = 0; // 현재 슬라이드 화면 인덱스

function adjustSlideSize() { //  adjustSlideSize 함수 내에서 각 슬라이드 요소의 너비를 조절
  inners.forEach((inner) => {
    inner.style.width = `${outer.clientWidth}px`; // inner의 width를 모두 outer의 width로 만들기
    // 각 슬라이드 요소의 너비를 외부 컨테이너(outer)의 너비와 동일하게 설정
    // clientWidth : outer의 가로 값을 가져오겠다
  }); // 각 슬라이드 요소의 style.width 속성을 사용하여 너비를 조절


  innerList.style.width = `${outer.clientWidth * inners.length}px`; // innerList의 width를 inner의 width * inner의 개수로 만들기
  // outer.clientWidth: 외부 컨테이너(outer)의 너비를 픽셀 단위. 즉, 슬라이드 쇼의 가로 길이
  // inners.length: inners 배열의 길이는 슬라이드의 총 개수

  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // 슬라이드 위치 조절
  // 현재 인덱스에 해당하는 슬라이드를 표시하기 위해 외부 컨테이너의 너비를 현재 인덱스 값만큼 곱한 결과를 음수로 설정
}

// 창 크기가 변경될 때 슬라이드 크기를 조절하는 이벤트 추가
window.addEventListener('resize', adjustSlideSize);
// 'resize'는 발생하는 이벤트에 대한 리스너를 추가
// 브라우저 창의 크기를 조절할 때마다 adjustSlideSize 함수가 호출

// 초기화
adjustSlideSize();

/*
  버튼에 이벤트 등록하기
*/
const buttonLeft = document.querySelector('.back');
const buttonRight = document.querySelector('.next');

buttonLeft.addEventListener('click', () => { // 클릭 이벤트가 발생했을 때 실행되는 코드로 화면을 왼쪽으로 이동
  currentIndex--; //  슬라이드를 이전 슬라이드로 이동
  if (currentIndex < 0) {
    currentIndex = inners.length - 1;
  } // 인덱스가 0보다 작아지면(첫 번째 슬라이드 이전으로 이동하면) 마지막 슬라이드로 이동
  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
  resetInterval(); // setInterval 재설정, 슬라이드 간의 시간 간격을 재설정
});

buttonRight.addEventListener('click', () => {
  currentIndex++;
  currentIndex = currentIndex >= inners.length ? 0 : currentIndex; // index값이 inner의 총 개수보다 많아질 경우 첫 번째로 초기화
  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
  resetInterval(); // setInterval 재설정
});

/*
  주기적으로 화면 넘기기
*/
let interval = getInterval(); // interval 등록

function getInterval() {
  return setInterval(() => {
    currentIndex++;
    currentIndex1++;
    currentIndex = currentIndex >= inners.length ? 0 : currentIndex;
    currentIndex1= currentIndex1 >= image.length ? 0 : currentIndex1;
    innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`;
    imgSliders.style.marginLeft = `-${out1.clientWidth * currentIndex1}px`;

  }, 4000);
}

function resetInterval() {
  clearInterval(interval); // 기존 동작되던 interval 제거
  interval = getInterval(); // 새로운 interval 등록
}

/*
  알림판 행사 이미지 슬라이드 
*/

const out1 = document.querySelector(".out");
const imgSliders = document.querySelector(".imgSlider");
const image = document.querySelectorAll(".images");
let currentIndex1 = 0; // 현재 보이는 이미지

function adjustSlideSize1() {
  image.forEach((e) => {
    e.style.width = `${out1.clientWidth1}px`; 
});

imgSliders.style.width = `${out1.clientWidth1 * image.length}px`;

imgSliders.style.marginLeft =`-${out1.clientWidth1 * currentIndex1}px`;
}

window.addEventListener('resize', adjustSlideSize1);

adjustSlideSize1();

