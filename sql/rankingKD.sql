SELECT
tlsp.idPlayer 
, tp.descCountry 
, FLOOR(DATEDIFF(CURDATE(),CAST(tp.dtBirth AS DATE))/365.25) as 'playerAge'
, sum(tlsp.qtKill)/sum(tlsp.qtDeath) as 'ratingKD'
FROM CSGO.tb_lobby_stats_player tlsp
LEFT JOIN tb_players tp ON tlsp.idPlayer = tp.idPlayer 
GROUP BY tlsp.idPlayer 
ORDER BY sum(tlsp.qtKill)/sum(tlsp.qtDeath) desc
