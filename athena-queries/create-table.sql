CREATE EXTERNAL TABLE IF NOT EXISTS vpc_flow_logs (
version INT,
account_id STRING,
interface_id STRING,
srcaddr STRING,
dstaddr STRING,
srcport INT,
dstport INT,
protocol BIGINT,
packets BIGINT,
bytes BIGINT,
start BIGINT,
end BIGINT,
action STRING,
log_status STRING
)
STORED AS PARQUET
LOCATION 's3://sruthi-vpc-flowlogs-athena-demo-001/AWSLogs/';