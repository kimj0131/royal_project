var naver_id_login = new naver_id_login(naver.client_id, naver.callback_uri);

var state = naver_id_login.getUniqState();
naver_id_login.setButton("green", 3, 40);
naver_id_login.setDomain("http://localhost:9000");
naver_id_login.setState(state);
// naver_id_login.setPopup();
naver_id_login.init_naver_id_login();
