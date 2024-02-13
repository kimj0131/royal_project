/**
 * 내부건축물 이름에 스타일 변경
 */

//const royalIdElement = document.getElementById('royalId');
//const getRoyalId = royalIdElement.value;
//console.log("id:",getRoyalId);
const innerDivs = document.querySelectorAll('.innerNameDiv');

const innerDiv = innerDivs.values;
//console.log("2:",innerDiv);
//console.log("3:",innerDivs);
//console.log("param:",selectedInnerName);

for(div of innerDivs){
  //  console.log(div);
  if(div.textContent === selectedInnerName){
    const arrowIcon = document.createElement("i");
    arrowIcon.classList.add("fa-solid", "fa-angles-down");
    div.appendChild(arrowIcon);
  }
}

