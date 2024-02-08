// 각 궁 이름에 해당하는 정보를 담은 객체
const palaceInfo = {
    "경복궁": {
        "address": "주소 /n(03045) 서울 종로구 사직로 161",
        "phone": "연락처 /n대표전화 02-3700-3900 팩스 02-3700-3909"
    },
    "창덕궁": {
        "address": "주소 /n(03072) 서울 종로구 율곡로 99",
        "phone": "연락처 /n대표전화 02-3668-2300 팩스 02-762-2070"
    },
    "덕수궁": {
        "address": "주소 /n(04519) 서울 중구 세종대로 99",
        "phone": "연락처 /n대표전화 02-771-9951(사무실) 팩스 02-771-9953"
    },
    "창경궁": {
        "address": "주소 /n(03072) 서울 종로구 창경궁로 185",
        "phone": "연락처 /n대표전화 02-762-4868 팩스 02-762-9514"
    },
    "종묘": {
        "address": "주소 /n(03135) 서울 종로구 종로 157",
        "phone": "연락처 /n대표전화 02-765-0195 팩스 02-3672-4332"
    }
};

const mapContainer = document.querySelector('.map'); // 지도를 표시할 div
const mapOption = {
	center : new kakao.maps.LatLng(37.57962, 126.977028), // 지도의 중심좌표(기본 경복궁)
	level : 4 // 지도의 확대 레벨
};

// 지도를 표시할 div와  지도 옵션으로  지도를 생성
const map = new kakao.maps.Map(mapContainer, mapOption);

const marker = new kakao.maps.Marker({
	// 지도 중심좌표에 마커를 생성
	position : map.getCenter()
});
// 지도에 마커를 표시
marker.setMap(map);


// 각 palace-link 클래스를 가진 요소에 대해 클릭 이벤트 리스너 추가
document.querySelectorAll('.palace-link').forEach( (link)=> {
	link.addEventListener('click', (event) => {
		// 이벤트의 기본 동작 막기
		event.preventDefault();

		// 클릭된 링크의 데이터 속성에서 위도와 경도 가져오기
		const lat = parseFloat(link.getAttribute('data-lat'));
		const lng = parseFloat(link.getAttribute('data-lng'));

		// 새로운 지도 중심 좌표 생성
		const newCenter = new kakao.maps.LatLng(lat, lng);

		// 현재 마커의 위치 업데이트
		marker.setPosition(newCenter);

		// 지도 중심 좌표 업데이트
		map.setCenter(newCenter);

		// 클릭된 궁의 이름 가져오기
		const palaceName = link.textContent.trim();

		const addressIcon = document.createElement("i"); 
		addressIcon.classList.add("fa-solid", "fa-location-dot");

		const phoneIcon = document.createElement("i"); 
		phoneIcon.classList.add("fa-solid", "fa-phone-volume");
		
		 // 모든 궁 정보 요소를 숨김
        document.querySelectorAll('.palace-info').forEach((info) => {
            info.style.display = 'none';
        });

        // 클릭된 궁의 정보 요소를 표시
        const palaceInfoDiv = document.getElementById(palaceName);
        palaceInfoDiv.style.display = 'block';

        const palaceInfoAddress = palaceInfoDiv.querySelector('.address');
        const palaceInfoPhone = palaceInfoDiv.querySelector('.phone');

        // 기존 내용 지우고 새로운 내용 추가
        palaceInfoAddress.innerHTML = '';
        palaceInfoPhone.innerHTML = '';

        palaceInfoAddress.appendChild(addressIcon);
		palaceInfoAddress.insertAdjacentHTML('beforeend', palaceInfo[palaceName].address.replace('/n', '<br>'));
		palaceInfoPhone.appendChild(phoneIcon);
		palaceInfoPhone.insertAdjacentHTML('beforeend', palaceInfo[palaceName].phone.replace('/n', '<br>'));
	});
});


