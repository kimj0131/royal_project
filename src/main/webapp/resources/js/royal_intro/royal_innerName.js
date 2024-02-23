/**
 * 내부건축물 이름에 스타일 변경
 */
const innerDivs = document.querySelectorAll('.innerNameDiv');

innerDivs.forEach(innerDiv => {
    const defaultIcon = document.createElement("i");
    defaultIcon.classList.add("fa-solid", "fa-minus");
    innerDiv.appendChild(defaultIcon);
});


for (div of innerDivs) {

    if (div.textContent === selectedInnerName) {
        const arrowIcon = document.createElement("i");
        arrowIcon.classList.add("fa-sharp", "fa-solid", "fa-caret-down");
        div.appendChild(arrowIcon);
        div.style.backgroundColor = 'black';
        div.style.color = 'white';
        div.innerHTML = div.innerHTML.replace('fa-solid fa-minus', '');
    }

}

/**
 * 궁 이름 클릭시 스타일
 */

const palaceNames = document.querySelectorAll(".royalname");
let RoyalIdParameter = location.href.charAt(location.href.length - 1)
if (RoyalIdParameter == 1) {
    palaceNames.item(0).id = 'gbBtn_active';
} else if (RoyalIdParameter == 4) {
    palaceNames.item(1).id = 'dsBtn_active';
} else if (RoyalIdParameter == 3) {
    palaceNames.item(2).id = 'chBtn_active';
} else if (RoyalIdParameter == 2) {
    palaceNames.item(3).id = 'cdBtn_active';
} else if (RoyalIdParameter == 5) {
    palaceNames.item(4).id = 'jmBtn_active';
}

/**
 * 궁 이름 클릭시 이동 경로
 */

palaceNames.item(0).addEventListener('click', (e) => {
    location.href="/royal/palace/royalInner?palace=경복궁&royalId=1";
});
palaceNames.item(1).addEventListener('click', (e) => {
    location.href="/royal/palace/royalInner?palace=덕수궁&royalId=4";
});
palaceNames.item(2).addEventListener('click', (e) => {
    location.href="/royal/palace/royalInner?palace=창경궁&royalId=3";
});
palaceNames.item(3).addEventListener('click', (e) => {
    location.href="/royal/palace/royalInner?palace=창덕궁&royalId=2";
});
palaceNames.item(4).addEventListener('click', (e) => {
    location.href="/royal/palace/royalInner?palace=종묘&royalId=5";
});
