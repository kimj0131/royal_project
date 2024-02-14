(function ($) {
  "use strict"; // Start of use strict

  // Toggle the side navigation
  $("#sidebarToggle, #sidebarToggleTop").on('click', function (e) {
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
    if ($(".sidebar").hasClass("toggled")) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Close any open menu accordions when window is resized below 768px
  $(window).resize(function () {
    if ($(window).width() < 768) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function (e) {
    if ($(window).width() > 768) {
      var e0 = e.originalEvent,
        delta = e0.wheelDelta || -e0.detail;
      this.scrollTop += (delta < 0 ? 1 : -1) * 30;
      e.preventDefault();
    }
  });

  // Scroll to top button appear
  $(document).on('scroll', function () {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function (e) {
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
  ? = 0 -> 예약_목록
  ? = 1 -> 예약_삭제
  ? = 2 -> 행사_목록
  ? = 3 -> 행사_추가
  ? = 4 -> 행사_수정
  ? = 5 -> 행사_삭제
  ? = 6 -> 자주묻는질문_목록
  ? = 7 -> 자주묻는질문_추가
  ? = 8 -> 자주묻는질문_수정
  ? = 9 -> 자주묻는질문_삭제
  ? = 10 -> 질문과답변_답변
  ? = 11 -> 공지사항_목록
  ? = 12 -> 공지사항_추가
  ? = 13 -> 공지사항_수정
  ? = 14 -> 공지사항_삭제

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

if (href.includes('reservation')) {
  if (href.endsWith('list')) {
    collapseItems.item(0).classList.add('active');
    collapses.item(0).classList.add('show');
    navItems.item(1).classList.add('active');
  } else if (href.endsWith('delete')) {
    collapseItems.item(1).classList.add('active');
    collapses.item(0).classList.add('show');
    navItems.item(1).classList.add('active');
  }
} else if (href.includes('event')) {
  if (href.endsWith('list')) {
    collapseItems.item(2).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  } else if (href.endsWith('insert')) {
    collapseItems.item(3).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  } else if (href.endsWith('update')) {
    collapseItems.item(4).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  } else if (href.endsWith('delete')) {
    collapseItems.item(5).classList.add('active');
    collapses.item(1).classList.add('show');
    navItems.item(2).classList.add('active');
  }
} else if (href.includes('faq')) {
  if (href.endsWith('list')) {
    collapseItems.item(6).classList.add('active');
    collapses.item(2).classList.add('show');
    navItems.item(3).classList.add('active');
  } else  if (href.endsWith('insert')) {
    collapseItems.item(7).classList.add('active');
    collapses.item(2).classList.add('show');
    navItems.item(3).classList.add('active');
  } else if (href.endsWith('update')) {
    collapseItems.item(8).classList.add('active');
    collapses.item(2).classList.add('show');
    navItems.item(3).classList.add('active');
  } else if (href.endsWith('delete')) {
    collapseItems.item(9).classList.add('active');
    collapses.item(2).classList.add('show');
    navItems.item(3).classList.add('active');
  }
} else if (href.includes('qna')) {
  collapseItems.item(10).classList.add('active');
  collapses.item(3).classList.add('show');
  navItems.item(4).classList.add('active');
} else if (href.includes('notice')) {
  if (href.endsWith('list')) {
    collapseItems.item(11).classList.add('active');
    collapses.item(4).classList.add('show');
    navItems.item(5).classList.add('active');
  } else if (href.endsWith('insert')) {
    collapseItems.item(12).classList.add('active');
    collapses.item(4).classList.add('show');
    navItems.item(5).classList.add('active');
  } else if (href.endsWith('update')) {
    collapseItems.item(13).classList.add('active');
    collapses.item(4).classList.add('show');
    navItems.item(5).classList.add('active');
  } else if (href.endsWith('delete')) {
    collapseItems.item(14).classList.add('active');
    collapses.item(4).classList.add('show');
    navItems.item(5).classList.add('active');
  }
}