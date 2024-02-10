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

***

## mission
> * 조현우 : 관리자 페이지에 각각의 뷰에서 DB데이터 CRUD를 GUI로 구성
> * 김태형 : 마이페이지에 기본정보, 예약내역, QnA 내역 나오게 전체 Controller, DTO, Service, Mapper, JSP 제작
> * 서빈   : 공지사항의 FAQ Q&A 페이지 DB에 데이터 보내는 코드 작성 및 CSS 제작
> * 황진솔 : 메인페이지 공지사항 및 행사 클릭 시 해당 페이지 이동 구현, 행사 슬라이드 구현

## done
> * 김준형, 조현우 : 공공 API 연계 후 데이터 캐싱(DB) [[Commit]](https://github.com/kimj0131/royal_project/commit/b2bce768f3d814af2542e768a4397b3d1be525f8)
> * 김준형 : Spring scheduler로 공공 API 갱신주기 설정 [[Commit]](https://github.com/kimj0131/royal_project/commit/33482572463fdb34d4146daf1298d9ea5e3bc5da)
> * 김준형, 조현우 : 소셜 로그인 API 연계 (네이버, 카카오) [[Commit_1]](https://github.com/kimj0131/royal_project/commit/4e2913ff5720284ab7ea7f97da3b6c5f3dd4e66b), [[Commit_2]](https://github.com/kimj0131/royal_project/commit/7eb75f11a4e2cc01dd2f1e1aef8b4cf4b995b200)
> * 조현우 :  각각의 궁 내부 건축물 페이지 테스트 코드 작성 (공공API 데이터, 4대궁궐 및 종묘 내부 건축물 정보를 DB에서 가져와 활용) [[Commit]](https://github.com/kimj0131/royal_project/commit/1ca63792ed713a0112a4760b8fe12210915a52e3)
> * 방혜미 :  공공API 데이터활용, 4대궁궐 및 종묘 내부 건축물 정보 DB에서 가져오기 [[Commit]](https://github.com/kimj0131/royal_project/commit/4d064e4af6bbd1177c85bf19ec7aa69d7ccdcd76)
> * 김태형 : 지도 api 연계
> * 김태형 : 커버페이지 => 메인페이지 이동 및 각 궁 소개페이지 이동 작업
> * 조현우 : Event 테이블 데이터 추가 시 회차만큼 Event_round 테이블 데이터 추가하는 service [[Commit]](https://github.com/kimj0131/royal_project/commit/df13ec3e732f5fa6803c16d42b58d2afc91e42a9)
> * 방혜미 : 내부 건축물 이미지 (DB의 이미지path추가 및 js슬라이드 작업 )[[commit]](https://github.com/kimj0131/royal_project/commit/3c24505a14fb54638071ae06171c8d312f8c1c31)
> * 방혜미 : 지도 api 데이터 활용 - 관람안내 > 오시는길 페이지 [[commit]](https://github.com/kimj0131/royal_project/commit/012c89358b6c041b1c05169f36b2536019a3889c)
> * 김준형 : Event 테이블 데이터 회차 컬럼을 수정 시 Event_round 테이블 데이터 회차수 만큼 insert or delete 하는 service [[Commit]](https://github.com/kimj0131/royal_project/commit/f856a8d61cbe07e3e5bfee5becbc1c6204e3cc7c)
> * 서빈   : 궁 안내 페이지의 관람시간, 관람요금 페이지 최종 수정 작업 완료 [[Commit]](https://github.com/kimj0131/royal_project/commit/050af8c7017116652f7f2990b657cd1e300fd7d2)

***

## 발생한 문제
> * 

## 해결한 문제
> * 김준형, 조현우 : 공공데이터 Open Api 데이터 갱신방법
>   + MERGE sql문을 활용 경우에따라 Insert, Update 한다.
>   + 주기는 Spring Scheduler를 활용해 일정 주기로 동작하게 한다.
> * 김준형, 조현우 : 소셜 로그인 연동과 로그인상태 확인
>   + 소셜로부터 유저정보를 받아 필요한 데이터를 선별하여 DB에 저장하고 활용한다.
>   + HttpSession에 로그인을 판별할 수 있는 Attribute를 추가하고 Header jsp에 확인을 해 로그인을 유지한다.
>   + (String 으로 캐스팅 후 c:when으로 비어있는지 확인)
> * 김준형 : 관리자 페이지 로그인유지 방법 (session을 어떻게 활용할 것인가)
>   + session 어트리뷰트 로그인 정보 추가
>   + 관리자페이지 include jsp 페이지에 검증하는 로직을 추가
>   + session에 로그인 정보가 없으면 로그인 페이지로 되돌려보냄
> * 방혜미 : 내부 건축물 정보 가져오는 도중 파라미터 2개의 값을 넘기지 못함
>   + 서비스단 및 매퍼에서 @Param으로 해결
> * 김준형 : mybatis Mapper에서 파라미터를 복수개로 받을때 파라미터를 인식하지 못하는 문제
>   + 메소드 파라미터에 @Param("파라미터 이름") 으로 복수의 파라미터를 지정
>   + mapper.xml에 #{파라미터 이름}으로 사용


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
