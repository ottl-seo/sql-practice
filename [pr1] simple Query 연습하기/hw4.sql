/* hw4. 위의 데이터베이스 스키마를 기반으로 다음의 SQL 쿼리를 작성하기 */

/*a) 이탈리아 국적의 레이싱 팀 소속의 드라이버들을 찾아라 */
SELECT D.driver from Drivers as D, Constructors as C where (C.country='Italian' and C.constructor=D.constructor);
/*b) 소속 레이싱 팀의 국적과 드라이버의 국적이 같은 드라이버를 찾아라. */
SELECT D.driver from Constructors as C, Drivers as D where (C.country=D.country and C.constructor=D.constructor);
/*c) Monaco Grand Prix 그랑프리에 참가한 드라이버의 이름, 드라이버가 소속된 레이싱팀의 엔진과 그랑프리 참가 횟수를 열거하여라. */
SELECT R.driver, C.engine, C.races_entered FROM Results as R, Drivers as D, Constructors as C where (R.Race='Monaco Grand Prix' and R.driver=D.driver and D.constructor=C.constructor);
/*d) 오직 하나의 드라이버를 가지는 모든 레이싱 팀을 찾아라. */
SELECT constructor from Drivers group by constructor having count(driver)=1;
/*e) BMW Sauber 레이싱 팀의 멤버이거나 Spanish Grand Prix 그랑프리에 참가한 모든 드라이버의 이름을 중복없이 열거하여라. */
SELECT distinct(D.driver) from Drivers as D, Results as R where (R.driver=D.driver and R.Race='Spanish Grand Prix' or D.constructor='BMW Sauber');
/*f) 드라이버의 이름과 드라이버가 소속된 레이싱 팀의 참가 횟수를 내림차순으로 열거하시오. 
(첫 번째 정렬기준은 그랑프리 참가 횟수, 두 번째 정렬기준은 드라이버의 이름이다.) */
SELECT D.driver, C.races_entered from Drivers as D, Constructors as C where (D.constructor=C.constructor) order by races_entered desc, driver desc;
/*g) Cosworth 엔진을 사용하는 레이싱 팀과 Mercedes 엔진을 사용하는 레이싱 팀을 모두 가지고 있는 모든 나라를 찾아라 */
SELECT c1.country from constructors c1 INNER JOIN constructors c2 ON c2.country=c1.country AND c2.engine='Mercedes' WHERE c1.engine='Cosworth';
/*h) 그랑프리에서 우승한 적이 있으면서 순위에는 들었으나 우승을 하지 못했던 드라이버들을 중복없이 찾아라. */
SELECT distinct(r1.driver) from results r1 INNER JOIN results r2 ON r1.driver=r2.driver AND r1.race_rank='first place' WHERE r2.race_rank!='first place';
/*i) 2008년부터 2009년까지 2년 동안 개최한 그랑프리에 참가한 드라이버의 이름과 드라이버가 참가한 그랑프리의 날짜(begindate)의 월과 년도(형식: mm-yyyy)를 열거하라. */
SELECT result.driver, date_format(race.beginDate,'%m-%Y') FROM Races as race, Results as result WHERE (beginDate between '2008-01-01' and '2009-12-31') AND result.race=race.Name;
