# MySQL Basics Repository
<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/en/d/dd/MySQL_logo.svg" width="300" height="150"/>
</div>

## 소개
MySQL의 기본 SQL 문법과 Python을 통한 데이터베이스 연결 방법을 학습하기 위한 레포지토리입니다.  
초보자도 쉽게 따라할 수 있도록 주요 SQL 구문과 Python 연결 코드를 정리했습니다.

## 구성
### 📄 SQL 파일
- `01_SELECT.sql` : 데이터 조회 (SELECT)
- `02_ORDER_BY.sql` : 정렬 (ORDER BY)
- `03_WHERE.sql` : 조건절 (WHERE)
- `04_DISTINCT.sql` : 중복 제거 (DISTINCT)
- `05_LIMIT.sql` : 조회 수 제한 (LIMIT)
- `06_GROUP BY.sql` : 그룹화 및 집계 (GROUP BY)
- `07_DML.sql` : 데이터 조작어 (INSERT, UPDATE, DELETE)
- `08_BUILT IN FUNCTIONS.sql` : 내장 함수 사용법 (숫자, 문자열, 날짜 함수)

### 📄 Python 파일
- `mysql-connector.py` : MySQL 기본 연결 예제
- `mysql-connector-c.py` : Create (INSERT) 예제
- `mysql-connector-r.py` : Read (SELECT) 예제
- `mysql-connector-u.py` : Update (수정) 예제
- `mysql-connector-d.py` : Delete (삭제) 예제

## 목표
- 주요 SQL 문법을 단계별로 학습하고 직접 실행해보기
- Python을 통해 MySQL 데이터베이스와 연결하고 기본 CRUD 작업을 수행해보기

## 환경
- Python 3.8 이상
- MySQL Server 8.0 이상
- 설치 패키지: `mysql-connector-python`
