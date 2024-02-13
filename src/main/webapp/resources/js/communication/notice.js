document.getElementById('searchForm')
				.addEventListener(
						'submit',
						function(event) {
							//event.preventDefault(); // 기본 폼 제출 동작 방지

							var searchTerm = document
									.getElementById('search_input_id').value; // 검색어 가져오기
							var searchType = document
									.getElementById('search_select_id').value; // 검색 구분 가져오기

							console.log("검색어:", searchTerm);
							console.log("검색 구분:", searchType);

						});