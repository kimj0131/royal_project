(function($) {
  "use strict"; // Start of use strict

  // Toggle the side navigation
  $("#sidebarToggle, #sidebarToggleTop").on('click', function(e) {
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
    if ($(".sidebar").hasClass("toggled")) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Close any open menu accordions when window is resized below 768px
  $(window).resize(function() {
    if ($(window).width() < 768) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function(e) {
    if ($(window).width() > 768) {
      var e0 = e.originalEvent,
        delta = e0.wheelDelta || -e0.detail;
      this.scrollTop += (delta < 0 ? 1 : -1) * 30;
      e.preventDefault();
    }
  });

  // Scroll to top button appear
  $(document).on('scroll', function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function(e) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top)
    }, 1000, 'easeInOutExpo');
    e.preventDefault();
  });

})(jQuery); // End of use strict

// Modal Javascript

$(document).ready(function () {
  $("#myBtn").click(function () {
    $('.modal').modal('show');
  });

  $("#modalLong").click(function () {
    $('.modal').modal('show');
  });

  $("#modalScroll").click(function () {
    $('.modal').modal('show');
  });

  $('#modalCenter').click(function () {
    $('.modal').modal('show');
  });
});

// Popover Javascript

$(function () {
  $('[data-toggle="popover"]').popover()
});
$('.popover-dismiss').popover({
  trigger: 'focus'
});


// Custom


// [sidebar Javascript]
/* 
  collapseItems.item(?)
  ? = 0 -> 예약_삭제
  ? = 1 -> 행사_추가
  ? = 2 -> 행사_수정
  ? = 3 -> 행사_삭제
  ? = 4 -> 자주묻는질문_추가
  ? = 5 -> 자주묻는질문_수정
  ? = 6 -> 자주묻는질문_삭제
  ? = 7 -> 질문과답변_답변
  ? = 8 -> 공지사항_추가
  ? = 9 -> 공지사항_수정
  ? = 10 -> 공지사항_삭제

  collapses.item(?)
  ? = 0 -> 예약
  ? = 1 -> 행사
  ? = 2 -> 자주묻는질문
  ? = 3 -> 질문과답변
  ? = 4 -> 공지사항

  navItems.item(?)
  ? = 1 -> 예약
  ? = 2 -> 행사
  ? = 3 -> 자주묻는질문
  ? = 4 -> 질문과답변
  ? = 5 -> 공지사항
*/

const collapseItems = document.querySelectorAll('.collapse-item');
const collapses = document.querySelectorAll('.collapse');
const navItems = document.querySelectorAll('.nav-item');

const href = location.href;

if (href.endsWith('/reservation/delete')) {
  collapseItems.item(0).classList.add('active');
  collapses.item(0).classList.add('show');
  navItems.item(1).classList.add('active');
} else if (href.includes('event')) {
  if (href.endsWith('insert')) {
    collapseItems.item(1).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  } else if (href.endsWith('update')) {
    collapseItems.item(2).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  } else if (href.endsWith('delete')) {
    collapseItems.item(3).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  }
}



// [event탭 Javascript]

// n회차 칸을 추가할 div
const fg_custom2 = document.querySelector('.fg_custom2 > .form-group');
// plus 버튼
const plusBtn = document.querySelector('.plusBtn');
// minus 버튼
const minusBtn = document.querySelector('.minusBtn');

// 버튼 눌렀을 때 회차 추가
const addInputGroup = () => {

  // n회차 칸이 몇개 들어있는지 확인 하기 위한 nodeList
  var inputGroups_in_fgCustom2 = document.querySelectorAll('.fg_custom2 > .form-group > .input-group');
  var roundNum = inputGroups_in_fgCustom2.length + 1;

  if (roundNum < 11) {
    // 1. 새로운 "1회차" 입력 그룹 요소 생성
    const newInputGroup = document.createElement('div');
    newInputGroup.classList.add('input-group', 'mb-3');

    // 2. "1회차" 라벨과 입력 필드를 포함하는 "input-group-prepend" 요소 생성
    const prependGroup = document.createElement('div');
    prependGroup.classList.add('input-group-prepend');

    const label = document.createElement('span');
    label.classList.add('input-group-text');
    label.id = 'basic-addon1';
    label.textContent = `${roundNum}회차`;

    prependGroup.appendChild(label);

    // 3. "운영시간" 입력 필드 생성
    const input = document.createElement('input');
    input.name = `round${roundNum}`;
    input.type = 'time';
    input.classList.add('form-control');
    input.placeholder = '운영시간';
    input.setAttribute('aria-label', 'time');
    input.setAttribute('aria-describedby', 'basic-addon1');

    // 4. 새로운 입력 그룹에 "input-group-prepend"와 입력 필드 추가
    newInputGroup.appendChild(prependGroup);
    newInputGroup.appendChild(input);

    // 5. 새로운 회차 칸 추가
    fg_custom2.appendChild(newInputGroup);
  }
};

// 버튼 눌렀을 때 회차 삭제
const deleteInputGroup = () => {
    // n회차 칸이 몇개 들어있는지 확인 하기 위한 nodeList
    var formGroup = document.querySelectorAll('.fg_custom2 > .form-group');
    var roundNum = formGroup.item(0).children.length;

    if (roundNum > 4) {
      formGroup.item(0).children.item(roundNum - 1).remove();
    }
};

plusBtn.addEventListener('click', (e) => addInputGroup());
minusBtn.addEventListener('click', (e) => deleteInputGroup());

// 행사 추가 할때 유효성 검사
const submitBtn = document.querySelector('#submitBtn');
const submitInput = document.querySelector('#submitInput');

submitBtn.addEventListener('click', (e) => {
  const start_date = document.querySelector('#start_date').valueAsDate;
  const end_date = document.querySelector('#end_date').valueAsDate;
  // 시작일과 종료일을 입력하지 않았다면 submit 불가
  if (start_date == null || end_date == null) {
    alert('시작일과 종료일을 설정해 주세요');
  } else {
    submitInput.click();
  }
});