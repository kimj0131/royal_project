function change_btn(e) {
    // var btns = document.querySelectorAll(".BTN_class");
    // btns.forEach(function(btn) {
    // 	if(e.currentTarget == btn) {
    // 		.classList.add("active");
    // 	}
    // 	else {
    // 		btn.classList.remove("active");
    // 	}
    // });


    var divs = document.querySelectorAll(".BTN_class");
    for (const div of divs) {
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



    // console.log('바뀌기 전 ', e.target.classList);
    // e.target.classList.remove("off");
    // e.target.classList.add("on");
    // console.log('바뀐 후 ', e.target.classList)
}

const all_BTN = document.querySelector("#all_BTN");
const GB_BTN = document.querySelector("#GB_BTN");
const DS_BTN = document.querySelector("#DS_BTN");
const CG_BTN = document.querySelector("#CG_BTN");
const CD_BTN = document.querySelector("#CD_BTN");
const JM_BTN = document.querySelector("#JM_BTN");


all_BTN.addEventListener('click', (e) => change_btn(e));
GB_BTN.addEventListener('click', (e) => change_btn(e));
DS_BTN.addEventListener('click', (e) => change_btn(e));
CG_BTN.addEventListener('click', (e) => change_btn(e));
CD_BTN.addEventListener('click', (e) => change_btn(e));
JM_BTN.addEventListener('click', (e) => change_btn(e));

