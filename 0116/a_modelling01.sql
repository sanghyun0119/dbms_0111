# 1. DBMS 모델링하는 과정
# 데이터 모델링
# : 작성하고자하는 데이터베이스를 정의하여 논리적인 데이터 모델을 구성하는 작업

# 데이터 모델링의 단계
-- A 학교의 학생 정보 관리 시스템

# 1. 요구사항 분석 및 수집
# : 조직의 데이터 요구사항을 이해하기 위한 사용자와의 상호작용
# : 데이터의 종류, 데이터 간의 관계, 데이터에 대한 접근 패턴을 파악
# : 데이터 베이스 구축(모델링)의 첫 단계

-- 목표: 학교의 학생, 교사, 수업 정보를 관리하는 데이터베이스 시스템 개발
-- 데이터 수집
-- : 학생 정보(이름, 학번, 학년, 반, 성적, 생년월일 등)
-- : 교사 정보(이름, 교직원 번호, 담당 과목, 연락처)
-- : 수업 정보(과목명, 강의실, 시간표, 담당교사)
-- 데이터 관계 파악
-- : 학생은 여러 과목을 수강할 수 있고, 한 과목은 여러 학생이 수강 가능
-- : 각 과목은 한 명의 교사가 담당

# 2. 개념적 설계
# 해당 요구사항 분석 및 수집으로 작성된 데이터들을 구조화
# : 조직의 데이터 구조에 대한 개념적인 풀이
# : 데이터의 속성, 데이터의 관계 등을 정의
-- ER 다이어그램
-- 엔티티: 학생, 교사, 수업
-- 엔티티(entity)?
-- : 실제, 독립체, 데이터 모델링에서 사용되는 객체
-- : 업무에 필요하고 유용한 정보를 저장하고 관리하기 위한 '어떤 것(thing)'
-- 학생 엔티티: 이름, 학번, 학년, 반, 생년월일
-- 수업 엔티티: 과목명, 강의실, 시간표, 담당교사
-- 교사 엔티티: 이름, 교직원 번호, 담당 과목, 연락처
-- 관계: 학생과 수업 사이의 '수강'관계 / 수업과 교사 사이의 '담당'관계

# 3. 논리적 설계
# 해당 개념적 설계를 바탕으로 논리적 데이터 모델을 생성
# : DBMS에서 사용할 수 있도록 데이터 구조를 정제화하는 과정
# : 데이터의 테이블, 각 데이터의 타입, 기본키 등을 정의
-- 데이터 베이스 테이블 정의
-- 학생 테이블: 학번(기본키), ...
-- 교사 테이블: 교직원번호(기본키). ...
-- 수업 테이블: 과목명(기본키), 담당 교사(외래키), ...
-- 수강 테이블: 학번(학생 테이블 값), 과목명(수업 테이블 값)


# 4. 물리적 설계 
# : 데이터가 어떻게 저장될지를 결정
# : 성능 최적화, 디스크 저장방식

# 5. 구현
# : 데이터 베이스 구축, 테이블 설계
