document.getElementById('searchForm')
				.addEventListener(
						'submit',
						function(event) {
							event.preventDefault(); // 기본 폼 제출 동작 방지

							var searchTerm = document
									.getElementById('search_input_id').value; // 검색어 가져오기
							var searchType1 = document
									.getElementById('search_select_id1').value; // 검색 구분 가져오기
							var searchType2 = document
									.getElementById('search_select_id2').value;
							// 검색어와 검색 구분을 서버에 전송하고 결과를 받아오는 로직을 작성해야 합니다.
							// 여기서는 예시로 콘솔에 출력하는 것으로 대체합니다.
							console.log("검색어:", searchTerm);
							console.log("검색 구분:", searchType1, searchType2);

							// 실제로 서버로 검색어와 검색 구분을 전송하고 검색 결과를 받아와야 합니다.
							// 받아온 결과를 이용하여 화면을 갱신하는 로직을 작성해야 합니다.
						});