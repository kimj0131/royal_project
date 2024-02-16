// 이전 달을 가져옴
function prevMonth(date) {
    var target = new Date(date);
    target.setDate(1);
    target.setMonth(target.getMonth() - 1);

    return getYmd(target);
}

// 다음 달을 가져옴
function nextMonth(date) {
    var target = new Date(date);
    target.setDate(1);
    target.setMonth(target.getMonth() + 1);

    return getYmd(target);
}

// 년월일로 반환
function getYmd(target) {
    // IE에서 날짜 문자열에 0이 없으면 인식 못함
    var month = ('0' + (target.getMonth() + 1)).slice(-2);
    return [target.getFullYear(), month, '01'].join('-');
}

// 해당 월의 전체 일 수와 각 날짜의 정보를 가져오는 함수
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

    // 콘솔에 날짜 데이터 출력
    //console.log("현재날짜:", date);

}
//console.log($('#month-this'));


$(function () {
    var date = (new Date()).toISOString().substring(0, 10);
    drawMonth(date);

    var month_this_html = $('#month-this').html();
    requestAsync(month_this_html);

    // 버튼을 누르면 날짜가 변경되는 이벤트
    $('.month-move').on('click', function (e) {
        e.preventDefault();
        drawMonth($(this).data('ym'));
    });

    // 날짜가 변경되는 아래에 있는 행사 데이터를 비동기방식으로 가져오는 이벤트
    $(('.month-move')).click((e) => {
        var month_this_html = $('#month-this').html();

        requestAsync(month_this_html);


    });


});

function requestAsync(month_this_html) {
   
    var year = month_this_html.substring(0, 4);
    var month = month_this_html.substring(5, 7);

    // // 서버에서 이벤트 이미지를 가져오기 위한 AJAX 요청
    $.ajax({
        url: 'event/ajax/get', ///palace/event-images
        method: 'GET',
        data: { 'year': year, 'month': month },
        dataType: 'json',
        success: function (evnet_list, state, xhttp) {
            console.log('success');
            console.log(evnet_list);


            






        },
        error: function (object, status, error) {
            // console.error('에러:', error);
        }
    });
}











/////////////////////////////////////
// // 서버에서 이벤트 이미지를 가져오기 위한 AJAX 요청
// $.ajax({
//     url: '', ///palace/event-images
//     method: 'GET',
//     data: { month: month },
//     dataType: 'json',
//     success: function (response) {
//         // 서버로부터 받은 이벤트 이미지를 표시
//         // 응답 데이터를 처리하고 HTML을 생성하여 이미지를 표시
//         //   var eventImgContainer = $('#eventImg');
//         //     eventImgContainer.empty(); // Clear previous images

//         // if (response.length === 0) {
//         //     eventImgContainer.html('<p>표시할 이미지가 없습니다</p>');
//         // } else {
//         //     $.each(response, function(index, imagePath) {
//         //         eventImgContainer.append('<img src="' + imagePath + '>');
//         //     });
//         // }
//     },
//     // error: function(xhr, status, error) {
//     //     console.error('에러:', error);
//     // }
// });
// //location.href='/royal/palace/event/img?imgpath=' + month;