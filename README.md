서울 고궁안내 프로젝트
=================

# 개요
* 우리나라의 대표적인 관광지인 조선의 4대 궁궐 과 종묘를 소개하는 페이지를 만든다
* 

# 목표
* OpenApi와 Database를 사용해 데이터들을 관리하고, 적절한 곳에 데이터를 활용한다.
* 

# 라이브러리
> * 스프링
> * mybatis
> * Oracle Database

# 기능
> * 공공데이터포털 API 연계로 궁궐, 내부 문화재 정보 조회
> * 문화재 해설 안내
> * 문화재 문화 행사 안내
> * 

***

## mission
> * 지도 api 연계
> * 공공 API 데이터 활용 (페이지에 데이터 출력)
> * 

## done
> * 공공 API 연계
> * Spring scheduler로 공공 API 갱신주기 설정
> * 소셜 로그인 API 연계 (네이버, 카카오)
> * 

***
## 발생한 문제
> * 

## 해결한 문제
> * 공공데이터 Open Api 데이터 갱신방법
>   + MERGE sql문을 활용 경우에따라 Insert, Update 한다.
>   + 주기는 Spring Scheduler를 활용해 일정 주기로 동작하게 한다.
> * 소셜 로그인 연동과 로그인상태 확인
>   + 소셜로부터 유저정보를 받아 필요한 데이터를 선별하여 DB에 저장하고 활용한다.
>   + HttpSession에 로그인을 판별할 수 있는 Attribute를 추가하고 Header jsp에 확인을 해 로그인을 유지한다.
>   + (String 으로 캐스팅 후 c:when으로 비어있는지 확인)
> * 관리자 페이지 로그인유지 방법 (session을 어떻게 활용할 것인지)
>   + session 어트리뷰트 로그인 정보 추가
>   + 관리자페이지 include jsp 페이지에 검증하는 로직을 추가
>   + session에 로그인 정보가 없으면 로그인 페이지로 되돌려보냄
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
