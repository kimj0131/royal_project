서울 고궁안내 프로젝트
=================

# 개요
* 우리나라의 대표적인 관광지인 조선의 4대 궁궐 과 종묘를 소개하는 페이지를 제작한다.

# 목표
* OpenApi와 Database를 사용해 데이터들을 관리하고, 적절한 곳에 데이터를 활용한다.
* Database에 저장된 데이터들을 활용, 웹 페이지 적재적소에 활용한다.
* 사용자(user, manager)들이 사용하기 쉽게 설계 및 제작하는 것을 목표로한다.

# 라이브러리
> * 스프링
> * mybatis
> * Oracle Database

# 기능
> * 공공데이터포털 API 연계로 궁궐, 내부 문화재 정보 조회
> * 문화재 해설 안내
> * 문화재 문화 행사 안내
> * 유저는 로그인기능을 통해 QnA 질문작성, 행사 혹은 궁궐해설 예약을 진행할 수 있음
> * 관리자는 공지사항, QnA 답변, FAQ, 등을 직접 작성하고 수정 및 삭제할 수 있음

# 사용한 저작물
> *

***

## mission
> * 서빈   : 공지사항의 FAQ Q&A 페이지 DB에 데이터 보내는 코드 작성 및 CSS 제작
> *

## done
> * 김준형, 조현우 : 공공 API 연계 후 데이터 캐싱(DB) [[Commit]](https://github.com/kimj0131/royal_project/commit/b2bce768f3d814af2542e768a4397b3d1be525f8)

> * 김준형 : Spring scheduler로 공공 API 갱신주기 설정 [[Commit]](https://github.com/kimj0131/royal_project/commit/33482572463fdb34d4146daf1298d9ea5e3bc5da)

> * 김준형 : 네이버 로그인 API 연계 [[Commit]](https://github.com/kimj0131/royal_project/commit/4e2913ff5720284ab7ea7f97da3b6c5f3dd4e66b)

> * 조현우 : 카카오 로그인 API 연계 [[Commit]](https://github.com/kimj0131/royal_project/commit/7eb75f11a4e2cc01dd2f1e1aef8b4cf4b995b200)

> * 조현우 : 각각의 궁 내부 건축물 페이지 테스트 코드 작성 [[Commit]](https://github.com/kimj0131/royal_project/commit/1ca63792ed713a0112a4760b8fe12210915a52e3)

> * 방혜미 : 테스트코드 및 공공API 데이터활용, 4대궁궐 및 종묘 내부 건축물 정보 데이터 표시 [[Commit]](https://github.com/kimj0131/royal_project/commit/4d064e4af6bbd1177c85bf19ec7aa69d7ccdcd76)

> * 김태형 : 카카오 지도 api 연계

> * 조현우, 김준형 : Event 테이블 데이터 추가 시 회차만큼 Event_round 테이블 데이터 추가하는 service [[Commit_1]](https://github.com/kimj0131/royal_project/commit/df13ec3e732f5fa6803c16d42b58d2afc91e42a9) [[Commit_2]](https://github.com/kimj0131/royal_project/commit/f856a8d61cbe07e3e5bfee5becbc1c6204e3cc7c)

> * 김준형 : user, manage 로그인 확인 방법을 servlet filter에서 확인하도록 설정 [[Commit]](https://github.com/kimj0131/royal_project/commit/b9f155d03e6ee038dc20391c5d381a317744250e)

> * 김준형 : 관리자 페이지에 전체에 필요한 데이터(__알림수를 표시하기 위한 답변없는 Q&A리스트__)를 전달하기위해 spring intercepter 활용 [[Commit]](https://github.com/kimj0131/royal_project/commit/e2c1d534462ef27757f14a5147abf7fe4cbecea6)

> * 장호동 : 공지사항 - 조건을 정해 검색할 수 있는 servie [[Commit]](https://github.com/kimj0131/royal_project/commit/8fe27658d6cb29ba94be1aeedb7b85d5b7de13e6)

> * 조현우 : 관리자Page - 디자인 템플릿을 받아와서 현재 프로젝트에 맞게 수정하고 예약, 행사, 자주묻는질문, 공지사항 페이지에서 데이터를 DB에 쉽게 추가, 수정, 삭제할 수 있도록 GUI 구축 [[Commit]](https://github.com/kimj0131/royal_project/commit/5e743f0d5beccebd4ed739dfcbc97d80c72fe651)

> * 방혜미 : 통합예약페이지 - 달력 추가 (jQuery UI Datepicker) [[Commit]](https://github.com/kimj0131/royal_project/commit/5fc18c07c3f1e50a4e91a4b381fbd41b2d0a4bf2)

> * 방혜미 : 통합예약페이지 - 날짜 클릭 시 해당 해설의 회차 리스트 표시(js switch 구문으로 궁id별 해설id 매칭, 요청한 데이터를 페이지에 표시) [[Commit]](https://github.com/kimj0131/royal_project/commit/0f3b0e5d954c4804e922910b9a6c8a76fc95974f)

> * 김민주, 조현우 : 행사페이지 - 상단에 년/월을 선택하고 하단에는 선택한 년/월의 행사 목록을 비동기로 요청해 슬라이드 형식으로 출력 [[Commit]](https://github.com/kimj0131/royal_project/commit/8c85ad7ef50ec330a74b6e1d53d0f037b9549a35)

> * 황진솔 : 행사 슬라이드 구현 - 이미지데이터를 가져와 슬라이드 형식으로 구현 [[Commit]](https://github.com/kimj0131/royal_project/commit/610337a53065fe81f837647c619b85ed21def18f)

> * 김태형 : 이메일 발송 기능 구현 (구글 API 사용), 이메일 발송기능 gmail 계정정보 properties 파일화

> * 

***

## 발생한 문제
> *  

## 해결한 문제
> * 김준형, 조현우 : 공공데이터 Open Api 데이터 갱신방법
>   + MERGE sql문을 활용 경우에따라 Insert, Update 한다.
>   + 주기는 Spring Scheduler를 활용해 일정 주기로 동작하게 한다.

> * 김준형, 조현우 : 소셜 로그인 연동과 로그인상태 확인
>   + 소셜로부터 유저정보를 받아 필요한 데이터를 선별하여 DB에 저장하고 활용한다.
>   + HttpSession에 로그인을 확인할 Attribute를 추가, ~~Header jsp에 확인을 해~~(__※ filter에서 확인하도록 변경__) 로그인을 유지 
>   + (String 으로 캐스팅 후 c:when으로 비어있는지 확인)

> * 김준형 : 관리자 페이지 로그인유지 방법 (session을 어떻게 활용할 것인가)
>   + session 어트리뷰트 로그인 정보 추가
>   + ~~관리자페이지 include jsp 페이지에 검증하는 로직을 추가~~ >>> __※ filter에서 확인하도록 변경__
>   + session에 로그인 정보가 없으면 로그인 페이지로 되돌려 보낸다

> * 방혜미 : 내부 건축물 정보 가져오는 도중 파라미터 2개의 값을 복수개로 인지하지 못하는 문제
>   + 서비스단 및 매퍼에서 @Param으로 각각의 파라미터를 지정해주어 해결

> * 김준형 : mybatis Mapper에서 파라미터를 복수개로 받을때 파라미터를 인식하지 못하는 문제
>   + 메소드 파라미터에 @Param("파라미터 이름") 으로 복수의 파라미터를 지정
>   + mapper.xml에 #{파라미터 이름}으로 사용

> * 김준형 : filter에서 데이터를 넘기기위해 service를 호출했지만 에러발생
>   + filter는 스프링 컨테이너가 자원을 점유하고 있지 않으므로 service 호출이 불가
>   + spring intercepter를 사용해 데이터를 넘긴다.

> * 조현우 : ajax로 EventManageDTO를 담은 List와 EventRoundManageDTO를 담은 List 총 두개의 객체 데이터를 받아와야 했던 문제
>   + 자바 객체를 json으로 parsing하기 위해 ObjectMapper를 사용
>   + Map을 만들어 두개의 List를 put
>   + List가 담긴 Map을 ObjectMapper의 writeValueAsString(Map) 메서드의 인자로 넘기고 반환 되는 결과를 return

> * 장호동 :  검색기능 구현중에 type이 쿼리문에 원하는 값으로 넘어오지 못함
>   + 넘어오는 컬럼 값에서 ''가 붙어서 mapper.xml에 있는 쿼리문으로 넘어오는 문제가 발생함 
>   + mapper.xml에 작성한 쿼리문을 #{type}에서 ${type}으로 변경후 값이 'type'에서 type으로 넘어오는것을 확인함

> * 김민주, 조현우 : 행사페이지에서 날짜가 바뀔때 span태그에 날짜 값을 가져와야했는데 바뀐 날짜가 아닌 바뀌기전 날짜 값이 나왔던 문제
>   + 처음 자바스크립트에서 버튼을 누르면 날짜가 변경되는 메서드는 $(document).ready(); <축약형 : $(function(){})> 안에 들어있었고 버튼을 누르면 바뀐 날짜를 뽑아내는 메서드는 밖에 있었기 때문에 발생한 문제
>   + 버튼을 누르면 날짜 데이터를 뽑아내는 메서드를 $(document).ready(); <축약형 : $(function(){})> 안에 넣는 것으로 해결

> * 

***
## 기여자
* #### [조현우](https://github.com/joehyunwoo)
* #### [김준형](https://github.com/kimj0131)
* #### [방혜미](https://github.com/hyemi-bang)
* #### [김태형](https://github.com/haru4637)
* #### [장호동](https://github.com/Hodongjjang)
* #### [서  빈](https://github.com/binibin99)
* #### [황진솔](https://github.com/ghkdwlsthf0112)
* #### [김민주](https://github.com/2LeimanS2)
