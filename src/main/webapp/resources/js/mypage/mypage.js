   $(document).ready(function () {
		   $('.qna-result').addClass('hidden');
	        // FAQ 항목을 클릭했을 때 결과를 토글
	        $('.qna-title').click(function () {
	            var index = $(this).data('index');
	            $('#qna-result-' + index).toggle();
	            $('#arrow-icon-' + index).toggleClass('arrow_up');
	        });

	        // 예약 취소 버튼 클릭 시
	        $(".deleteBtn").click(function () {
	            var reservationNum = $(this).find('input[type="hidden"]').val();
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
	        });
	    });

			var toggleCount = 0;
	    function toggleContent(index) {
	        var resultElement = $('#qna-result-' + index);
	        var arrowIcon = $('#arrow-icon-' + index);
	        // FAQ 결과 토글
	        resultElement.toggle();
	        ++toggleCount;
	        
	        if(toggleCount%2 ==1){
		        arrowIcon.toggleClass('arrow_down');	        	
	        }else{	
	        	arrowIcon.toggleClass('arrow_up');
	        } 
	        
	    }