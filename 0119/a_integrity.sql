# 제약조건: 데이터의 '무결성'을 지키기 위해 제한하는 조건

#! 무결성(Integrity)
# : 데이터에 결함이 없음.
# : 정확성, 일관성, 신뢰성을 보장하는 개념

#! 무결성의 종류
# : 개체 무결성, 참조 무결성, 도메인 무결성, 사용자 정의 무결성

# 1. 개체 무결성
# : 모든 테이블이 고유한 행을 가져야 한다는 원칙
# : >> 기본 키로 설정된 컬럼은 비워질 수 없음
# : 기본 키(Primary Key)를 통해 구현
# 예) 학교 - 학생에게 부여되는 학번

# 2. 참조 무결성
# : 테이블 간의 관계를 정의할 때
# : , 한 테이블이 다른 테이블의 값을 참조하는 경우
# : , 참조 값이 반드시 존재해야 함을 뜻함. 
# 예) 학생 - 수강: 강의 목록 테이블에서 수강 기록은 특정 학생을 참조

# 3. 도메인 무결성
# : 테이블의 각 필드가 정의된 도메인에 맞는 값을 가져야 함을 뜻함.
# : 데이터 타입, 포맷, 범위 등이 적절하게 유지
# 도메인 : 데이터타입, 길이, 가능한 값의 범위
# 예) 은행 계좌에 입금되는 금액 - 양의 정수만들 허용하는 unsigned 설정

# 4. 사용자 정의 무결성
# : 특정 애플리케이션의 규칙에 따라 정의
# : 구현하고자 하는 비즈니스 규칙이나 애플리케이션의 특정 요구 사항을 반영
# 예) A 홈페이지 
# - 회원가입 시 비밀번호 설정을 6~8자 이내, 영문자, 숫자, 특수문자 포함