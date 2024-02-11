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

							console.log("검색어:", searchTerm);
							console.log("검색 구분:", searchType1, searchType2);

						});