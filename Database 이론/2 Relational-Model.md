# 2 Relational Model

***[outline]**
- Relational Database의 구조
- Schema 
- Key (superkey, candidate key, primary key)
- Schema Diagrams
- Relational Query Languages
- Relational Algebra*

### Relational Model Intro

- 용어

    table → **Relation**

    row → **tuple**

    column → **Attribute**

- Relation Schema and Instance

```jsx
R = (A1, A2, ... , An) 
// A list of **attribute** and their **corresponding domains**

// Ex.
instructor = (ID, name, dept_name, salary)
```

- domain이 뭘까?

하나의 Attr가 취할 수 있는 동일한 타입의 원자값들의 집합이다.

```sql
CREATE DOMAIN sex char(1) -- 'sex' domain 생성
	DEFAULT '여'  -- 디폴트 값은 '여'
	CONSTRAINT VALID-sex CHECK (VALUE IN('남','여'));
```

### Database Schema

- 스키마란

logical structure of the database

Ex.  instructor(ID, name, dept_name, salary)

- Instance 란

snapshot of the data in the database at a given instant in time.

### Keys

- **superkey**

unique tuple을 구분이 가능한 attr (모든 집합 가능)

ex. {ID}, {ID, name} 은 둘다 수퍼키이다. *// ID 포함하고 있으면 모든 집합 가능*

- **candidate key**

superkey 중 minimal한 집합 (여러개 존재 가능)

NULL값 존재 가능!!!

- **primary key**

candidate 중 대표 하나

primary key는 NULL이 될 수 없다

- **foreign key**

Referencing relation 에서 정의한 foreign key는

**Referenced relation 에서는 primary key** 여야 한다.

// Referential Integrity (참조 무결성)내용

### Relational Algebra

- 생략

![https://blog.kakaocdn.net/dn/pWWmH/btq3hbSLEZ3/m3W2IvMWPtwSglbVyihbnK/img.png](https://blog.kakaocdn.net/dn/pWWmH/btq3hbSLEZ3/m3W2IvMWPtwSglbVyihbnK/img.png)