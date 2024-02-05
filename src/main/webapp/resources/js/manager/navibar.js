const summaryBtn = document.querySelector('#summaryBtn');
const reservationBtn = document.querySelector('#reservationBtn');
const eventBtn = document.querySelector('#eventBtn');
const qnaBtn = document.querySelector('#qnaBtn');
const noticeBtn = document.querySelector('#noticeBtn');

summaryBtn.addEventListener('click', (e) => {
    location.href = 'index';
});

reservationBtn.addEventListener('click', (e) => {
    location.href = 'reservation';
});

eventBtn.addEventListener('click', (e) => {
    location.href = 'event';
});

qnaBtn.addEventListener('click', (e) => {
    location.href = 'qna';
});

noticeBtn.addEventListener('click', (e) => {
    location.href = 'notice';
});