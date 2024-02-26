// 각 궁 이름에 해당하는 정보를 담은 객체
const palaceInfo = {
    "경복궁": {
        "address": "(03045) 서울 종로구 사직로 161",
        "phone": "대표전화 02-3700-3900 팩스 02-3700-3909"
    },
    "창덕궁": {
        "address": "(03072) 서울 종로구 율곡로 99",
        "phone": "대표전화 02-3668-2300 팩스 02-762-2070"
    },
    "덕수궁": {
        "address": "(04519) 서울 중구 세종대로 99",
        "phone": "대표전화 02-771-9951(사무실) 팩스 02-771-9953"
    },
    "창경궁": {
        "address": "(03072) 서울 종로구 창경궁로 185",
        "phone": "대표전화 02-762-4868 팩스 02-762-9514"
    },
    "종묘": {
        "address": "(03135) 서울 종로구 종로 157",
        "phone": "대표전화 02-765-0195 팩스 02-3672-4332"
    }
};

const addressIcon = document.createElement("i");
addressIcon.classList.add("fa-solid", "fa-location-dot");

const phoneIcon = document.createElement("i");
phoneIcon.classList.add("fa-solid", "fa-phone-volume");


const mapContainer = document.querySelector('.map'); // 지도를 표시할 div
const mapOption = {
    center: new kakao.maps.LatLng(37.57962, 126.977028), // 지도의 중심좌표(기본 경복궁)
    level: 4 // 지도의 확대 레벨
};

const map = new kakao.maps.Map(mapContainer, mapOption);

const marker = new kakao.maps.Marker({
    // 지도 중심좌표에 마커를 생성
    position: map.getCenter()
});
// 지도에 마커를 표시
marker.setMap(map);

// 기본 로드시 경복궁 정보 표시
const defaultPalace = "경복궁";
const address_content = document.querySelector('.address_content');
const phone_content = document.querySelector('.phone_content');

address_content.innerHTML = palaceInfo[defaultPalace].address;
phone_content.innerHTML = palaceInfo[defaultPalace].phone;

// xxx오시는 길 삽입
var subTitle = document.querySelector('.subTitle');
subTitle.innerHTML = '경복궁 오시는 길';

// 각 palace-link 클래스를 가진 요소에 대해 클릭 이벤트 리스너 추가
document.querySelectorAll('.palace-link').forEach((link) => {
    link.addEventListener('click', (event) => {
        event.preventDefault();

        const lat = parseFloat(link.getAttribute('data-lat'));
        const lng = parseFloat(link.getAttribute('data-lng'));

        // 새로운 지도 중심 좌표 생성
        const newCenter = new kakao.maps.LatLng(lat, lng);
        marker.setPosition(newCenter);
        map.setCenter(newCenter);

        // 클릭된 궁의 이름 가져오기
        const palaceName = link.textContent.trim();

        // 클릭된 궁 정보 표시
        address_content.innerHTML = palaceInfo[palaceName].address;
        phone_content.innerHTML = palaceInfo[palaceName].phone;

        // xxx오시는 길 삽입
        subTitle.innerHTML = `${palaceName} 오시는 길`;
    });
});

// 궁 클릭 유지
const palaceNames = document.querySelectorAll(".royalname");
for (const palaceName of palaceNames) {
    palaceName.addEventListener("click", (e) => {

        for (const palaceName of palaceNames) {
            if (e.currentTarget == palaceName) {
                var innerText = e.currentTarget.innerText;
                if (innerText == '경복궁') {
                    e.target.id = 'gbBtn_active';
                } else if (innerText == '덕수궁') {
                    e.target.id = 'dsBtn_active';
                } else if (innerText == '창경궁') {
                    e.target.id = 'chBtn_active';
                } else if (innerText == '창덕궁') {
                    e.target.id = 'cdBtn_active';
                } else if (innerText == '종묘') {
                    e.target.id = 'gmBtn_active';
                }
            } else {
                palaceName.id = '';
            }
        }
    })
}