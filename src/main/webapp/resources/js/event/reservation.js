// $( function() {
//     $( "#datepicker" ).datepicker();
//   } );

const palaceNames = document.querySelectorAll('.royalname');



for (const palaceName of palaceNames) {
    palaceName.addEventListener('click', () => {
        const event_id = palaceName.querySelector('input[name="event_id"]').value;
        console.log('EVENT ID:', event_id);

         // AJAX를 통해 선택한 궁의 모든 해설 이벤트를 가져온다
    
         $( "#datepicker" ).datepicker("destroy").datepicker({
            beforeShowDay:(date) => {
                let today = new Date();
                today.setHours(0,0,0,0);
                return date.valueOf() >= today.valueOf() ? [true, ""] : [false, ""];
            },
            onSelect:(dateText)=>{
                let selectedDate = dateText;
                console.log("dateText", selectedDate);
        
                $.ajax({
                    url:'/royal/palace/getEventList',
                    method: 'GET',
                    data: { event_id: event_id },
                    success: (events)=>{
                        console.log("AJAX 요청 성공 - 서버 응답:", events);
                    // 첫 번째 이벤트(경복궁 해설)의 회차 ID를 가져온다
                       const firstEventId = events[0].event_id;
                    },
                         
                    // 첫 번째 이벤트의 회차 정보도 가져온다.
                    // 이벤트 회차정보 가져오는것도 ajax로 해야하나?
                    error:(error)=>{
                        console.log("Error", error);
                    }
                });
            }
        
        
        });
         

    });
}

$( "#datepicker" ).datepicker("destroy").datepicker({
    beforeShowDay:(date) => {
        let today = new Date();
        today.setHours(0,0,0,0);
        return date.valueOf() >= today.valueOf() ? [true, ""] : [false, ""];
    },
    onSelect:(dateText)=>{
        let selectedDate = dateText;
        console.log("dateText", selectedDate);

        // $.ajax({
        //     url:'/getEventList',
        //     method: 'GET',
        //     data: { palaceId: palaceId, selectedDate: selectedDate },
        //     success: (response)=>{
        //         $("commentary-list").html(response);
        //     },
        //     error:(error)=>{
        //         console.log("Error", error);
        //     }
        // });
    }


});