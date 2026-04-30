SELECT *
FROM vpc_flow_logs
WHERE action = 'REJECT'
ORDER BY start DESC;