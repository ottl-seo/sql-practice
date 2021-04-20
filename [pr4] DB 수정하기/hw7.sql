/* 7. 위의 데이터베이스 스키마를 기반으로 수정(modification)을 포함하는 다음의 SQL 쿼리를 작성하시오. 
수정된 릴레이션의 릴레이션이 수정되기 전과 후의 결과(select * …)를 보여라. */

/* a)
BMW Sauber 레이싱 팀에 두 명의 드라이버 Russell와 Villeneuve를 영입하였다. 영국 출신(British)의 Russell의 생년월일은 15/02/1998이다. 
캐나다 출신(Canadian)의Villeneuve의 생년월일은 09/04/1971이다. 이러한 사실을 데이터베이스에 삽입하라. */
SELECT * FROM Drivers;
INSERT INTO Drivers values
('Russell', '1998-02-15', 'British', 'BMW Sauber'),
('Villeneuve', '1971-04-09', 'Canadian', 'BMW Sauber');
SELECT * FROM Drivers;


/* b)
스위스(Swiss)에서 새로운 레이싱 팀 Sauber가 만들고 독일 출신의 Frentzen를 영입했다. 
Frentzen은 1967년 5월 18일이 생일이며 Mercedes 엔진을 사용하고 차체의 높이와 너비는 각각 93센티와 180 센티이다. 이를 데이터베이스에 삽입하라. */
SELECT * FROM Constructors;
SELECT * FROM Drivers;

INSERT INTO Constructors values ('Sauber', 'Swiss', 'Mercedes', NULL, 93, 180);
INSERT INTO Drivers values ('Frentzen', '1967-05-18', 'Swiss','Sauber');

SELECT * FROM Constructors;
SELECT * FROM Drivers;


/* c) 
아시아 지역의 그랑프리에서 3등을 차지한 모든 드라이버들을 Drivers 릴레이션에서 삭제하라. 해당 드라이버의 경기 기록(Results)도 삭제한다.
 Hint: 데이터를 저장하기 위한 새로운 테이블을 만들 수 있다. */
SELECT * FROM Drivers;
SELECT * FROM Results;
CREATE TABLE New1;
INSERT INTO New1 
    (SELECT driver, race 
    FROM Results 
    where race_rank='third place' and Race IN (SELECT Name From Races where Area='Asia')
    );
DELETE from Drivers where driver IN (SELECT * FROM New1);
DELETE from Results where race IN (SELECT * FROM New1);

SELECT * FROM Drivers;
SELECT * FROM Results;


/* d) 
차체의 높이와 너비를 인치(one inch = 2.5 centimeter)로 측정되도록 Constructors 릴레이션을 수정하라. */


/* e) 
Honda 엔진을 사용하는 모든 드라이버는 그랑프리에서 기권을 한다. Results 릴레이션을 수정하라.
 ※ 기권은 race_rank를 ‘drop out’로 표현한다. */


/* f) 
드라이버를 두 명 이상 가지고 있는 모든 레이싱 팀의 드라이버를 삭제하라. 해당 드라이버의 경기 기록도 삭제한다.
 Hint: 데이터를 저장하기 위한 새로운 테이블을 만들 수 있다. */

