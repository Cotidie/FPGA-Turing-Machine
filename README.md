# 범용 튜링머신
![튜링머신 개념](https://user-images.githubusercontent.com/51331195/155741437-b5df6ab8-aa91-4c43-a1e1-3a8ec675c794.png)

 부산대학교 논리회로설계및실험 과목에서 자유주제로   
 '범용튜링머신'을 선정하여 진행한 FPGA 프로젝트  
   * **제작툴**: Intel Quartus
   * **관련 언어**: Verilog HDL, Digital Logic Schema
   * **기간**: 2021년 2학기
   * **성적**: A+, 정상동작
   
# 튜링머신?
![튜링머신 CU-DP](https://user-images.githubusercontent.com/51331195/155741839-c2b85958-de68-4fb1-8f77-63774794b924.png)
 튜링머신은 연산 장치의 일종이고, 범용튜링머신은 규칙표(액션테이블)이 주어진다면 임의의 튜링머신을 흉내낼 수 있다. 이번 설계에서는 시간 상 8개 상태, 4개 심볼, 64칸 테이프로 한정했고, 이 제약 내의 모든 규칙표를 시뮬레이션할 수 있다. 위는 그중 ‘1’ 심볼 사이의 ‘2’ 심볼을 오른쪽 끝으로 옮기는 예시이다.
   
# 아키텍처
![튜링머신 CU-DP](https://user-images.githubusercontent.com/51331195/155741218-7951c5a4-1703-4951-9c32-73b86baff63b.png)

## 테이프 커서
![테이프 헤드](https://user-images.githubusercontent.com/51331195/155741604-58a022e0-5262-47f0-9bf5-4df47f0bda02.png)

## 액션 테이블
![엑션 테이블](https://user-images.githubusercontent.com/51331195/155741707-efcb7baf-f6dd-4793-bd8b-86e5ba982a4c.png)

## 테이프 레지스터
![테이프 레지스터](https://user-images.githubusercontent.com/51331195/155742328-45f01874-c792-4ee1-98fd-65a84d7f2b87.png)


