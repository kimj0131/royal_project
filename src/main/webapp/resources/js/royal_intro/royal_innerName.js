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

/**
 * 궁 이름 클릭시 스타일
 */
const GB_BTN = document.querySelector("#GB_Btn");
const DS_BTN = document.querySelector("#DS_Btn");
const CG_BTN = document.querySelector("#CG_Btn");
const CD_BTN = document.querySelector("#CD_Btn");
const JM_BTN = document.querySelector("#JM_Btn");
function change_btn(e) {

  var names = document.querySelectorAll(".royal-name");
  for (const div of names) {
      for (let i = 0; i < div.children.length; ++i) {
          var children = div.children.item(i);
          if (e.currentTarget == children) {
              children.classList.add("on");
              console.log(children.classList);
          }
          else {
              children.classList.remove("on");
          }

      }
  }
}
let buttonChange = location.href.charAt(location.href.length - 1)
console.log(typeof (buttonChange));
if (buttonChange == 'e') {
  GB_BTN.classList.add('on');
} else if (buttonChange == 1) {
    GB_BTN.classList.add('on');
} else if (buttonChange == 4) {
    DS_BTN.classList.add('on');
} else if (buttonChange == 2) {
    CD_BTN.classList.add('on');
} else if (buttonChange == 3) {
    CG_BTN.classList.add('on');
} else if (buttonChange == 5) {
    JM_BTN.classList.add('on');
}
