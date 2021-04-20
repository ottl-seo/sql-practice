/* 5. 위의 데이터베이스 스키마를 기반으로 subquery를 포함하는 다음의 SQL 쿼리를 작성하라. 
각 문제의 답에 적어도 하나 이상의 subquery를 사용하여야 하고 각 문제의 쿼리는 다른 문제의 쿼리와 다른 방법으로 작성하시오. 
(예. 각 방법은 EIXSTS, IN, ALL, SOME 그리고 ANY와 같은 다른 집합 연산자들을 사용해야 하고 NOT을 같이 사용할 수도 있다) */

 -- a) 그랑프리에 가장 많이 참가한 레이싱 팀을 소유한 나라(country)를 찾아라.
SELECT country FROM Constructors where races_entered IN (SELECT max(races_entered) from Constructors);

-- b) 그랑프리에서 적어도 한번은 우승을 한 드라이버가 소속된 레이싱 팀을 찾아라.
SELECT constructor from Drivers as D where exists (SELECT * from Results as R where R.race_rank='first place' and R.driver=D.driver);

-- c) Mercedes 엔진을 사용하는 드라이버들의 이름을 찾아라
SELECT driver from Drivers where constructor = ANY(SELECT constructor from Constructors where engine='Mercedes');

-- d) Ferrari 레이싱 팀의 드라이버들이 참가한 그랑프리를 찾아라.
SELECT Race from Results where driver = SOME(SELECT driver from Drivers where constructor='Ferrari');

-- e) 차체의 높이는 같으나 다른 팀의 차체보다 너비가 넓은 차체를 사용하는 드라이버들의 이름을 찾아라
