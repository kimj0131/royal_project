$(document).ready(function () {

$('.deleteBtn').each(function () {
        var reservationDiv = $(this).closest('.reservboard_wrap_list');
        var reservationDate = reservationDiv.find('.resv_eventdate').text();
        var reservationTime = reservationDiv.find('.event_time').text();
        var reservationDateTime = new Date(reservationDate + ' ' + reservationTime);
        var currentDateTime = new Date();

        // 현재 날짜와 비교하여 예약 취소 버튼 활성/비활성 설정
        if (reservationDateTime <= currentDateTime) {
            $(this).text('취소 불가');
          $(this).text('취소 불가').css({
        'background-color': 'lightgrey', // 배경색 회색으로 변경
        'color': 'red', // 글자색 검정색으로 변경
        'cursor': 'default',
        'border' : 'none'
        
    });
            $(this).prop('disabled', true); // 버튼 비활성화
        }
    });
    
       $('.qna-title').click(function() {
        var index = $(this).index('.qna-title');
        $('#qna-result-' + index).toggle();
        $('#arrow-icon-' + index).toggleClass('arrow_up');
        $('#arrow-icon-' + index).text($('#arrow-icon-' + index).text() == 'arrow_drop_down' ? 'arrow_drop_up' : 'arrow_drop_down');
    });

    $(document).on('click', ".deleteBtn", function () {
        var reservationNum = $(this).find('input[type="hidden"]').val();
        var reservationDiv = $(this).closest('.reservboard_wrap_list');
        var reservationDate = reservationDiv.find('.resv_eventdate').text();
        var reservationTime = reservationDiv.find('.event_time').text();
        
        // 날짜와 시간을 Date 객체로 변환
        var reservationDateTime = new Date(reservationDate + ' ' + reservationTime);
        var currentDateTime = new Date();
		
        // 현재 날짜와 비교하여 예약 취소 버튼 활성/비활성 설정
        if (reservationDateTime <= currentDateTime) {
            alert('이미 지난 예약은 취소할 수 없습니다.');
            return false; // 버튼 클릭 이벤트 중지
        }

        // 사용자에게 확인 메시지 표시
        if (confirm('정말로 이 예약을 취소하시겠습니까?')) {
            // 사용자가 확인한 경우에만 예약 취소를 진행
            $.ajax({
                type: 'POST',
                url: 'deleteReservation',
                data: {
                    'reservationNum': reservationNum
                },
                dataType: 'text',
                success: function (response) {
                    if (response) {
                        alert('예약이 취소되었습니다.');
                        location.reload();
                    } else {
                        console.error(response);
                        alert('예약 취소 실패했습니다 ' + response);
                    }
                },
                error: function (xhr, status, error) {
                    console.error('Error:', xhr.responseText);
                    console.error('Status:', status);
                    console.error('Error:', error);
                    alert('에러발생');
                }
            });
        }
    });
});