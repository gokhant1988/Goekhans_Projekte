select * from athletes a join athlete_event ae on a.Athlete_ID=ae.Athlete_ID
join events e on ae.Event_ID=e.Event_ID
join countries c on c.NOC=ae.NOC;

#Tabelle dargestellt#
select * from athletes a join athlete_event ae on a.Athlete_ID=ae.Athlete_ID
join events e on ae.Event_ID=e.Event_ID
join countries c on c.NOC=ae.NOC
where sex="M" AND Medal="Gold"
group by c.Country
order by count(*);

#Goldmedaillien getrennt nach LAND#

SELECT 
  c.Country,
  COUNT(*) AS Goldmedaillen
FROM athletes a
JOIN athlete_event ae ON a.Athlete_ID = ae.Athlete_ID
JOIN events e ON ae.Event_ID = e.Event_ID
JOIN countries c ON c.NOC = ae.NOC
WHERE a.sex = 'M'
  AND ae.Medal = 'Gold'
GROUP BY c.Country
ORDER BY Goldmedaillen DESC;

#Goldmedaillien getrennt nach Geschlecht und LAND#
SELECT 
  c.Country,
  a.sex as Geschlecht,
  COUNT(*) AS Goldmedaillen
FROM athletes a
JOIN athlete_event ae ON a.Athlete_ID = ae.Athlete_ID
JOIN events e ON ae.Event_ID = e.Event_ID
JOIN countries c ON c.NOC = ae.NOC
WHERE ae.Medal = 'Gold'
GROUP BY c.Country, a.sex, e.sport
ORDER BY Goldmedaillen DESC;


#Welche Länder sind im Boxen am erfolgreichsten?#
SELECT 
  c.Country,
  COUNT(*) AS Goldmedaillen,
  e.Sport
FROM athletes a
JOIN athlete_event ae ON a.Athlete_ID = ae.Athlete_ID
JOIN events e ON ae.Event_ID = e.Event_ID
JOIN countries c ON c.NOC = ae.NOC
WHERE ae.Medal = 'Gold' and e.Sport="Boxing"
GROUP BY c.Country, a.sex
ORDER BY Goldmedaillen DESC;



#Goldmedaillien getrennt nach LAND#
SELECT 
  c.Country,
  COUNT(*) AS Goldmedaillen
FROM athletes a
JOIN athlete_event ae ON a.Athlete_ID = ae.Athlete_ID
JOIN events e ON ae.Event_ID = e.Event_ID
JOIN countries c ON c.NOC = ae.NOC
WHERE ae.Medal = 'Gold'
GROUP BY c.Country
ORDER BY Goldmedaillen DESC;
