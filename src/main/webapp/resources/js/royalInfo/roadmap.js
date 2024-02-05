var mapContainer = document.getElementById('map'); // 지도를 표시할 div
		var mapOption = {
			center : new kakao.maps.LatLng(37.57962, 126.977028), // 지도의 중심좌표(기본 경복궁)
			level : 4 // 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성
		var map = new kakao.maps.Map(mapContainer, mapOption);

		var marker = new kakao.maps.Marker({
			// 지도 중심좌표에 마커를 생성
			position : map.getCenter()
		});
		// 지도에 마커를 표시
		marker.setMap(map);

		// 각 palace-link 클래스를 가진 요소에 대해 클릭 이벤트 리스너 추가
		document.querySelectorAll('.palace-link').forEach(function(link) {
			link.addEventListener('click', function(event) {
				// 이벤트의 기본 동작 막기
				event.preventDefault();

				// 클릭된 링크의 데이터 속성에서 위도와 경도 가져오기
				var lat = parseFloat(link.getAttribute('data-lat'));
				var lng = parseFloat(link.getAttribute('data-lng'));

				// 새로운 지도 중심 좌표 생성
				var newCenter = new kakao.maps.LatLng(lat, lng);

				// 현재 마커의 위치 업데이트
				marker.setPosition(newCenter);

				// 지도 중심 좌표 업데이트
				map.setCenter(newCenter);
			});
		});