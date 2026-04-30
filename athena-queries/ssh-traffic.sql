SELECT srcaddr,
dstaddr,
dstport,
action,
bytes
FROM vpc_flow_logs
WHERE dstport = 22
ORDER BY start DESC;