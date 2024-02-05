// $(document).ready(function() {
//     calendarInit();
// });
// /*
//     달력 렌더링 할 때 필요한 정보 목록 

//     현재 월(초기값 : 현재 시간)
//     금월 마지막일 날짜와 요일
//     전월 마지막일 날짜와 요일
// */

// function calendarInit() {

//     // 날짜 정보 가져오기
//     var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
//     var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
//     var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
//     var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)
  
//     var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
//     // 달력에서 표기하는 날짜 객체
  
    
//     var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
//     var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
//     var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

//     // kst 기준 현재시간
//     // console.log(thisMonth);

//     // 캘린더 렌더링
//     renderCalender(thisMonth);

//     function renderCalender(thisMonth) {

//         // 렌더링을 위한 데이터 정리
//         currentYear = thisMonth.getFullYear();
//         currentMonth = thisMonth.getMonth();
//         currentDate = thisMonth.getDate();

//         // 이전 달의 마지막 날 날짜와 요일 구하기
//         var startDay = new Date(currentYear, currentMonth, 0);
//         var prevDate = startDay.getDate();
//         var prevDay = startDay.getDay();

//         // 이번 달의 마지막날 날짜와 요일 구하기
//         var endDay = new Date(currentYear, currentMonth + 1, 0);
//         var nextDate = endDay.getDate();
//         var nextDay = endDay.getDay();

//         // console.log(prevDate, prevDay, nextDate, nextDay);

//         // 현재 월 표기
//         $('.year-month').text(currentYear + '.' + (currentMonth + 1));

//         // 렌더링 html 요소 생성
//         calendar = document.querySelector('.dates')
//         calendar.innerHTML = '';
        
//         // 지난달
//         for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
//             calendar.innerHTML = calendar.innerHTML + '<div class="day prev disable">' + i + '</div>'
//         }
//         // 이번달
//         for (var i = 1; i <= nextDate; i++) {
//             calendar.innerHTML = calendar.innerHTML + '<div class="day current">' + i + '</div>'
//         }
//         // 다음달
//         for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
//             calendar.innerHTML = calendar.innerHTML + '<div class="day next disable">' + i + '</div>'
//         }

//         // 오늘 날짜 표기
//         if (today.getMonth() == currentMonth) {
//             todayDate = today.getDate();
//             var currentMonthDate = document.querySelectorAll('.dates .current');
//             currentMonthDate[todayDate -1].classList.add('today');
//         }
//     }

//     // 이전달로 이동
//     $('.go-prev').on('click', function() {
//         thisMonth = new Date(currentYear, currentMonth - 1, 1);
//         renderCalender(thisMonth);
//     });

//     // 다음달로 이동
//     $('.go-next').on('click', function() {
//         thisMonth = new Date(currentYear, currentMonth + 1, 1);
//         renderCalender(thisMonth); 
//     });
// }

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

    // 월 표시 달력이 가지는 셀 갯수는 3가지 가운데 하나이다.
    // var cell = [28, 35, 42].filter(n => n >= (firstWeekDay + thisDays)).shift();
    var cell = [28, 35, 42].filter(function (n) {
            return n >= (firstWeekDay + thisDays);
        }).shift();

    // 셀 초기화, IE에서 Array.fill()을 지원하지 않아서 변경
    // var days = new Array(cell).fill({date: '', dayNum: '', today: false});
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

    var td = '<td class="__REST__ __TODAY__"><a __HREF__>__DATE__</a></td>';
    var href = '/depart/schedule?date=' + date.substring(0, 8);
    var hasEvent;
    var tdClass;
    var week = null;
    var days = fullDays(date);
    for (var i = 0, length = days.length; i < length; i += 7) {
        // 전체 셀을 주단위로 잘라서 사용
        week = days.slice(i, i + 7);
        
        var $tr = $('<tr></tr>');
        week.forEach(function (obj, index) {
            // 매주 수요일에 이벤트가 있다고 가정
            hasEvent = (index === 3);
            tdClass = (index === 0)? 'sun': '';
            tdClass = (index === 6)? 'sat': tdClass;

            $tr.append(td.replace('__REST__', tdClass)
                        .replace('__TODAY__', (obj['today'])? 'today': '')
                        .replace('__HREF__', (hasEvent)? 'href="'+ href + ('0' + obj['date']).slice(-2) +'"': '')
                        .replace('__DATE__', obj['date']));
        });
        $('#tbl-month').append($tr);
    }
}

$(function () {
    var date = (new Date()).toISOString().substring(0, 10);
    drawMonth(date);

    $('.month-move').on('click', function (e) {
        e.preventDefault();

        drawMonth($(this).data('ym'));
    });
});