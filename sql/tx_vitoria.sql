SELECT 
tlsp.idPlayer 
, sum(tlsp.flWinner)/count(tlsp.flWinner) as 'winRate'
, count(tlsp.flWinner) as 'totalGames'
FROM tb_lobby_stats_player tlsp
GROUP BY tlsp.idPlayer 
HAVING count(tlsp.flWinner) > 10
ORDER BY sum(tlsp.flWinner)/count(tlsp.flWinner) desc, count(tlsp.flWinner) desc
LIMIT 50
