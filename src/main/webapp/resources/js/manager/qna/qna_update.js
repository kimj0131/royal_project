// 테이블의 행 클릭 로직
$(".tableRowData").click(function (e) {
	// 데이터를 html에서 가져와 채워줌
	const id = $(this).find(".qnaId").html();
	const title = $(this).find(".qnaTitle").html();
	const content = $(this).find(".qnaContent").html();
	const result = $(this).find(".qnaResult").html();
	// console.log(content);
	// console.log(result);

	// 가져온 데이터를 적용
	$("#selected_id").val(id);
	$("#selected_title").val(title.trim());
	$("#selected_content").val(content);
	$("#qna_result").val(result);
	// location.href = "#page-top";
	window.scrollTo({ top: 0, behavior: "smooth" });
});

// submit 전 체크사항
$(".subBtn").click(function (e) {
	// console.log("btn check");
	e.preventDefault();
	if ($("#qna_result").val() == null || $("#qna_result").val() == "") {
		alert("답변 항목이 비어있습니다.");
	} else {
		// alert("답변추가를 완료했습니다.");
		$("#qna_answer").submit();
	}
});
