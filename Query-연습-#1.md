# Query 연습 #1

샘플 데이터 ERD

![https://blog.kakaocdn.net/dn/c1G5HS/btq2N1JFZNS/ez1uCaggWSRfAEUdCg2rk0/img.png](https://blog.kakaocdn.net/dn/c1G5HS/btq2N1JFZNS/ez1uCaggWSRfAEUdCg2rk0/img.png)

---

1. 레이싱팀 별 드라이버 수 출력

```sql
> select constructor,count(driver) from drivers group by constructor;
```

![https://blog.kakaocdn.net/dn/ugTwF/btq2M2P4kmN/TyoDT1xSnziokf7xyb8wjk/img.png](https://blog.kakaocdn.net/dn/ugTwF/btq2M2P4kmN/TyoDT1xSnziokf7xyb8wjk/img.png)

1-2. 드라이버가 단 한 명인 레이싱 팀 찾기

```sql
> SELECT constructor from Drivers group by constructor having count(driver)=1;
```

![https://blog.kakaocdn.net/dn/dtIqG3/btq2OPCcxGB/LMIbwasJJTz43YEUZl9afK/img.png](https://blog.kakaocdn.net/dn/dtIqG3/btq2OPCcxGB/LMIbwasJJTz43YEUZl9afK/img.png)

---

2. 드라이버의 국적과 소속 팀의 국적이 같은 드라이버 찾기

### <2가지 방법>

**1) WHERE절 사용**

```sql
> SELECT D.driver from Constructors as C, Drivers as D 
	where (C.country=D.country and C.constructor=D.constructor);
```

**2) JOIN 사용** (가장 적합한 방법)

```sql
> SELECT driver FROM Drivers natural JOIN constructors;
```

![https://blog.kakaocdn.net/dn/pWTjB/btq2XbqV0Zb/6wD8RmrRFiKxNEwFIDcJeK/img.png](https://blog.kakaocdn.net/dn/pWTjB/btq2XbqV0Zb/6wD8RmrRFiKxNEwFIDcJeK/img.png)

---

3. 이탈리아 국적의 레이싱 팀 소속의 드라이버 찾기

### <3가지 방법>

**1) WHERE절 사용**

```sql
> SELECT D.driver from Drivers as D, Constructors as C 
	where (C.country='Italian' and C.constructor=D.constructor);
```

**2) JOIN 사용**

```sql
> SELECT driver FROM Drivers d INNER JOIN Constructors c 
	ON d.constructor=c.constructor AND c.country='Italian';
```

**3) IN 사용**

```sql
> SELECT driver FROM Drivers where ()
```

![https://blog.kakaocdn.net/dn/4yK6D/btq2NUjIQRz/c4ngsc7xteyuXjNWgNqrN1/img.png](https://blog.kakaocdn.net/dn/4yK6D/btq2NUjIQRz/c4ngsc7xteyuXjNWgNqrN1/img.png)

---

4. 특정 날짜 사이의 날짜값 찾기

```sql
> select beginDate FROM Races WHERE beginDate between '2008-01-01' and '2009-12-31';
```

![https://blog.kakaocdn.net/dn/TA8b3/btq2MQbfKjn/XRTKe30gnB4lFyEhkCJeTk/img.png](https://blog.kakaocdn.net/dn/TA8b3/btq2MQbfKjn/XRTKe30gnB4lFyEhkCJeTk/img.png)

4-2. 특정 날짜 사이에 열린 Race에 참가한 드라이버 이름과 Race의 개최 날짜 나열

```sql
> SELECT result.driver, race.beginDate
	FROM Races as race, Results as result
	WHERE (beginDate between '2008-01-01' and '2009-12-31') AND result.race=race.Name;
```

![https://blog.kakaocdn.net/dn/b7WLf4/btq2Xjibots/fcdbTy9f3t5xpCECshJbsk/img.png](https://blog.kakaocdn.net/dn/b7WLf4/btq2Xjibots/fcdbTy9f3t5xpCECshJbsk/img.png)

4-3. (4-2)의 문제에서 날짜를 '년-월' 형태로만 나타내기

```sql
> SELECT result.driver, **date_format(race.beginDate,'%Y-%m')** 
	FROM Races as race, Results as result 
	WHERE (beginDate between '2008-01-01' and '2009-12-31') AND result.race=race.Name;
```

![https://blog.kakaocdn.net/dn/dHjz6s/btq2XaevlLn/VxZdkk1pKvOjt2mCw2dsmK/img.png](https://blog.kakaocdn.net/dn/dHjz6s/btq2XaevlLn/VxZdkk1pKvOjt2mCw2dsmK/img.png)

---

5.

---

ERD 자동 생성 사이트: [dbdiagram.io/](https://dbdiagram.io/)