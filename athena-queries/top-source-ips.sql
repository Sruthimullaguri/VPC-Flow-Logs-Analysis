SELECT srcaddr,
SUM(bytes) AS total_bytes
FROM vpc_flow_logs
GROUP BY srcaddr
ORDER BY total_bytes DESC
LIMIT 10;