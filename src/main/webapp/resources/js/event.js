function prevMonth(date) {
    var target = new Date(date);
    target.setDate(1);
    target.setMonth(target.getMonth() - 1);

    return getYmd(target);
}

function nextMonth(date) {
    var target = new Date(date);
    target.setDate(1);
    target.setMonth(target.getMonth() + 1);

    return getYmd(target);
}

function getYmd(target) {
    // IE에서 날짜 문자열에 0이 없으면 인식 못함
    var month = ('0' + (target.getMonth() + 1)).slice(-2);
    return [target.getFullYear(), month, '01'].join('-');
}
 
function fullDays(date) {
    var target = new Date(date);
    var year = target.getFullYear();
    var month = target.getMonth();

    var firstWeekDay = new Date(year, month, 1).getDay();
    var thisDays = new Date(year, month + 1, 0).getDate();

    var cell = [28, 35, 42].filter(function (n) {
            return n >= (firstWeekDay + thisDays);
        }).shift();

    var days = []
    for (var i = 0; i < cell; i++) {
        days[i] = {
            date: '',
            dayNum: '',
            today: false
        };
    }
    
    var now = new Date();
    var today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
    var inDate;
    for (var index = firstWeekDay, i = 1; i <= thisDays; index++, i++) {
        inDate = new Date(year, month, i);
        days[index] = {
            date: i,
            dayNum: inDate.getDay(),
            today: (inDate.getTime() === today.getTime())
        };
    }

    return days;
}

function drawMonth(date) {
    $('#month-this').text(date.substring(0, 7).replace('-', '.'));
    $('#month-prev').data('ym', prevMonth(date));
    $('#month-next').data('ym', nextMonth(date));

    $('#tbl-month').empty();

}

$(function () {
    var date = (new Date()).toISOString().substring(0, 10);
    drawMonth(date);

    $('.month-move').on('click', function (e) {
        e.preventDefault();

        drawMonth($(this).data('ym'));
    });
});

$(document).ready(function() {
    // 완전히 로드되었을 때 실행되는 함수
    
    var currentMonth = new Date().getMonth() + 1;
    
    // 특정 달의 이벤트 이미지를 가져와서 표시하는 함수
    function displayEventImages(month) {
      // 서버에서 이벤트 이미지를 가져오기 위한 AJAX 요청
      $.ajax({
        url: '',
        method: 'GET',
        data: { month: month },
        dataType: 'json',
        success: function(response) {
          // 서버로부터 받은 이벤트 이미지를 표시
          // 응답 데이터를 처리하고 HTML을 생성하여 이미지를 표시
        }
      });
    }
    
    // 페이지가 로드되면 이번 달의 이벤트 이미지를 표시
    var currentMonth = new Date().getMonth() + 1;
    displayEventImages(currentMonth);
    

    $('#month-prev').on('click', function() {
        var prevMonth = $('#month-prev').data('ym');
        displayEventImages(prevMonth);
      });
    

    $('#month-next').on('click', function() {
        var nextMonth = $('#month-next').data('ym');
        displayEventImages(nextMonth);
      });
  });


  