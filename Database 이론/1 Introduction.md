# 1. Introduction

***DBMS란?***

: 데이터베이스 Management 시스템.
서로 관련있는 데이터를 연결하고, 접근을 쉽게 해주는 프로그램.

### 데이터베이스의 목적

-> 파일시스템의 단점 보완

- **데이터 중복과 불일치** (Data Redundancy and Inconsistency)
- **데이터 접근의 어려움** (Difficulty of Accessing data)
- **Data Isolation**
- **Integrity problems** (무결성 제약 조건
-- 파일 시스템에서는 하나하나 코딩, DB에서는 NOT NULL처럼 간단하게 제약)
- **Atomicity of Updates** (업데이트가 한 번에 진행되거나 아예 안되거나. 과정이 부분적 X, 한꺼번에 진행)
- **Concurrent Access of multiple users** (다중 사용자)
- **Security problems** (접근 제어를 통한 보안 유지)

---

### Data Models
: 저장된 데이터들의 관계를 설명해준다..

데이터들의 구조가 어떻게 연결되어 있는가 등

- **Relational model :** 2차원 테이블 형태, foreign key 이용해서 테이블 간 관계 형성
- **ERD** (Entity-Relationship data model)
- Object-based data models
- XML
- Network model

---

### 추상화 Abstraction

데이터베이스의 목적: 추상화

- **Physical level**: 어떻게 저장되어있는가 보여줌
- **Logical level:** 데이터 사이의 관계, 어떤 데이터인지

![https://blog.kakaocdn.net/dn/nnXkM/btq3hgk5Sh0/RHqqAcihdATcTX7ZBNO7X1/img.png](https://blog.kakaocdn.net/dn/nnXkM/btq3hgk5Sh0/RHqqAcihdATcTX7ZBNO7X1/img.png)

logical level 예시

- **View level**: 보안상의 이유로 모든 데이터를 보여주지 않고 사용자가 관심있는 데이터만 보여줌 --> 편리

![https://blog.kakaocdn.net/dn/Dj7aC/btq3bmgiGk6/EjoCFc21otC2bW3vC8erk1/img.png](https://blog.kakaocdn.net/dn/Dj7aC/btq3bmgiGk6/EjoCFc21otC2bW3vC8erk1/img.png)

---

### **DDL**

: **D**ata **D**efinition **L**anguage

- 예시

![https://blog.kakaocdn.net/dn/lPFMu/btq3hbYsevg/GMWz0M2koeKtF0OZizavd0/img.png](https://blog.kakaocdn.net/dn/lPFMu/btq3hbYsevg/GMWz0M2koeKtF0OZizavd0/img.png)

스키마, 무결성 검증 조건(ex. NOT NULL), Authorization 등의 **메타데이터**도 DDL에 포함된다.

### **DML**

: **D**ata **M**anipulation **L**anguage

**== Query 조작어 (**SELECT-FROM-WHERE)

---

### **Database Engine** 
(DB시스템의 구성요소 3가지)

**1. 스토리지 매니저**

: OS의 파일 매니저와 상호작용 (저장, 업데이트 등)

**2. 쿼리 프로세서**

DDL interpreter, DML compiler, Query evaluation engine

**3. 트랜잭션 매니저**

여러개의 Operation이 하나의 논리적인 기능 수행

-> DB의 일관성 보존, 여러 트랜잭션이 동시에 발생하지 못하게

-> 시스템 고장 시에도 복구 가능하도록

### Query Processing 쿼리 프로세싱

![https://blog.kakaocdn.net/dn/KfoNq/btq3gbj8Okw/JW06SyvjZs7lcQngqy1H11/img.png](https://blog.kakaocdn.net/dn/KfoNq/btq3gbj8Okw/JW06SyvjZs7lcQngqy1H11/img.png)

---

### Database Application (응용프로그램)

- 2계층 / 3계층 구조로 나뉨

![https://blog.kakaocdn.net/dn/cmJyDE/btq27YNCYu3/KvCzJyQFcw6EbZOvqKH0Kk/img.png](https://blog.kakaocdn.net/dn/cmJyDE/btq27YNCYu3/KvCzJyQFcw6EbZOvqKH0Kk/img.png)

**2계층**에서는, client에서 쿼리 읽어서 DB시스템에서 정보만 빼가지만,

**3계층**에서는 client는 프론트 역할 (내용 받아와서 전달)만 수행하고, 서버측에 와서 쿼리를 읽어들인다.

---

### Database Users

![https://blog.kakaocdn.net/dn/FAme4/btq27nz8UCP/m95eSPNtOJ1JtAgzHq9EQ0/img.png](https://blog.kakaocdn.net/dn/FAme4/btq27nz8UCP/m95eSPNtOJ1JtAgzHq9EQ0/img.png)

### Database System의 역사

- 생략
