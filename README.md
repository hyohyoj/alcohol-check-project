# alcohol-check-web-project
아두이노, 앱 연동을 통한 음주 운전 방지 시스템

- 알코올 센서를 연결한 아두이노와 연동하여 실시간으로 음주측정이 가능하다
- 일정 수치를 넘어섰을 경우 해당 좌표와 신고 메시지가 DB에 저장, 지도에 주소가 뜨게된다
- 사용자의 휴대전화 deviceID 가져와 정보를 파악한다
- 음주운전 사고 통계를 확인할 수 있다
- 간단하게 신고 보고서 작성 및 수정이 가능하다

## 시스템 구성도
![시스템 구성도](https://user-images.githubusercontent.com/39309559/155312463-e6765986-72e6-42c3-8ae9-73385968c1b0.png)

## 프로젝트 시연 화면
### 신고메시지 조회 화면 
![신고메시지조회](https://user-images.githubusercontent.com/39309559/155313306-de8074c0-762b-4df6-9d4a-54028d562d63.png)
- 신고가 들어온 지역과 해당 차량 정보를 화면에 출력합니다. 체크 표시를 누르면 사라집니다. 
---
### 신고 내역 관리 화면 
![신고내역관리](https://user-images.githubusercontent.com/39309559/155313816-cc2bf8f8-7057-4133-91b4-d86ceb287bbf.png)
- 신고 보고서 작성 및 수정이 가능합니다. 보고서 작성이 완료되면 아이콘 색깔이 바뀌게 됩니다.
---
### 신고 통계 확인 
![신고통계확인](https://user-images.githubusercontent.com/39309559/155313858-9f95a909-c320-4521-a980-4bd9b3171a42.png)
- 지역별 신고 통계를 지도로 확인할 수 있습니다.
