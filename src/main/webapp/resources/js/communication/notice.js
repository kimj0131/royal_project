// document.getElementById('searchForm')
// 	.addEventListener(
// 		'submit',
// 		function (event) {
// 			//event.preventDefault(); // 기본 폼 제출 동작 방지

// 			var searchTerm = document
// 				.getElementById('search_input_id').value; // 검색어 가져오기
// 			var searchType = document
// 				.getElementById('search_select_id').value; // 검색 구분 가져오기

// 			console.log("검색어:", searchTerm);
// 			console.log("검색 구분:", searchType);

// 		});

console.log('js init test');

const textarea = document.querySelector(`#board_detail_cotent`);
console.log(textarea.value);
const rowCount = textarea.value.split(/\r\n|\r|\n/).length;
console.log((rowCount * 18) + "px");

// textarea.style.height = (rowCount * 22) + "px";
if (rowCount > 10){
	// textarea.style.height = "100px"; //특정 줄 수 보다 작아지면 height가 이것보다 작아지지 않았으면 한다
	textarea.style.overflow = 'auto';
	textarea.style.height = (rowCount * 30) + "px";
}
else{
	textarea.style.height = (rowCount * 30) + "px";
}