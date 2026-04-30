SELECT protocol,
COUNT(*) AS connection_count
FROM vpc_flow_logs
GROUP BY protocol
ORDER BY connection_count DESC;